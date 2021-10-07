.class public Lcom/android/server/notification/ConditionProviders;
.super Lcom/android/server/notification/ManagedServices;
.source "ConditionProviders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/ConditionProviders$Callback;,
        Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/server/notification/ConditionProviders$Callback;

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/notification/ConditionProviders$ConditionRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemConditionProviderNames:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemConditionProviders:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/notification/SystemConditionProviderService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/notification/ManagedServices$UserProfiles;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "userProfiles"    # Lcom/android/server/notification/ManagedServices$UserProfiles;

    .prologue
    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/notification/ManagedServices;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Object;Lcom/android/server/notification/ManagedServices$UserProfiles;)V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviders:Landroid/util/ArraySet;

    .line 57
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mContext:Landroid/content/Context;

    .line 58
    const-string/jumbo v1, "system.condition.providers"

    .line 59
    const v2, 0x1070051

    .line 57
    invoke-static {v0, v1, v2}, Lcom/android/server/notification/PropConfig;->getStringArray(Landroid/content/Context;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/notification/ConditionProviders;->safeSet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviderNames:Landroid/util/ArraySet;

    .line 55
    return-void
.end method

.method private getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;Z)Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    .registers 9
    .param p1, "id"    # Landroid/net/Uri;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "create"    # Z

    .prologue
    const/4 v4, 0x0

    .line 213
    if-eqz p1, :cond_5

    if-nez p2, :cond_6

    :cond_5
    return-object v4

    .line 214
    :cond_6
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 215
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_2b

    .line 216
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 217
    .local v2, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v3, v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    invoke-virtual {v3, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    iget-object v3, v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->component:Landroid/content/ComponentName;

    invoke-virtual {v3, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 218
    return-object v2

    .line 215
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 221
    .end local v2    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_2b
    if-eqz p3, :cond_38

    .line 222
    new-instance v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    invoke-direct {v2, p1, p2, v4}, Lcom/android/server/notification/ConditionProviders$ConditionRecord;-><init>(Landroid/net/Uri;Landroid/content/ComponentName;Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V

    .line 223
    .restart local v2    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    return-object v2

    .line 226
    .end local v2    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_38
    return-object v4
.end method

.method private static provider(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)Landroid/service/notification/IConditionProvider;
    .registers 2
    .param p0, "r"    # Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .prologue
    const/4 v0, 0x0

    .line 378
    if-nez p0, :cond_4

    :goto_3
    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    invoke-static {v0}, Lcom/android/server/notification/ConditionProviders;->provider(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/IConditionProvider;

    move-result-object v0

    goto :goto_3
.end method

.method private static provider(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/IConditionProvider;
    .registers 2
    .param p0, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    const/4 v0, 0x0

    .line 382
    if-nez p0, :cond_4

    :goto_3
    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v0, Landroid/service/notification/IConditionProvider;

    goto :goto_3
.end method

.method private removeDuplicateConditions(Ljava/lang/String;[Landroid/service/notification/Condition;)[Landroid/service/notification/Condition;
    .registers 12
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "conditions"    # [Landroid/service/notification/Condition;

    .prologue
    const/4 v8, 0x0

    .line 192
    if-eqz p2, :cond_6

    array-length v5, p2

    if-nez v5, :cond_7

    :cond_6
    return-object v8

    .line 193
    :cond_7
    array-length v0, p2

    .line 194
    .local v0, "N":I
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 195
    .local v4, "valid":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/net/Uri;Landroid/service/notification/Condition;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v0, :cond_47

    .line 196
    aget-object v5, p2, v1

    iget-object v2, v5, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    .line 197
    .local v2, "id":Landroid/net/Uri;
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 198
    iget-object v5, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Ignoring condition from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " for duplicate id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :goto_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 201
    :cond_41
    aget-object v5, p2, v1

    invoke-virtual {v4, v2, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3e

    .line 203
    .end local v2    # "id":Landroid/net/Uri;
    :cond_47
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-nez v5, :cond_4e

    return-object v8

    .line 204
    :cond_4e
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ne v5, v0, :cond_55

    return-object p2

    .line 205
    :cond_55
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    new-array v3, v5, [Landroid/service/notification/Condition;

    .line 206
    .local v3, "rt":[Landroid/service/notification/Condition;
    const/4 v1, 0x0

    :goto_5c
    array-length v5, v3

    if-ge v1, v5, :cond_6a

    .line 207
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/Condition;

    aput-object v5, v3, v1

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto :goto_5c

    .line 209
    :cond_6a
    return-object v3
.end method

.method private static varargs safeSet([Ljava/lang/Object;)Landroid/util/ArraySet;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Landroid/util/ArraySet",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 349
    .local p0, "items":[Ljava/lang/Object;, "[TT;"
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 350
    .local v3, "rt":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    if-eqz p0, :cond_a

    array-length v4, p0

    if-nez v4, :cond_b

    :cond_a
    return-object v3

    .line 351
    :cond_b
    array-length v0, p0

    .line 352
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_19

    .line 353
    aget-object v2, p0, v1

    .line 354
    .local v2, "item":Ljava/lang/Object;, "TT;"
    if-eqz v2, :cond_16

    .line 355
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 352
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 358
    .end local v2    # "item":Ljava/lang/Object;, "TT;"
    :cond_19
    return-object v3
.end method

.method private subscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V
    .registers 9
    .param p1, "r"    # Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .prologue
    const/4 v3, 0x0

    .line 331
    iget-boolean v4, p0, Lcom/android/server/notification/ConditionProviders;->DEBUG:Z

    if-eqz v4, :cond_1e

    iget-object v4, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "subscribeLocked "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_1e
    invoke-static {p1}, Lcom/android/server/notification/ConditionProviders;->provider(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)Landroid/service/notification/IConditionProvider;

    move-result-object v1

    .line 333
    .local v1, "provider":Landroid/service/notification/IConditionProvider;
    const/4 v2, 0x0

    .line 334
    .local v2, "re":Landroid/os/RemoteException;
    if-eqz v1, :cond_55

    .line 336
    :try_start_25
    iget-object v4, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Subscribing to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->component:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v4, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    invoke-interface {v1, v4}, Landroid/service/notification/IConditionProvider;->onSubscribe(Landroid/net/Uri;)V

    .line 338
    const/4 v4, 0x1

    iput-boolean v4, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->subscribed:Z
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_55} :catch_5d

    .line 344
    .end local v2    # "re":Landroid/os/RemoteException;
    :cond_55
    :goto_55
    if-eqz p1, :cond_59

    iget-object v3, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    :cond_59
    invoke-static {v3, v1, v2}, Lcom/android/server/notification/ZenLog;->traceSubscribe(Landroid/net/Uri;Landroid/service/notification/IConditionProvider;Landroid/os/RemoteException;)V

    .line 330
    return-void

    .line 339
    .restart local v2    # "re":Landroid/os/RemoteException;
    :catch_5d
    move-exception v0

    .line 340
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error subscribing to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 341
    move-object v2, v0

    .local v2, "re":Landroid/os/RemoteException;
    goto :goto_55
.end method

.method private unsubscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V
    .registers 9
    .param p1, "r"    # Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .prologue
    const/4 v3, 0x0

    .line 362
    iget-boolean v4, p0, Lcom/android/server/notification/ConditionProviders;->DEBUG:Z

    if-eqz v4, :cond_1e

    iget-object v4, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unsubscribeLocked "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_1e
    invoke-static {p1}, Lcom/android/server/notification/ConditionProviders;->provider(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)Landroid/service/notification/IConditionProvider;

    move-result-object v1

    .line 364
    .local v1, "provider":Landroid/service/notification/IConditionProvider;
    const/4 v2, 0x0

    .line 365
    .local v2, "re":Landroid/os/RemoteException;
    if-eqz v1, :cond_2d

    .line 367
    :try_start_25
    iget-object v4, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    invoke-interface {v1, v4}, Landroid/service/notification/IConditionProvider;->onUnsubscribe(Landroid/net/Uri;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2a} :catch_35

    .line 372
    .end local v2    # "re":Landroid/os/RemoteException;
    :goto_2a
    const/4 v4, 0x0

    iput-boolean v4, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->subscribed:Z

    .line 374
    :cond_2d
    if-eqz p1, :cond_31

    iget-object v3, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    :cond_31
    invoke-static {v3, v1, v2}, Lcom/android/server/notification/ZenLog;->traceUnsubscribe(Landroid/net/Uri;Landroid/service/notification/IConditionProvider;Landroid/os/RemoteException;)V

    .line 361
    return-void

    .line 368
    .restart local v2    # "re":Landroid/os/RemoteException;
    :catch_35
    move-exception v0

    .line 369
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error unsubscribing to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 370
    move-object v2, v0

    .local v2, "re":Landroid/os/RemoteException;
    goto :goto_2a
.end method


# virtual methods
.method public addSystemProvider(Lcom/android/server/notification/SystemConditionProviderService;)V
    .registers 5
    .param p1, "service"    # Lcom/android/server/notification/SystemConditionProviderService;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviders:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/server/notification/SystemConditionProviderService;->attachBase(Landroid/content/Context;)V

    .line 73
    invoke-virtual {p1}, Lcom/android/server/notification/SystemConditionProviderService;->asInterface()Landroid/service/notification/IConditionProvider;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/notification/SystemConditionProviderService;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/notification/ConditionProviders;->registerService(Landroid/os/IInterface;Landroid/content/ComponentName;I)V

    .line 70
    return-void
.end method

.method protected asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 3
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 116
    invoke-static {p1}, Landroid/service/notification/IConditionProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IConditionProvider;

    move-result-object v0

    return-object v0
.end method

.method public checkServiceToken(Landroid/service/notification/IConditionProvider;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .registers 4
    .param p1, "provider"    # Landroid/service/notification/IConditionProvider;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 187
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ConditionProviders;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 186
    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method protected checkType(Landroid/os/IInterface;)Z
    .registers 3
    .param p1, "service"    # Landroid/os/IInterface;

    .prologue
    .line 121
    instance-of v0, p1, Landroid/service/notification/IConditionProvider;

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .prologue
    .line 95
    invoke-super {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 96
    iget-object v4, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    monitor-enter v4

    .line 97
    :try_start_6
    const-string/jumbo v3, "    mRecords("

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v3, "):"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1c
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_59

    .line 99
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 100
    .local v2, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    if-eqz p2, :cond_36

    iget-object v3, v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->component:Landroid/content/ComponentName;

    invoke-virtual {p2, v3}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 101
    :cond_36
    const-string/jumbo v3, "      "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 102
    iget-object v3, v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    invoke-static {v3}, Lcom/android/server/notification/CountdownConditionProvider;->tryParseDescription(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "countdownDesc":Ljava/lang/String;
    if-eqz v0, :cond_56

    .line 104
    const-string/jumbo v3, "        ("

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, ")"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_56
    .catchall {:try_start_6 .. :try_end_56} :catchall_7c

    .line 98
    .end local v0    # "countdownDesc":Ljava/lang/String;
    :cond_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .end local v2    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_59
    monitor-exit v4

    .line 108
    const-string/jumbo v3, "    mSystemConditionProviders: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviderNames:Landroid/util/ArraySet;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 109
    const/4 v1, 0x0

    :goto_66
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviders:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v1, v3, :cond_7f

    .line 110
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviders:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/SystemConditionProviderService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/notification/SystemConditionProviderService;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_66

    .line 96
    .end local v1    # "i":I
    :catchall_7c
    move-exception v3

    monitor-exit v4

    throw v3

    .line 94
    .restart local v1    # "i":I
    :cond_7f
    return-void
.end method

.method public ensureRecordExists(Landroid/content/ComponentName;Landroid/net/Uri;Landroid/service/notification/IConditionProvider;)V
    .registers 6
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "conditionId"    # Landroid/net/Uri;
    .param p3, "provider"    # Landroid/service/notification/IConditionProvider;

    .prologue
    .line 273
    const/4 v1, 0x1

    invoke-direct {p0, p2, p1, v1}, Lcom/android/server/notification/ConditionProviders;->getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;Z)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    move-result-object v0

    .line 274
    .local v0, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v1, v0, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    if-nez v1, :cond_f

    .line 276
    invoke-virtual {p0, p3}, Lcom/android/server/notification/ConditionProviders;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 271
    :cond_f
    return-void
.end method

.method public findCondition(Landroid/content/ComponentName;Landroid/net/Uri;)Landroid/service/notification/Condition;
    .registers 7
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "conditionId"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 263
    if-eqz p1, :cond_5

    if-nez p2, :cond_6

    :cond_5
    return-object v1

    .line 264
    :cond_6
    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 265
    const/4 v3, 0x0

    :try_start_a
    invoke-direct {p0, p2, p1, v3}, Lcom/android/server/notification/ConditionProviders;->getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;Z)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    move-result-object v0

    .line 266
    .local v0, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    if-eqz v0, :cond_12

    iget-object v1, v0, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->condition:Landroid/service/notification/Condition;
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_14

    :cond_12
    monitor-exit v2

    return-object v1

    .line 264
    .end local v0    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :catchall_14
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public findConditionProvider(Landroid/content/ComponentName;)Landroid/service/notification/IConditionProvider;
    .registers 6
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    const/4 v3, 0x0

    .line 253
    if-nez p1, :cond_4

    return-object v3

    .line 254
    :cond_4
    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->mServices:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "service$iterator":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 255
    .local v0, "service":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v2, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 256
    invoke-static {v0}, Lcom/android/server/notification/ConditionProviders;->provider(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/IConditionProvider;

    move-result-object v2

    return-object v2

    .line 259
    .end local v0    # "service":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :cond_23
    return-object v3
.end method

.method protected getConfig()Lcom/android/server/notification/ManagedServices$Config;
    .registers 3

    .prologue
    .line 82
    new-instance v0, Lcom/android/server/notification/ManagedServices$Config;

    invoke-direct {v0}, Lcom/android/server/notification/ManagedServices$Config;-><init>()V

    .line 83
    .local v0, "c":Lcom/android/server/notification/ManagedServices$Config;
    const-string/jumbo v1, "condition provider"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->caption:Ljava/lang/String;

    .line 84
    const-string/jumbo v1, "android.service.notification.ConditionProviderService"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->serviceInterface:Ljava/lang/String;

    .line 85
    const-string/jumbo v1, "enabled_notification_policy_access_packages"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    .line 86
    const-string/jumbo v1, "enabled_notification_listeners"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->secondarySettingName:Ljava/lang/String;

    .line 87
    const-string/jumbo v1, "android.permission.BIND_CONDITION_PROVIDER_SERVICE"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    .line 88
    const-string/jumbo v1, "android.settings.ACTION_CONDITION_PROVIDER_SETTINGS"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->settingsAction:Ljava/lang/String;

    .line 89
    const v1, 0x1040512

    iput v1, v0, Lcom/android/server/notification/ManagedServices$Config;->clientLabel:I

    .line 90
    return-object v0
.end method

.method public getSystemProviders()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/android/server/notification/SystemConditionProviderService;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviders:Landroid/util/ArraySet;

    return-object v0
.end method

.method public isSystemProviderEnabled(Ljava/lang/String;)Z
    .registers 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviderNames:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected loadComponentNamesFromSetting(Ljava/lang/String;I)Landroid/util/ArraySet;
    .registers 10
    .param p1, "settingName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/util/ArraySet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 283
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 284
    .local v1, "cr":Landroid/content/ContentResolver;
    invoke-static {v1, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 288
    .local v5, "settingValue":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 289
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    return-object v6

    .line 290
    :cond_16
    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 291
    .local v3, "packages":[Ljava/lang/String;
    new-instance v4, Landroid/util/ArraySet;

    array-length v6, v3

    invoke-direct {v4, v6}, Landroid/util/ArraySet;-><init>(I)V

    .line 292
    .local v4, "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_24
    array-length v6, v3

    if-ge v2, v6, :cond_4f

    .line 293
    aget-object v6, v3, v2

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_42

    .line 294
    aget-object v6, v3, v2

    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 295
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_45

    .line 296
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, p2}, Lcom/android/server/notification/ConditionProviders;->queryPackageForServices(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 292
    .end local v0    # "component":Landroid/content/ComponentName;
    :cond_42
    :goto_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 298
    .restart local v0    # "component":Landroid/content/ComponentName;
    :cond_45
    aget-object v6, v3, v2

    invoke-virtual {p0, v6, p2}, Lcom/android/server/notification/ConditionProviders;->queryPackageForServices(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    goto :goto_42

    .line 302
    .end local v0    # "component":Landroid/content/ComponentName;
    :cond_4f
    return-object v4
.end method

.method public notifyConditions(Ljava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;[Landroid/service/notification/Condition;)V
    .registers 13
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p3, "conditions"    # [Landroid/service/notification/Condition;

    .prologue
    const/4 v4, 0x0

    .line 230
    iget-object v5, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    monitor-enter v5

    .line 231
    :try_start_4
    iget-boolean v6, p0, Lcom/android/server/notification/ConditionProviders;->DEBUG:Z

    if-eqz v6, :cond_39

    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "notifyConditions pkg="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " info="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " conditions="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 232
    if-nez p3, :cond_44

    .line 231
    :goto_2e
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_39
    invoke-direct {p0, p1, p3}, Lcom/android/server/notification/ConditionProviders;->removeDuplicateConditions(Ljava/lang/String;[Landroid/service/notification/Condition;)[Landroid/service/notification/Condition;

    move-result-object p3

    .line 234
    if-eqz p3, :cond_42

    array-length v4, p3
    :try_end_40
    .catchall {:try_start_4 .. :try_end_40} :catchall_74

    if-nez v4, :cond_49

    :cond_42
    monitor-exit v5

    return-void

    .line 232
    :cond_44
    :try_start_44
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    goto :goto_2e

    .line 235
    :cond_49
    array-length v0, p3

    .line 236
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4b
    if-ge v2, v0, :cond_5f

    .line 237
    aget-object v1, p3, v2

    .line 238
    .local v1, "c":Landroid/service/notification/Condition;
    iget-object v4, v1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    iget-object v6, p2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    const/4 v7, 0x1

    invoke-direct {p0, v4, v6, v7}, Lcom/android/server/notification/ConditionProviders;->getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;Z)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    move-result-object v3

    .line 239
    .local v3, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iput-object p2, v3, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 240
    iput-object v1, v3, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->condition:Landroid/service/notification/Condition;
    :try_end_5c
    .catchall {:try_start_44 .. :try_end_5c} :catchall_74

    .line 236
    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    .end local v1    # "c":Landroid/service/notification/Condition;
    .end local v3    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_5f
    monitor-exit v5

    .line 243
    array-length v0, p3

    .line 244
    const/4 v2, 0x0

    :goto_62
    if-ge v2, v0, :cond_77

    .line 245
    aget-object v1, p3, v2

    .line 246
    .restart local v1    # "c":Landroid/service/notification/Condition;
    iget-object v4, p0, Lcom/android/server/notification/ConditionProviders;->mCallback:Lcom/android/server/notification/ConditionProviders$Callback;

    if-eqz v4, :cond_71

    .line 247
    iget-object v4, p0, Lcom/android/server/notification/ConditionProviders;->mCallback:Lcom/android/server/notification/ConditionProviders$Callback;

    iget-object v5, v1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-interface {v4, v5, v1}, Lcom/android/server/notification/ConditionProviders$Callback;->onConditionChanged(Landroid/net/Uri;Landroid/service/notification/Condition;)V

    .line 244
    :cond_71
    add-int/lit8 v2, v2, 0x1

    goto :goto_62

    .line 230
    .end local v0    # "N":I
    .end local v1    # "c":Landroid/service/notification/Condition;
    .end local v2    # "i":I
    :catchall_74
    move-exception v4

    monitor-exit v5

    throw v4

    .line 229
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_77
    return-void
.end method

.method public onBootPhaseAppsCanStart()V
    .registers 3

    .prologue
    .line 126
    invoke-super {p0}, Lcom/android/server/notification/ManagedServices;->onBootPhaseAppsCanStart()V

    .line 127
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviders:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 128
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviders:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/SystemConditionProviderService;

    invoke-virtual {v1}, Lcom/android/server/notification/SystemConditionProviderService;->onBootComplete()V

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 130
    :cond_1a
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mCallback:Lcom/android/server/notification/ConditionProviders$Callback;

    if-eqz v1, :cond_23

    .line 131
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mCallback:Lcom/android/server/notification/ConditionProviders$Callback;

    invoke-interface {v1}, Lcom/android/server/notification/ConditionProviders$Callback;->onBootComplete()V

    .line 125
    :cond_23
    return-void
.end method

.method public onPackagesChanged(Z[Ljava/lang/String;)V
    .registers 11
    .param p1, "removingPackage"    # Z
    .param p2, "pkgList"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 168
    if-eqz p1, :cond_36

    .line 169
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    .line 171
    .local v1, "inm":Landroid/app/INotificationManager;
    if-eqz p2, :cond_36

    array-length v4, p2

    if-lez v4, :cond_36

    .line 172
    array-length v4, p2

    :goto_d
    if-ge v3, v4, :cond_36

    aget-object v2, p2, v3

    .line 174
    .local v2, "pkgName":Ljava/lang/String;
    :try_start_11
    invoke-interface {v1, v2}, Landroid/app/INotificationManager;->removeAutomaticZenRules(Ljava/lang/String;)Z

    .line 175
    const/4 v5, 0x0

    invoke-interface {v1, v2, v5}, Landroid/app/INotificationManager;->setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_18} :catch_1b

    .line 172
    :goto_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 176
    :catch_1b
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to clean up rules for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18

    .line 182
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "inm":Landroid/app/INotificationManager;
    .end local v2    # "pkgName":Ljava/lang/String;
    :cond_36
    invoke-super {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->onPackagesChanged(Z[Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method protected onServiceAdded(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 6
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 145
    invoke-static {p1}, Lcom/android/server/notification/ConditionProviders;->provider(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/IConditionProvider;

    move-result-object v1

    .line 147
    .local v1, "provider":Landroid/service/notification/IConditionProvider;
    :try_start_4
    invoke-interface {v1}, Landroid/service/notification/IConditionProvider;->onConnected()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_13

    .line 151
    :goto_7
    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->mCallback:Lcom/android/server/notification/ConditionProviders$Callback;

    if-eqz v2, :cond_12

    .line 152
    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->mCallback:Lcom/android/server/notification/ConditionProviders$Callback;

    iget-object v3, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-interface {v2, v3}, Lcom/android/server/notification/ConditionProviders$Callback;->onServiceAdded(Landroid/content/ComponentName;)V

    .line 144
    :cond_12
    return-void

    .line 148
    :catch_13
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_7
.end method

.method protected onServiceRemovedLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 6
    .param p1, "removed"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 158
    if-nez p1, :cond_3

    return-void

    .line 159
    :cond_3
    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_b
    if-ltz v0, :cond_28

    .line 160
    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 161
    .local v1, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v2, v1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->component:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 159
    :goto_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 162
    :cond_22
    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1f

    .line 157
    .end local v1    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_28
    return-void
.end method

.method public onUserSwitched(I)V
    .registers 3
    .param p1, "user"    # I

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/android/server/notification/ManagedServices;->onUserSwitched(I)V

    .line 138
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mCallback:Lcom/android/server/notification/ConditionProviders$Callback;

    if-eqz v0, :cond_c

    .line 139
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mCallback:Lcom/android/server/notification/ConditionProviders$Callback;

    invoke-interface {v0}, Lcom/android/server/notification/ConditionProviders$Callback;->onUserSwitched()V

    .line 136
    :cond_c
    return-void
.end method

.method public setCallback(Lcom/android/server/notification/ConditionProviders$Callback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/server/notification/ConditionProviders$Callback;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/server/notification/ConditionProviders;->mCallback:Lcom/android/server/notification/ConditionProviders$Callback;

    .line 62
    return-void
.end method

.method public subscribeIfNecessary(Landroid/content/ComponentName;Landroid/net/Uri;)Z
    .registers 9
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "conditionId"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x0

    .line 306
    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 307
    const/4 v1, 0x0

    :try_start_5
    invoke-direct {p0, p2, p1, v1}, Lcom/android/server/notification/ConditionProviders;->getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;Z)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    move-result-object v0

    .line 308
    .local v0, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    if-nez v0, :cond_31

    .line 309
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to subscribe to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_3f

    monitor-exit v2

    .line 310
    return v5

    .line 312
    :cond_31
    :try_start_31
    iget-boolean v1, v0, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->subscribed:Z
    :try_end_33
    .catchall {:try_start_31 .. :try_end_33} :catchall_3f

    if-eqz v1, :cond_38

    const/4 v1, 0x1

    monitor-exit v2

    return v1

    .line 313
    :cond_38
    :try_start_38
    invoke-direct {p0, v0}, Lcom/android/server/notification/ConditionProviders;->subscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V

    .line 314
    iget-boolean v1, v0, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->subscribed:Z
    :try_end_3d
    .catchall {:try_start_38 .. :try_end_3d} :catchall_3f

    monitor-exit v2

    return v1

    .line 306
    .end local v0    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :catchall_3f
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public unsubscribeIfNecessary(Landroid/content/ComponentName;Landroid/net/Uri;)V
    .registers 8
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "conditionId"    # Landroid/net/Uri;

    .prologue
    .line 319
    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 320
    const/4 v1, 0x0

    :try_start_4
    invoke-direct {p0, p2, p1, v1}, Lcom/android/server/notification/ConditionProviders;->getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;Z)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    move-result-object v0

    .line 321
    .local v0, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    if-nez v0, :cond_30

    .line 322
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to unsubscribe to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catchall {:try_start_4 .. :try_end_2e} :catchall_3b

    monitor-exit v2

    .line 323
    return-void

    .line 325
    :cond_30
    :try_start_30
    iget-boolean v1, v0, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->subscribed:Z
    :try_end_32
    .catchall {:try_start_30 .. :try_end_32} :catchall_3b

    if-nez v1, :cond_36

    monitor-exit v2

    return-void

    .line 326
    :cond_36
    :try_start_36
    invoke-direct {p0, v0}, Lcom/android/server/notification/ConditionProviders;->unsubscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3b

    monitor-exit v2

    .line 318
    return-void

    .line 319
    .end local v0    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :catchall_3b
    move-exception v1

    monitor-exit v2

    throw v1
.end method
