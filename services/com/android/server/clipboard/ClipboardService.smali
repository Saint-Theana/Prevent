.class public Lcom/android/server/clipboard/ClipboardService;
.super Landroid/content/IClipboard$Stub;
.source "ClipboardService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/clipboard/ClipboardService$ListenerInfo;,
        Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ClipboardService"


# instance fields
.field private final mAm:Landroid/app/IActivityManager;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mClipboards:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mPermissionOwner:Landroid/os/IBinder;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mUm:Landroid/os/IUserManager;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/clipboard/ClipboardService;I)V
    .registers 2
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/clipboard/ClipboardService;->removeClipboard(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/content/IClipboard$Stub;-><init>()V

    .line 93
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    .line 99
    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mContext:Landroid/content/Context;

    .line 100
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mAm:Landroid/app/IActivityManager;

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mPm:Landroid/content/pm/PackageManager;

    .line 102
    const-string/jumbo v3, "user"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    check-cast v3, Landroid/os/IUserManager;

    iput-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mUm:Landroid/os/IUserManager;

    .line 103
    const-string/jumbo v3, "appops"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    iput-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    .line 104
    const/4 v1, 0x0

    .line 106
    .local v1, "permOwner":Landroid/os/IBinder;
    :try_start_2f
    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mAm:Landroid/app/IActivityManager;

    const-string/jumbo v4, "clipboard"

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_37} :catch_50

    move-result-object v1

    .line 110
    .end local v1    # "permOwner":Landroid/os/IBinder;
    :goto_38
    iput-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    .line 113
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 114
    .local v2, "userFilter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/clipboard/ClipboardService$1;

    invoke-direct {v4, p0}, Lcom/android/server/clipboard/ClipboardService$1;-><init>(Lcom/android/server/clipboard/ClipboardService;)V

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 98
    return-void

    .line 107
    .end local v2    # "userFilter":Landroid/content/IntentFilter;
    .restart local v1    # "permOwner":Landroid/os/IBinder;
    :catch_50
    move-exception v0

    .line 108
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "clipboard"

    const-string/jumbo v4, "AM dead"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_38
.end method

.method private final addActiveOwnerLocked(ILjava/lang/String;)V
    .registers 15
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 385
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    .line 386
    .local v7, "pm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    .line 387
    .local v8, "targetUserHandle":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 389
    .local v4, "oldIdentity":J
    const/4 v9, 0x0

    :try_start_d
    invoke-interface {v7, p2, v9, v8}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 390
    .local v6, "pi":Landroid/content/pm/PackageInfo;
    if-nez v6, :cond_42

    .line 391
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unknown package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_2d} :catch_2d
    .catchall {:try_start_d .. :try_end_2d} :catchall_71

    .line 397
    .end local v6    # "pi":Landroid/content/pm/PackageInfo;
    :catch_2d
    move-exception v2

    .line 400
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 402
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_31
    invoke-direct {p0}, Lcom/android/server/clipboard/ClipboardService;->getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v1

    .line 403
    .local v1, "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    iget-object v9, v1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v9, :cond_41

    iget-object v9, v1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v9, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7a

    .line 384
    :cond_41
    :goto_41
    return-void

    .line 393
    .end local v1    # "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .restart local v6    # "pi":Landroid/content/pm/PackageInfo;
    :cond_42
    :try_start_42
    iget-object v9, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9, p1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v9

    if-nez v9, :cond_76

    .line 394
    new-instance v9, Ljava/lang/SecurityException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Calling uid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 395
    const-string/jumbo v11, " does not own package "

    .line 394
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_71
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_71} :catch_2d
    .catchall {:try_start_42 .. :try_end_71} :catchall_71

    .line 399
    .end local v6    # "pi":Landroid/content/pm/PackageInfo;
    :catchall_71
    move-exception v9

    .line 400
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 399
    throw v9

    .line 400
    .restart local v6    # "pi":Landroid/content/pm/PackageInfo;
    :cond_76
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_31

    .line 404
    .end local v6    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v1    # "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    :cond_7a
    iget-object v9, v1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v9}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 405
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_81
    if-ge v3, v0, :cond_93

    .line 406
    iget-object v9, v1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v9, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v9

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-direct {p0, v9, p2, v10}, Lcom/android/server/clipboard/ClipboardService;->grantItemLocked(Landroid/content/ClipData$Item;Ljava/lang/String;I)V

    .line 405
    add-int/lit8 v3, v3, 0x1

    goto :goto_81

    .line 408
    :cond_93
    iget-object v9, v1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v9, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_41
.end method

.method private final checkDataOwnerLocked(Landroid/content/ClipData;I)V
    .registers 6
    .param p1, "data"    # Landroid/content/ClipData;
    .param p2, "uid"    # I

    .prologue
    .line 355
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 356
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_11

    .line 357
    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/server/clipboard/ClipboardService;->checkItemOwnerLocked(Landroid/content/ClipData$Item;I)V

    .line 356
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 354
    :cond_11
    return-void
.end method

.method private final checkItemOwnerLocked(Landroid/content/ClipData$Item;I)V
    .registers 5
    .param p1, "item"    # Landroid/content/ClipData$Item;
    .param p2, "uid"    # I

    .prologue
    .line 345
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 346
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/clipboard/ClipboardService;->checkUriOwnerLocked(Landroid/net/Uri;I)V

    .line 348
    :cond_d
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 349
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 350
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/clipboard/ClipboardService;->checkUriOwnerLocked(Landroid/net/Uri;I)V

    .line 344
    :cond_20
    return-void
.end method

.method private final checkUriOwnerLocked(Landroid/net/Uri;I)V
    .registers 13
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "uid"    # I

    .prologue
    .line 329
    const-string/jumbo v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 330
    return-void

    .line 332
    :cond_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 335
    .local v8, "ident":J
    :try_start_12
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mAm:Landroid/app/IActivityManager;

    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 337
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {p1, v1}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v5

    .line 335
    const/4 v2, 0x0

    .line 336
    const/4 v4, 0x1

    move v1, p2

    .line 335
    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_26} :catch_2a
    .catchall {:try_start_12 .. :try_end_26} :catchall_2f

    .line 340
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 328
    :goto_29
    return-void

    .line 338
    :catch_2a
    move-exception v6

    .line 340
    .local v6, "e":Landroid/os/RemoteException;
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_29

    .line 339
    .end local v6    # "e":Landroid/os/RemoteException;
    :catchall_2f
    move-exception v0

    .line 340
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 339
    throw v0
.end method

.method private getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .registers 2

    .prologue
    .line 141
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/clipboard/ClipboardService;->getClipboard(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v0

    return-object v0
.end method

.method private getClipboard(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 145
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    monitor-enter v2

    .line 146
    :try_start_3
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    .line 147
    .local v0, "puc":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    if-nez v0, :cond_17

    .line 148
    new-instance v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    .end local v0    # "puc":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    invoke-direct {v0, p0, p1}, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;-><init>(Lcom/android/server/clipboard/ClipboardService;I)V

    .line 149
    .restart local v0    # "puc":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    :cond_17
    monitor-exit v2

    .line 151
    return-object v0

    .line 145
    .end local v0    # "puc":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    :catchall_19
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private final grantItemLocked(Landroid/content/ClipData$Item;Ljava/lang/String;I)V
    .registers 6
    .param p1, "item"    # Landroid/content/ClipData$Item;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 375
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 376
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Lcom/android/server/clipboard/ClipboardService;->grantUriLocked(Landroid/net/Uri;Ljava/lang/String;I)V

    .line 378
    :cond_d
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 379
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 380
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Lcom/android/server/clipboard/ClipboardService;->grantUriLocked(Landroid/net/Uri;Ljava/lang/String;I)V

    .line 374
    :cond_20
    return-void
.end method

.method private final grantUriLocked(Landroid/net/Uri;Ljava/lang/String;I)V
    .registers 16
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 362
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 364
    .local v10, "ident":J
    :try_start_4
    invoke-static {p1, p3}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v6

    .line 365
    .local v6, "sourceUserId":I
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 366
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mAm:Landroid/app/IActivityManager;

    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 367
    const/4 v5, 0x1

    move-object v3, p2

    move-object v4, p1

    move v7, p3

    .line 366
    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1b} :catch_1f
    .catchall {:try_start_4 .. :try_end_1b} :catchall_24

    .line 370
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 361
    .end local v6    # "sourceUserId":I
    :goto_1e
    return-void

    .line 368
    :catch_1f
    move-exception v8

    .line 370
    .local v8, "e":Landroid/os/RemoteException;
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1e

    .line 369
    .end local v8    # "e":Landroid/os/RemoteException;
    :catchall_24
    move-exception v0

    .line 370
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 369
    throw v0
.end method

.method private isDeviceLocked()Z
    .registers 6

    .prologue
    .line 318
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 320
    .local v2, "token":J
    :try_start_4
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mContext:Landroid/content/Context;

    .line 321
    const-class v4, Landroid/app/KeyguardManager;

    .line 320
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 322
    .local v0, "keyguardManager":Landroid/app/KeyguardManager;
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceLocked()Z
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_1a

    move-result v1

    .line 324
    :goto_14
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 322
    return v1

    :cond_18
    const/4 v1, 0x0

    goto :goto_14

    .line 323
    .end local v0    # "keyguardManager":Landroid/app/KeyguardManager;
    :catchall_1a
    move-exception v1

    .line 324
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 323
    throw v1
.end method

.method private removeClipboard(I)V
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 156
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    monitor-enter v1

    .line 157
    :try_start_3
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    .line 155
    return-void

    .line 156
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private final revokeItemLocked(Landroid/content/ClipData$Item;)V
    .registers 4
    .param p1, "item"    # Landroid/content/ClipData$Item;

    .prologue
    .line 428
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 429
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/clipboard/ClipboardService;->revokeUriLocked(Landroid/net/Uri;)V

    .line 431
    :cond_d
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 432
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 433
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/clipboard/ClipboardService;->revokeUriLocked(Landroid/net/Uri;)V

    .line 427
    :cond_20
    return-void
.end method

.method private final revokeUriLocked(Landroid/net/Uri;)V
    .registers 9
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 414
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 413
    invoke-static {p1, v4}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v1

    .line 415
    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 417
    .local v2, "ident":J
    :try_start_10
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 418
    iget-object v4, p0, Lcom/android/server/clipboard/ClipboardService;->mAm:Landroid/app/IActivityManager;

    iget-object v5, p0, Lcom/android/server/clipboard/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    .line 419
    const/4 v6, 0x3

    .line 418
    invoke-interface {v4, v5, p1, v6, v1}, Landroid/app/IActivityManager;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1c} :catch_20
    .catchall {:try_start_10 .. :try_end_1c} :catchall_25

    .line 423
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 412
    :goto_1f
    return-void

    .line 421
    :catch_20
    move-exception v0

    .line 423
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1f

    .line 422
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_25
    move-exception v4

    .line 423
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 422
    throw v4
.end method

.method private final revokeUris(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;)V
    .registers 5
    .param p1, "clipboard"    # Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    .prologue
    .line 438
    iget-object v2, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-nez v2, :cond_5

    .line 439
    return-void

    .line 441
    :cond_5
    iget-object v2, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 442
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v0, :cond_1a

    .line 443
    iget-object v2, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v2, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/clipboard/ClipboardService;->revokeItemLocked(Landroid/content/ClipData$Item;)V

    .line 442
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 437
    :cond_1a
    return-void
.end method


# virtual methods
.method public addPrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;Ljava/lang/String;)V
    .registers 6
    .param p1, "listener"    # Landroid/content/IOnPrimaryClipChangedListener;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 290
    monitor-enter p0

    .line 291
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/clipboard/ClipboardService;->getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    .line 292
    new-instance v1, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, p0, v2, p2}, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;-><init>(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;)V

    .line 291
    invoke-virtual {v0, p1, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    .line 289
    return-void

    .line 290
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPrimaryClip(Ljava/lang/String;)Landroid/content/ClipData;
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 257
    monitor-enter p0

    .line 258
    :try_start_1
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x1d

    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    .line 259
    invoke-direct {p0}, Lcom/android/server/clipboard/ClipboardService;->isDeviceLocked()Z
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_27

    move-result v0

    .line 258
    if-eqz v0, :cond_18

    .line 260
    :cond_15
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 262
    :cond_18
    :try_start_18
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/clipboard/ClipboardService;->addActiveOwnerLocked(ILjava/lang/String;)V

    .line 263
    invoke-direct {p0}, Lcom/android/server/clipboard/ClipboardService;->getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_27

    monitor-exit p0

    return-object v0

    .line 257
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPrimaryClipDescription(Ljava/lang/String;)Landroid/content/ClipDescription;
    .registers 7
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 268
    monitor-enter p0

    .line 269
    :try_start_2
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/16 v4, 0x1d

    invoke-virtual {v2, v4, v3, p1}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_16

    .line 270
    invoke-direct {p0}, Lcom/android/server/clipboard/ClipboardService;->isDeviceLocked()Z
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_28

    move-result v2

    .line 269
    if-eqz v2, :cond_18

    :cond_16
    monitor-exit p0

    .line 271
    return-object v1

    .line 273
    :cond_18
    :try_start_18
    invoke-direct {p0}, Lcom/android/server/clipboard/ClipboardService;->getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v0

    .line 274
    .local v0, "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    iget-object v2, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v2, :cond_26

    iget-object v1, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_28

    move-result-object v1

    :cond_26
    monitor-exit p0

    return-object v1

    .line 268
    .end local v0    # "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    :catchall_28
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method getRelatedProfiles(I)Ljava/util/List;
    .registers 9
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 215
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 217
    .local v2, "origId":J
    :try_start_4
    iget-object v4, p0, Lcom/android/server/clipboard/ClipboardService;->mUm:Landroid/os/IUserManager;

    const/4 v5, 0x1

    invoke-interface {v4, p1, v5}, Landroid/os/IUserManager;->getProfiles(IZ)Ljava/util/List;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_f
    .catchall {:try_start_4 .. :try_end_a} :catchall_2f

    move-result-object v1

    .line 222
    .local v1, "related":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 224
    return-object v1

    .line 218
    .end local v1    # "related":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_f
    move-exception v0

    .line 219
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_10
    const-string/jumbo v4, "ClipboardService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Remote Exception calling UserManager: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_10 .. :try_end_2a} :catchall_2f

    .line 220
    const/4 v4, 0x0

    .line 222
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 220
    return-object v4

    .line 221
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_2f
    move-exception v4

    .line 222
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 221
    throw v4
.end method

.method public hasClipboardText(Ljava/lang/String;)Z
    .registers 8
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 303
    monitor-enter p0

    .line 304
    :try_start_2
    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/16 v5, 0x1d

    invoke-virtual {v3, v5, v4, p1}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v3

    if-nez v3, :cond_16

    .line 305
    invoke-direct {p0}, Lcom/android/server/clipboard/ClipboardService;->isDeviceLocked()Z
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_38

    move-result v3

    .line 304
    if-eqz v3, :cond_18

    :cond_16
    monitor-exit p0

    .line 306
    return v2

    .line 308
    :cond_18
    :try_start_18
    invoke-direct {p0}, Lcom/android/server/clipboard/ClipboardService;->getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v0

    .line 309
    .local v0, "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    iget-object v3, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v3, :cond_36

    .line 310
    iget-object v3, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 311
    .local v1, "text":Ljava/lang/CharSequence;
    if-eqz v1, :cond_34

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I
    :try_end_30
    .catchall {:try_start_18 .. :try_end_30} :catchall_38

    move-result v3

    if-lez v3, :cond_34

    const/4 v2, 0x1

    :cond_34
    monitor-exit p0

    return v2

    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_36
    monitor-exit p0

    .line 313
    return v2

    .line 303
    .end local v0    # "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    :catchall_38
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public hasPrimaryClip(Ljava/lang/String;)Z
    .registers 6
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 279
    monitor-enter p0

    .line 280
    :try_start_2
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x1d

    invoke-virtual {v1, v3, v2, p1}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_16

    .line 281
    invoke-direct {p0}, Lcom/android/server/clipboard/ClipboardService;->isDeviceLocked()Z
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_23

    move-result v1

    .line 280
    if-eqz v1, :cond_18

    :cond_16
    monitor-exit p0

    .line 282
    return v0

    .line 284
    :cond_18
    :try_start_18
    invoke-direct {p0}, Lcom/android/server/clipboard/ClipboardService;->getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_23

    if-eqz v1, :cond_21

    const/4 v0, 0x1

    :cond_21
    monitor-exit p0

    return v0

    .line 279
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
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
    .line 130
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/IClipboard$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    return v1

    .line 131
    :catch_5
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_13

    .line 133
    const-string/jumbo v1, "clipboard"

    const-string/jumbo v2, "Exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    :cond_13
    throw v0
.end method

.method public removePrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/content/IOnPrimaryClipChangedListener;

    .prologue
    .line 297
    monitor-enter p0

    .line 298
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/clipboard/ClipboardService;->getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    .line 296
    return-void

    .line 297
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V
    .registers 16
    .param p1, "clip"    # Landroid/content/ClipData;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 162
    monitor-enter p0

    .line 163
    if-eqz p1, :cond_15

    :try_start_3
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v10

    if-gtz v10, :cond_15

    .line 164
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "No items"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_12

    .line 162
    .end local p1    # "clip":Landroid/content/ClipData;
    :catchall_12
    move-exception v10

    :goto_13
    monitor-exit p0

    throw v10

    .line 166
    .restart local p1    # "clip":Landroid/content/ClipData;
    :cond_15
    :try_start_15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 167
    .local v0, "callingUid":I
    iget-object v10, p0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v11, 0x1e

    invoke-virtual {v10, v11, v0, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_12

    move-result v10

    if-eqz v10, :cond_25

    monitor-exit p0

    .line 169
    return-void

    .line 171
    :cond_25
    :try_start_25
    invoke-direct {p0, p1, v0}, Lcom/android/server/clipboard/ClipboardService;->checkDataOwnerLocked(Landroid/content/ClipData;I)V

    .line 172
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 173
    .local v9, "userId":I
    invoke-direct {p0, v9}, Lcom/android/server/clipboard/ClipboardService;->getClipboard(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v3

    .line 174
    .local v3, "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    invoke-direct {p0, v3}, Lcom/android/server/clipboard/ClipboardService;->revokeUris(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;)V

    .line 175
    invoke-virtual {p0, v3, p1}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternal(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/content/ClipData;)V

    .line 176
    invoke-virtual {p0, v9}, Lcom/android/server/clipboard/ClipboardService;->getRelatedProfiles(I)Ljava/util/List;

    move-result-object v7

    .line 177
    .local v7, "related":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v7, :cond_ad

    .line 178
    invoke-interface {v7}, Ljava/util/List;->size()I
    :try_end_3f
    .catchall {:try_start_25 .. :try_end_3f} :catchall_12

    move-result v8

    .line 179
    .local v8, "size":I
    const/4 v10, 0x1

    if-le v8, v10, :cond_ad

    .line 180
    const/4 v1, 0x0

    .line 182
    .local v1, "canCopy":Z
    :try_start_44
    iget-object v10, p0, Lcom/android/server/clipboard/ClipboardService;->mUm:Landroid/os/IUserManager;

    invoke-interface {v10, v9}, Landroid/os/IUserManager;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v10

    .line 183
    const-string/jumbo v11, "no_cross_profile_copy_paste"

    .line 182
    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_50} :catch_70
    .catchall {:try_start_44 .. :try_end_50} :catchall_12

    move-result v10

    if-eqz v10, :cond_6e

    const/4 v1, 0x0

    .line 189
    :goto_54
    if-nez v1, :cond_8c

    .line 190
    const/4 p1, 0x0

    .line 202
    .end local p1    # "clip":Landroid/content/ClipData;
    :goto_57
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_58
    if-ge v5, v8, :cond_ad

    .line 203
    :try_start_5a
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/UserInfo;

    iget v6, v10, Landroid/content/pm/UserInfo;->id:I

    .line 204
    .local v6, "id":I
    if-eq v6, v9, :cond_6b

    .line 205
    invoke-direct {p0, v6}, Lcom/android/server/clipboard/ClipboardService;->getClipboard(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v10

    invoke-virtual {p0, v10, p1}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternal(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/content/ClipData;)V

    .line 202
    :cond_6b
    add-int/lit8 v5, v5, 0x1

    goto :goto_58

    .line 182
    .end local v5    # "i":I
    .end local v6    # "id":I
    .restart local p1    # "clip":Landroid/content/ClipData;
    :cond_6e
    const/4 v1, 0x1

    goto :goto_54

    .line 184
    :catch_70
    move-exception v4

    .line 185
    .local v4, "e":Landroid/os/RemoteException;
    const-string/jumbo v10, "ClipboardService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Remote Exception calling UserManager: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54

    .line 196
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_8c
    new-instance v2, Landroid/content/ClipData;

    invoke-direct {v2, p1}, Landroid/content/ClipData;-><init>(Landroid/content/ClipData;)V
    :try_end_91
    .catchall {:try_start_5a .. :try_end_91} :catchall_12

    .line 197
    .end local p1    # "clip":Landroid/content/ClipData;
    .local v2, "clip":Landroid/content/ClipData;
    :try_start_91
    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    move-result v10

    add-int/lit8 v5, v10, -0x1

    .restart local v5    # "i":I
    :goto_97
    if-ltz v5, :cond_a8

    .line 198
    new-instance v10, Landroid/content/ClipData$Item;

    invoke-virtual {v2, v5}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/content/ClipData$Item;-><init>(Landroid/content/ClipData$Item;)V

    invoke-virtual {v2, v5, v10}, Landroid/content/ClipData;->setItemAt(ILandroid/content/ClipData$Item;)V

    .line 197
    add-int/lit8 v5, v5, -0x1

    goto :goto_97

    .line 200
    :cond_a8
    invoke-virtual {v2, v9}, Landroid/content/ClipData;->fixUrisLight(I)V
    :try_end_ab
    .catchall {:try_start_91 .. :try_end_ab} :catchall_af

    move-object p1, v2

    .end local v2    # "clip":Landroid/content/ClipData;
    .restart local p1    # "clip":Landroid/content/ClipData;
    goto :goto_57

    .end local v1    # "canCopy":Z
    .end local v5    # "i":I
    .end local v8    # "size":I
    .end local p1    # "clip":Landroid/content/ClipData;
    :cond_ad
    monitor-exit p0

    .line 161
    return-void

    .line 162
    .restart local v1    # "canCopy":Z
    .restart local v2    # "clip":Landroid/content/ClipData;
    .restart local v8    # "size":I
    :catchall_af
    move-exception v10

    move-object p1, v2

    .end local v2    # "clip":Landroid/content/ClipData;
    .restart local p1    # "clip":Landroid/content/ClipData;
    goto/16 :goto_13
.end method

.method setPrimaryClipInternal(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/content/ClipData;)V
    .registers 13
    .param p1, "clipboard"    # Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .param p2, "clip"    # Landroid/content/ClipData;

    .prologue
    .line 228
    iget-object v6, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    .line 229
    if-nez p2, :cond_c

    iget-object v6, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-nez v6, :cond_c

    .line 230
    return-void

    .line 232
    :cond_c
    iput-object p2, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 233
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 234
    .local v2, "ident":J
    iget-object v6, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v5

    .line 236
    .local v5, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19
    if-ge v1, v5, :cond_3f

    .line 239
    :try_start_1b
    iget-object v6, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    .line 238
    check-cast v4, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;

    .line 240
    .local v4, "li":Lcom/android/server/clipboard/ClipboardService$ListenerInfo;
    iget-object v6, p0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    iget v7, v4, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;->mUid:I

    .line 241
    iget-object v8, v4, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;->mPackageName:Ljava/lang/String;

    .line 240
    const/16 v9, 0x1d

    invoke-virtual {v6, v9, v7, v8}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v6

    if-nez v6, :cond_3c

    .line 242
    iget-object v6, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Landroid/content/IOnPrimaryClipChangedListener;

    invoke-interface {v6}, Landroid/content/IOnPrimaryClipChangedListener;->dispatchPrimaryClipChanged()V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_3c} :catch_52
    .catchall {:try_start_1b .. :try_end_3c} :catchall_48

    .line 236
    .end local v4    # "li":Lcom/android/server/clipboard/ClipboardService$ListenerInfo;
    :cond_3c
    :goto_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 251
    :cond_3f
    iget-object v6, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 252
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 227
    return-void

    .line 250
    :catchall_48
    move-exception v6

    .line 251
    iget-object v7, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 252
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 250
    throw v6

    .line 245
    :catch_52
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_3c
.end method
