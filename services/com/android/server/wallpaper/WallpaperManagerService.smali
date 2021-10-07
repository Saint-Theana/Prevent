.class public Lcom/android/server/wallpaper/WallpaperManagerService;
.super Landroid/app/IWallpaperManager$Stub;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wallpaper/WallpaperManagerService$Lifecycle;,
        Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;,
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;,
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;,
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final MAX_WALLPAPER_COMPONENT_LOG_LENGTH:I = 0x80

.field static final MIN_WALLPAPER_CRASH_TIME:J = 0x2710L

.field static final TAG:Ljava/lang/String; = "WallpaperManagerService"

.field static final WALLPAPER:Ljava/lang/String; = "wallpaper_orig"

.field static final WALLPAPER_CROP:Ljava/lang/String; = "wallpaper"

.field static final WALLPAPER_INFO:Ljava/lang/String; = "wallpaper_info.xml"

.field static final WALLPAPER_LOCK_CROP:Ljava/lang/String; = "wallpaper_lock"

.field static final WALLPAPER_LOCK_ORIG:Ljava/lang/String; = "wallpaper_lock_orig"

.field static final sPerUserFiles:[Ljava/lang/String;


# instance fields
.field final mAppOpsManager:Landroid/app/AppOpsManager;

.field final mContext:Landroid/content/Context;

.field mCurrentUserId:I

.field final mIPackageManager:Landroid/content/pm/IPackageManager;

.field final mIWindowManager:Landroid/view/IWindowManager;

.field final mImageWallpaper:Landroid/content/ComponentName;

.field mKeyguardListener:Landroid/app/IWallpaperManagerCallback;

.field mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

.field final mLock:Ljava/lang/Object;

.field final mLockWallpaperMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;",
            ">;"
        }
    .end annotation
.end field

.field final mMonitor:Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

.field mShuttingDown:Z

.field final mUserRestorecon:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mWaitingForUnlock:Z

.field mWallpaperId:I

.field final mWallpaperMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(I)Ljava/io/File;
    .registers 2
    .param p0, "userId"    # I

    .prologue
    invoke-static {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 2
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->generateCrop(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/wallpaper/WallpaperManagerService;IZ)V
    .registers 3
    .param p1, "userId"    # I
    .param p2, "keepDimensionHints"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 2
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .registers 2
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 161
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 162
    const-string/jumbo v1, "wallpaper_orig"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "wallpaper"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 163
    const-string/jumbo v1, "wallpaper_lock_orig"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "wallpaper_lock"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 164
    const-string/jumbo v1, "wallpaper_info.xml"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 161
    sput-object v0, Lcom/android/server/wallpaper/WallpaperManagerService;->sPerUserFiles:[Ljava/lang/String;

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 877
    invoke-direct {p0}, Landroid/app/IWallpaperManager$Stub;-><init>()V

    .line 146
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    .line 498
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    .line 499
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    .line 501
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mUserRestorecon:Landroid/util/SparseArray;

    .line 879
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 880
    iput-boolean v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mShuttingDown:Z

    .line 882
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10400a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 881
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    .line 884
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 883
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    .line 885
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 886
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 887
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    invoke-direct {v0, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mMonitor:Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    .line 888
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mMonitor:Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v2, v1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 889
    invoke-static {v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 890
    invoke-direct {p0, v4, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    .line 877
    return-void
.end method

.method private checkPermission(Ljava/lang/String;)V
    .registers 5
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 1797
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_31

    .line 1798
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Access denied to process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1799
    const-string/jumbo v2, ", must have permission "

    .line 1798
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1796
    :cond_31
    return-void
.end method

.method private ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 7
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    const/4 v4, 0x0

    .line 2091
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getMaximumSizeDimension()I

    move-result v0

    .line 2092
    .local v0, "baseSize":I
    iget v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    if-ge v1, v0, :cond_b

    .line 2093
    iput v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    .line 2095
    :cond_b
    iget v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    if-ge v1, v0, :cond_11

    .line 2096
    iput v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    .line 2099
    :cond_11
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lez v1, :cond_21

    .line 2100
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-gtz v1, :cond_2a

    .line 2101
    :cond_21
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    iget v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2089
    :cond_2a
    return-void
.end method

.method private generateCrop(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 26
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    .line 323
    const/16 v20, 0x0

    .line 325
    .local v20, "success":Z
    new-instance v5, Landroid/graphics/Rect;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v5, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 336
    .local v5, "cropHint":Landroid/graphics/Rect;
    new-instance v17, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 337
    .local v17, "options":Landroid/graphics/BitmapFactory$Options;
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v17

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 338
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 339
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v21, v0

    if-lez v21, :cond_3d

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v21, v0

    if-gtz v21, :cond_77

    .line 340
    :cond_3d
    const-string/jumbo v21, "WallpaperManagerService"

    const-string/jumbo v22, "Invalid wallpaper data"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const/16 v20, 0x0

    .line 463
    .end local v20    # "success":Z
    :cond_48
    :goto_48
    if-nez v20, :cond_5c

    .line 464
    const-string/jumbo v21, "WallpaperManagerService"

    const-string/jumbo v22, "Unable to apply new wallpaper"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->delete()Z

    .line 468
    :cond_5c
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_76

    .line 469
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v9

    .line 322
    :cond_76
    return-void

    .line 343
    .restart local v20    # "success":Z
    :cond_77
    const/4 v15, 0x0

    .line 344
    .local v15, "needCrop":Z
    const/16 v16, 0x0

    .line 347
    .local v16, "needScale":Z
    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_df

    .line 348
    const/16 v21, 0x0

    move/from16 v0, v21

    iput v0, v5, Landroid/graphics/Rect;->top:I

    const/16 v21, 0x0

    move/from16 v0, v21

    iput v0, v5, Landroid/graphics/Rect;->left:I

    .line 349
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v5, Landroid/graphics/Rect;->right:I

    .line 350
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v5, Landroid/graphics/Rect;->bottom:I

    .line 371
    :goto_a0
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    move/from16 v21, v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_165

    const/16 v16, 0x1

    .line 380
    :goto_b2
    if-nez v15, :cond_b6

    if-eqz v16, :cond_169

    .line 393
    :cond_b6
    const/4 v11, 0x0

    .line 394
    .local v11, "f":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 397
    .local v3, "bos":Ljava/io/BufferedOutputStream;
    :try_start_b8
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    .line 396
    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v7

    .line 405
    .local v7, "decoder":Landroid/graphics/BitmapRegionDecoder;
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v21

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    move/from16 v22, v0

    div-int v2, v21, v22
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_d4} :catch_236
    .catchall {:try_start_b8 .. :try_end_d4} :catchall_23f

    .line 406
    .local v2, "actualScale":I
    const/16 v18, 0x1

    .line 407
    .local v18, "scale":I
    :goto_d6
    mul-int/lit8 v21, v18, 0x2

    move/from16 v0, v21

    if-ge v0, v2, :cond_186

    .line 408
    mul-int/lit8 v18, v18, 0x2

    goto :goto_d6

    .line 354
    .end local v2    # "actualScale":I
    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .end local v7    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .end local v11    # "f":Ljava/io/FileOutputStream;
    .end local v18    # "scale":I
    :cond_df
    iget v0, v5, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_159

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v21, v0

    iget v0, v5, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    .line 355
    :goto_fb
    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_15c

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v22, v0

    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    .line 353
    :goto_117
    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 358
    iget v0, v5, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    if-gez v21, :cond_12a

    .line 359
    const/16 v21, 0x0

    move/from16 v0, v21

    iput v0, v5, Landroid/graphics/Rect;->left:I

    .line 361
    :cond_12a
    iget v0, v5, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    if-gez v21, :cond_136

    .line 362
    const/16 v21, 0x0

    move/from16 v0, v21

    iput v0, v5, Landroid/graphics/Rect;->top:I

    .line 366
    :cond_136
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v21, v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_15f

    .line 367
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v21, v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_162

    const/4 v15, 0x1

    goto/16 :goto_a0

    .line 354
    :cond_159
    const/16 v21, 0x0

    goto :goto_fb

    .line 355
    :cond_15c
    const/16 v22, 0x0

    goto :goto_117

    .line 366
    :cond_15f
    const/4 v15, 0x1

    goto/16 :goto_a0

    .line 367
    :cond_162
    const/4 v15, 0x0

    goto/16 :goto_a0

    .line 371
    :cond_165
    const/16 v16, 0x0

    goto/16 :goto_b2

    .line 386
    :cond_169
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v20

    .line 387
    .local v20, "success":Z
    if-nez v20, :cond_48

    .line 388
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->delete()Z

    goto/16 :goto_48

    .line 410
    .restart local v2    # "actualScale":I
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v7    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .restart local v11    # "f":Ljava/io/FileOutputStream;
    .restart local v18    # "scale":I
    .local v20, "success":Z
    :cond_186
    const/16 v21, 0x1

    move/from16 v0, v18

    move/from16 v1, v21

    if-le v0, v1, :cond_1b5

    .line 411
    :try_start_18e
    new-instance v19, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 412
    .local v19, "scaler":Landroid/graphics/BitmapFactory$Options;
    move/from16 v0, v18

    move-object/from16 v1, v19

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 419
    .end local v19    # "scaler":Landroid/graphics/BitmapFactory$Options;
    :goto_199
    move-object/from16 v0, v19

    invoke-virtual {v7, v5, v0}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 420
    .local v6, "cropped":Landroid/graphics/Bitmap;
    invoke-virtual {v7}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 422
    if-nez v6, :cond_1b8

    .line 423
    const-string/jumbo v21, "WallpaperManagerService"

    const-string/jumbo v22, "Could not decode new wallpaper"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ad
    .catch Ljava/lang/Exception; {:try_start_18e .. :try_end_1ad} :catch_236
    .catchall {:try_start_18e .. :try_end_1ad} :catchall_23f

    .line 457
    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .end local v11    # "f":Ljava/io/FileOutputStream;
    :goto_1ad
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 458
    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_48

    .line 417
    .end local v6    # "cropped":Landroid/graphics/Bitmap;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v11    # "f":Ljava/io/FileOutputStream;
    :cond_1b5
    const/16 v19, 0x0

    .local v19, "scaler":Landroid/graphics/BitmapFactory$Options;
    goto :goto_199

    .line 428
    .end local v19    # "scaler":Landroid/graphics/BitmapFactory$Options;
    .restart local v6    # "cropped":Landroid/graphics/Bitmap;
    :cond_1b8
    const/16 v21, 0x0

    const/16 v22, 0x0

    :try_start_1bc
    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 429
    iget v0, v5, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    div-int v21, v21, v18

    move/from16 v0, v21

    iput v0, v5, Landroid/graphics/Rect;->right:I

    .line 430
    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    div-int v21, v21, v18

    move/from16 v0, v21

    iput v0, v5, Landroid/graphics/Rect;->bottom:I

    .line 431
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v14, v21, v22

    .line 435
    .local v14, "heightR":F
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v14

    move/from16 v0, v21

    float-to-int v8, v0

    .line 437
    .local v8, "destWidth":I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    move/from16 v21, v0

    const/16 v22, 0x1

    .line 436
    move/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v6, v8, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 446
    .local v13, "finalCrop":Landroid/graphics/Bitmap;
    new-instance v12, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v12, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_218
    .catch Ljava/lang/Exception; {:try_start_1bc .. :try_end_218} :catch_236
    .catchall {:try_start_1bc .. :try_end_218} :catchall_23f

    .line 447
    .local v12, "f":Ljava/io/FileOutputStream;
    :try_start_218
    new-instance v4, Ljava/io/BufferedOutputStream;

    .end local v11    # "f":Ljava/io/FileOutputStream;
    const v21, 0x8000

    move/from16 v0, v21

    invoke-direct {v4, v12, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_222
    .catch Ljava/lang/Exception; {:try_start_218 .. :try_end_222} :catch_24e
    .catchall {:try_start_218 .. :try_end_222} :catchall_247

    .line 448
    .local v4, "bos":Ljava/io/BufferedOutputStream;
    :try_start_222
    sget-object v21, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    const/16 v22, 0x64

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v13, v0, v1, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 449
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_230
    .catch Ljava/lang/Exception; {:try_start_222 .. :try_end_230} :catch_251
    .catchall {:try_start_222 .. :try_end_230} :catchall_24a

    .line 450
    const/16 v20, 0x1

    move-object v3, v4

    .end local v4    # "bos":Ljava/io/BufferedOutputStream;
    .local v3, "bos":Ljava/io/BufferedOutputStream;
    move-object v11, v12

    .end local v12    # "f":Ljava/io/FileOutputStream;
    .local v11, "f":Ljava/io/FileOutputStream;
    goto/16 :goto_1ad

    .line 452
    .end local v2    # "actualScale":I
    .end local v6    # "cropped":Landroid/graphics/Bitmap;
    .end local v7    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .end local v8    # "destWidth":I
    .end local v13    # "finalCrop":Landroid/graphics/Bitmap;
    .end local v14    # "heightR":F
    .end local v18    # "scale":I
    .local v3, "bos":Ljava/io/BufferedOutputStream;
    .local v11, "f":Ljava/io/FileOutputStream;
    :catch_236
    move-exception v10

    .line 457
    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .end local v11    # "f":Ljava/io/FileOutputStream;
    .local v10, "e":Ljava/lang/Exception;
    :goto_237
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 458
    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_48

    .line 456
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v11    # "f":Ljava/io/FileOutputStream;
    :catchall_23f
    move-exception v21

    .line 457
    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .end local v11    # "f":Ljava/io/FileOutputStream;
    :goto_240
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 458
    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 456
    throw v21

    .restart local v2    # "actualScale":I
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v6    # "cropped":Landroid/graphics/Bitmap;
    .restart local v7    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .restart local v8    # "destWidth":I
    .restart local v12    # "f":Ljava/io/FileOutputStream;
    .restart local v13    # "finalCrop":Landroid/graphics/Bitmap;
    .restart local v14    # "heightR":F
    .restart local v18    # "scale":I
    :catchall_247
    move-exception v21

    move-object v11, v12

    .end local v12    # "f":Ljava/io/FileOutputStream;
    .local v11, "f":Ljava/io/FileOutputStream;
    goto :goto_240

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .end local v11    # "f":Ljava/io/FileOutputStream;
    .restart local v4    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v12    # "f":Ljava/io/FileOutputStream;
    :catchall_24a
    move-exception v21

    move-object v3, v4

    .end local v4    # "bos":Ljava/io/BufferedOutputStream;
    .local v3, "bos":Ljava/io/BufferedOutputStream;
    move-object v11, v12

    .end local v12    # "f":Ljava/io/FileOutputStream;
    .restart local v11    # "f":Ljava/io/FileOutputStream;
    goto :goto_240

    .line 452
    .end local v11    # "f":Ljava/io/FileOutputStream;
    .local v3, "bos":Ljava/io/BufferedOutputStream;
    .restart local v12    # "f":Ljava/io/FileOutputStream;
    :catch_24e
    move-exception v10

    .restart local v10    # "e":Ljava/lang/Exception;
    move-object v11, v12

    .end local v12    # "f":Ljava/io/FileOutputStream;
    .restart local v11    # "f":Ljava/io/FileOutputStream;
    goto :goto_237

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v11    # "f":Ljava/io/FileOutputStream;
    .restart local v4    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v12    # "f":Ljava/io/FileOutputStream;
    :catch_251
    move-exception v10

    .restart local v10    # "e":Ljava/lang/Exception;
    move-object v3, v4

    .end local v4    # "bos":Ljava/io/BufferedOutputStream;
    .local v3, "bos":Ljava/io/BufferedOutputStream;
    move-object v11, v12

    .end local v12    # "f":Ljava/io/FileOutputStream;
    .restart local v11    # "f":Ljava/io/FileOutputStream;
    goto :goto_237
.end method

.method private getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .registers 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defValue"    # I

    .prologue
    const/4 v1, 0x0

    .line 1933
    invoke-interface {p1, v1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1934
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_8

    .line 1935
    return p3

    .line 1937
    :cond_8
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private getDefaultDisplaySize()Landroid/graphics/Point;
    .registers 6

    .prologue
    .line 1224
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1225
    .local v1, "p":Landroid/graphics/Point;
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 1226
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1227
    .local v0, "d":Landroid/view/Display;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1228
    return-object v1
.end method

.method private getMaximumSizeDimension()I
    .registers 5

    .prologue
    .line 2135
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 2136
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2137
    .local v0, "d":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v2

    return v2
.end method

.method private static getWallpaperDir(I)Ljava/io/File;
    .registers 2
    .param p0, "userId"    # I

    .prologue
    .line 894
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .registers 7
    .param p1, "userId"    # I
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x2

    .line 1954
    if-ne p2, v3, :cond_2f

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    .line 1955
    .local v1, "whichSet":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    :goto_5
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1956
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v0, :cond_2e

    .line 1959
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    .line 1960
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1964
    .restart local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v0, :cond_2e

    .line 1965
    if-ne p2, v3, :cond_32

    .line 1966
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1967
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const-string/jumbo v2, "wallpaper_lock_orig"

    const-string/jumbo v3, "wallpaper_lock"

    .line 1966
    invoke-direct {v0, p1, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 1968
    .restart local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1969
    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1980
    :cond_2e
    :goto_2e
    return-object v0

    .line 1954
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v1    # "whichSet":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    :cond_2f
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    goto :goto_5

    .line 1973
    .restart local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v1    # "whichSet":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    :cond_32
    const-string/jumbo v2, "WallpaperManagerService"

    const-string/jumbo v3, "Didn\'t find wallpaper in non-lock case!"

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const-string/jumbo v2, "wallpaper_orig"

    const-string/jumbo v3, "wallpaper"

    invoke-direct {v0, p1, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 1975
    .restart local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1976
    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    goto :goto_2e
.end method

.method private loadSettingsLocked(IZ)V
    .registers 29
    .param p1, "userId"    # I
    .param p2, "keepDimensionHints"    # Z

    .prologue
    .line 1986
    invoke-static/range {p1 .. p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v12

    .line 1987
    .local v12, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v15, 0x0

    .line 1988
    .local v15, "stream":Ljava/io/FileInputStream;
    invoke-virtual {v12}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v11

    .line 1989
    .local v11, "file":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v21

    if-nez v21, :cond_12

    .line 1991
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->migrateFromOld()V

    .line 1993
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1994
    .local v20, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v20, :cond_5b

    .line 1995
    new-instance v20, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .end local v20    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const-string/jumbo v21, "wallpaper_orig"

    const-string/jumbo v22, "wallpaper"

    move-object/from16 v0, v20

    move/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 1996
    .restart local v20    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    .line 1997
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1998
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropExists()Z

    move-result v21

    if-nez v21, :cond_5b

    .line 1999
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->generateCrop(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 2002
    :cond_5b
    const/16 v17, 0x0

    .line 2004
    .local v17, "success":Z
    :try_start_5d
    new-instance v16, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_64
    .catch Ljava/io/FileNotFoundException; {:try_start_5d .. :try_end_64} :catch_29d
    .catch Ljava/lang/NullPointerException; {:try_start_5d .. :try_end_64} :catch_25d
    .catch Ljava/lang/NumberFormatException; {:try_start_5d .. :try_end_64} :catch_231
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5d .. :try_end_64} :catch_205
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_64} :catch_1d9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5d .. :try_end_64} :catch_1ad

    .line 2005
    .local v16, "stream":Ljava/io/FileInputStream;
    :try_start_64
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .end local v15    # "stream":Ljava/io/FileInputStream;
    move-result-object v14

    .line 2006
    .local v14, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v21, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual/range {v21 .. v21}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2010
    :cond_75
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v19

    .line 2011
    .local v19, "type":I
    const/16 v21, 0x2

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_db

    .line 2012
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v18

    .line 2013
    .local v18, "tag":Ljava/lang/String;
    const-string/jumbo v21, "wp"

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_157

    .line 2015
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, p2

    invoke-direct {v0, v14, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->parseWallpaperAttributes(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Z)V

    .line 2018
    const-string/jumbo v21, "component"

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2019
    .local v4, "comp":Ljava/lang/String;
    if-eqz v4, :cond_153

    .line 2020
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v21

    .line 2019
    :goto_ae
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    .line 2022
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    move-object/from16 v21, v0

    if-eqz v21, :cond_cf

    .line 2023
    const-string/jumbo v21, "android"

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    .line 2022
    if-eqz v21, :cond_db

    .line 2025
    :cond_cf
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;
    :try_end_db
    .catch Ljava/io/FileNotFoundException; {:try_start_64 .. :try_end_db} :catch_19f
    .catch Ljava/lang/NullPointerException; {:try_start_64 .. :try_end_db} :catch_2a0
    .catch Ljava/lang/NumberFormatException; {:try_start_64 .. :try_end_db} :catch_2a4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_64 .. :try_end_db} :catch_2a8
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_db} :catch_2ad
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_64 .. :try_end_db} :catch_2b2

    .line 2047
    .end local v4    # "comp":Ljava/lang/String;
    .end local v18    # "tag":Ljava/lang/String;
    :cond_db
    :goto_db
    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_75

    .line 2048
    const/16 v17, 0x1

    move-object/from16 v15, v16

    .line 2062
    .end local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v16    # "stream":Ljava/io/FileInputStream;
    .end local v19    # "type":I
    :goto_e7
    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2064
    if-nez v17, :cond_289

    .line 2065
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    .line 2066
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    .line 2067
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-virtual/range {v21 .. v25}, Landroid/graphics/Rect;->set(IIII)V

    .line 2068
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-virtual/range {v21 .. v25}, Landroid/graphics/Rect;->set(IIII)V

    .line 2069
    const-string/jumbo v21, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 2071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 2082
    :cond_134
    :goto_134
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 2083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2084
    .local v13, "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v13, :cond_152

    .line 2085
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1983
    :cond_152
    return-void

    .line 2021
    .end local v13    # "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v4    # "comp":Ljava/lang/String;
    .restart local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v18    # "tag":Ljava/lang/String;
    .restart local v19    # "type":I
    :cond_153
    const/16 v21, 0x0

    goto/16 :goto_ae

    .line 2036
    .end local v4    # "comp":Ljava/lang/String;
    :cond_157
    :try_start_157
    const-string/jumbo v21, "kwp"

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_db

    .line 2038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2039
    .restart local v13    # "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v13, :cond_194

    .line 2040
    new-instance v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2041
    .end local v13    # "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const-string/jumbo v21, "wallpaper_lock_orig"

    const-string/jumbo v22, "wallpaper_lock"

    .line 2040
    move/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v13, v0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2042
    .restart local v13    # "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2044
    :cond_194
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v14, v13, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->parseWallpaperAttributes(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Z)V
    :try_end_19d
    .catch Ljava/io/FileNotFoundException; {:try_start_157 .. :try_end_19d} :catch_19f
    .catch Ljava/lang/NullPointerException; {:try_start_157 .. :try_end_19d} :catch_2a0
    .catch Ljava/lang/NumberFormatException; {:try_start_157 .. :try_end_19d} :catch_2a4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_157 .. :try_end_19d} :catch_2a8
    .catch Ljava/io/IOException; {:try_start_157 .. :try_end_19d} :catch_2ad
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_157 .. :try_end_19d} :catch_2b2

    goto/16 :goto_db

    .line 2049
    .end local v13    # "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v18    # "tag":Ljava/lang/String;
    .end local v19    # "type":I
    :catch_19f
    move-exception v5

    .local v5, "e":Ljava/io/FileNotFoundException;
    move-object/from16 v15, v16

    .line 2050
    .end local v16    # "stream":Ljava/io/FileInputStream;
    :goto_1a2
    const-string/jumbo v21, "WallpaperManagerService"

    const-string/jumbo v22, "no current wallpaper -- first boot?"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e7

    .line 2059
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    :catch_1ad
    move-exception v7

    .line 2060
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .local v7, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_1ae
    const-string/jumbo v21, "WallpaperManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "failed parsing "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e7

    .line 2057
    .end local v7    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    :catch_1d9
    move-exception v6

    .line 2058
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .local v6, "e":Ljava/io/IOException;
    :goto_1da
    const-string/jumbo v21, "WallpaperManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "failed parsing "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e7

    .line 2055
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    :catch_205
    move-exception v10

    .line 2056
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .local v10, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_206
    const-string/jumbo v21, "WallpaperManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "failed parsing "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e7

    .line 2053
    .end local v10    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    :catch_231
    move-exception v9

    .line 2054
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .local v9, "e":Ljava/lang/NumberFormatException;
    :goto_232
    const-string/jumbo v21, "WallpaperManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "failed parsing "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e7

    .line 2051
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    :catch_25d
    move-exception v8

    .line 2052
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .local v8, "e":Ljava/lang/NullPointerException;
    :goto_25e
    const-string/jumbo v21, "WallpaperManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "failed parsing "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e7

    .line 2073
    .end local v8    # "e":Ljava/lang/NullPointerException;
    :cond_289
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    move/from16 v21, v0

    if-gtz v21, :cond_134

    .line 2074
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    goto/16 :goto_134

    .line 2049
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    :catch_29d
    move-exception v5

    .restart local v5    # "e":Ljava/io/FileNotFoundException;
    goto/16 :goto_1a2

    .line 2051
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    :catch_2a0
    move-exception v8

    .restart local v8    # "e":Ljava/lang/NullPointerException;
    move-object/from16 v15, v16

    .end local v16    # "stream":Ljava/io/FileInputStream;
    .local v15, "stream":Ljava/io/FileInputStream;
    goto :goto_25e

    .line 2053
    .end local v8    # "e":Ljava/lang/NullPointerException;
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    :catch_2a4
    move-exception v9

    .restart local v9    # "e":Ljava/lang/NumberFormatException;
    move-object/from16 v15, v16

    .end local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    goto :goto_232

    .line 2055
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    :catch_2a8
    move-exception v10

    .restart local v10    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object/from16 v15, v16

    .end local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_206

    .line 2057
    .end local v10    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    :catch_2ad
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    move-object/from16 v15, v16

    .end local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_1da

    .line 2059
    .end local v6    # "e":Ljava/io/IOException;
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    :catch_2b2
    move-exception v7

    .restart local v7    # "e":Ljava/lang/IndexOutOfBoundsException;
    move-object/from16 v15, v16

    .end local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_1ae
.end method

.method private static makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;
    .registers 7
    .param p0, "userId"    # I

    .prologue
    .line 1842
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "wallpaper_info.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 1843
    .local v0, "base":Ljava/lang/String;
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v1
.end method

.method private migrateFromOld()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 1920
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "/data/data/com.android.settings/files/wallpaper"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1921
    .local v3, "oldWallpaper":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string/jumbo v4, "/data/system/wallpaper_info.xml"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1922
    .local v2, "oldInfo":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1923
    new-instance v1, Ljava/io/File;

    invoke-static {v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "wallpaper_orig"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1924
    .local v1, "newWallpaper":Ljava/io/File;
    invoke-virtual {v3, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1926
    .end local v1    # "newWallpaper":Ljava/io/File;
    :cond_26
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 1927
    new-instance v0, Ljava/io/File;

    invoke-static {v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "wallpaper_info.xml"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1928
    .local v0, "newInfo":Ljava/io/File;
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1919
    .end local v0    # "newInfo":Ljava/io/File;
    :cond_3b
    return-void
.end method

.method private migrateSystemToLockWallpaperLocked(I)V
    .registers 8
    .param p1, "userId"    # I

    .prologue
    .line 1476
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1477
    .local v2, "sysWP":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v2, :cond_b

    .line 1481
    return-void

    .line 1485
    :cond_b
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1486
    const-string/jumbo v3, "wallpaper_lock_orig"

    const-string/jumbo v4, "wallpaper_lock"

    .line 1485
    invoke-direct {v1, p1, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 1487
    .local v1, "lockWP":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    iput v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 1488
    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget-object v4, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1489
    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    iput v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    .line 1490
    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    iput v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    .line 1491
    iget-boolean v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    iput-boolean v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    .line 1495
    :try_start_2d
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4b
    .catch Landroid/system/ErrnoException; {:try_start_2d .. :try_end_4b} :catch_51

    .line 1504
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1475
    return-void

    .line 1497
    :catch_51
    move-exception v0

    .line 1498
    .local v0, "e":Landroid/system/ErrnoException;
    const-string/jumbo v3, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t migrate system wallpaper: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1500
    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1501
    return-void
.end method

.method private notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 9
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    .line 1781
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->-get0(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 1782
    .local v3, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v3, :cond_1b

    .line 1784
    :try_start_b
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->-get0(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/app/IWallpaperManagerCallback;

    invoke-interface {v4}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_18} :catch_37

    .line 1782
    :goto_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1791
    :cond_1b
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->-get0(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1792
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1793
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    iget v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1780
    return-void

    .line 1785
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_37
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_18
.end method

.method private parseWallpaperAttributes(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Z)V
    .registers 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p3, "keepDimensionHints"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 2107
    const-string/jumbo v2, "id"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2108
    .local v1, "idString":Ljava/lang/String;
    if-eqz v1, :cond_a5

    .line 2109
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 2110
    .local v0, "id":I
    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperId:I

    if-le v0, v2, :cond_17

    .line 2111
    iput v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperId:I

    .line 2117
    .end local v0    # "id":I
    :cond_17
    :goto_17
    if-nez p3, :cond_33

    .line 2118
    const-string/jumbo v2, "width"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    .line 2120
    const-string/jumbo v2, "height"

    .line 2119
    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    .line 2122
    :cond_33
    iget-object v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    const-string/jumbo v3, "cropLeft"

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 2123
    iget-object v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    const-string/jumbo v3, "cropTop"

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 2124
    iget-object v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    const-string/jumbo v3, "cropRight"

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 2125
    iget-object v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    const-string/jumbo v3, "cropBottom"

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 2126
    iget-object v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    const-string/jumbo v3, "paddingLeft"

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 2127
    iget-object v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    const-string/jumbo v3, "paddingTop"

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 2128
    iget-object v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    const-string/jumbo v3, "paddingRight"

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 2129
    iget-object v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    const-string/jumbo v3, "paddingBottom"

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 2130
    const-string/jumbo v2, "name"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 2131
    const-string/jumbo v2, "true"

    const-string/jumbo v3, "backup"

    invoke-interface {p1, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    .line 2106
    return-void

    .line 2114
    :cond_a5
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    move-result v2

    iput v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    goto/16 :goto_17
.end method

.method private saveSettingsLocked(I)V
    .registers 12
    .param p1, "userId"    # I

    .prologue
    .line 1847
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v3

    .line 1848
    .local v3, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v1, 0x0

    .line 1849
    .local v1, "fstream":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 1851
    .local v5, "stream":Ljava/io/BufferedOutputStream;
    :try_start_6
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1852
    .local v4, "out":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v2, v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_15} :catch_5e

    .line 1853
    .local v2, "fstream":Ljava/io/FileOutputStream;
    :try_start_15
    new-instance v6, Ljava/io/BufferedOutputStream;

    .end local v1    # "fstream":Ljava/io/FileOutputStream;
    invoke-direct {v6, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1a} :catch_66

    .line 1854
    .local v6, "stream":Ljava/io/BufferedOutputStream;
    :try_start_1a
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .end local v5    # "stream":Ljava/io/BufferedOutputStream;
    invoke-virtual {v8}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1855
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v4, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1859
    iget-object v8, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1860
    .local v7, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v7, :cond_3c

    .line 1861
    const-string/jumbo v8, "wp"

    invoke-direct {p0, v4, v8, v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeWallpaperAttributes(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1863
    :cond_3c
    iget-object v8, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    check-cast v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1864
    .restart local v7    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v7, :cond_4c

    .line 1865
    const-string/jumbo v8, "kwp"

    invoke-direct {p0, v4, v8, v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeWallpaperAttributes(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1868
    :cond_4c
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1870
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1871
    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1872
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V

    .line 1873
    invoke-virtual {v3}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_5b} :catch_69

    move-object v5, v6

    .end local v6    # "stream":Ljava/io/BufferedOutputStream;
    .local v5, "stream":Ljava/io/BufferedOutputStream;
    move-object v1, v2

    .line 1846
    .end local v2    # "fstream":Ljava/io/FileOutputStream;
    .end local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v5    # "stream":Ljava/io/BufferedOutputStream;
    .end local v7    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :goto_5d
    return-void

    .line 1874
    .restart local v1    # "fstream":Ljava/io/FileOutputStream;
    .local v5, "stream":Ljava/io/BufferedOutputStream;
    :catch_5e
    move-exception v0

    .line 1875
    .end local v1    # "fstream":Ljava/io/FileOutputStream;
    .end local v5    # "stream":Ljava/io/BufferedOutputStream;
    .local v0, "e":Ljava/io/IOException;
    :goto_5f
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1876
    invoke-virtual {v3}, Lcom/android/internal/util/JournaledFile;->rollback()V

    goto :goto_5d

    .line 1874
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "fstream":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v5    # "stream":Ljava/io/BufferedOutputStream;
    :catch_66
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v1, v2

    .end local v2    # "fstream":Ljava/io/FileOutputStream;
    .local v1, "fstream":Ljava/io/FileOutputStream;
    goto :goto_5f

    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fstream":Ljava/io/FileOutputStream;
    .end local v5    # "stream":Ljava/io/BufferedOutputStream;
    .restart local v2    # "fstream":Ljava/io/FileOutputStream;
    .restart local v6    # "stream":Ljava/io/BufferedOutputStream;
    :catch_69
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v5, v6

    .end local v6    # "stream":Ljava/io/BufferedOutputStream;
    .local v5, "stream":Ljava/io/BufferedOutputStream;
    move-object v1, v2

    .end local v2    # "fstream":Ljava/io/FileOutputStream;
    .restart local v1    # "fstream":Ljava/io/FileOutputStream;
    goto :goto_5f
.end method

.method private setWallpaperComponent(Landroid/content/ComponentName;I)V
    .registers 13
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 1556
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCallingPid()I

    move-result v0

    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCallingUid()I

    move-result v1

    .line 1557
    const-string/jumbo v5, "changing live wallpaper"

    move v2, p2

    .line 1556
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 1558
    const-string/jumbo v0, "android.permission.SET_WALLPAPER_COMPONENT"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 1560
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1562
    :try_start_1c
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1563
    .local v4, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v4, :cond_43

    .line 1564
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Wallpaper not yet initialized for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_40
    .catchall {:try_start_1c .. :try_end_40} :catchall_40

    .line 1560
    .end local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_40
    move-exception v0

    monitor-exit v6

    throw v0

    .line 1566
    .restart local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_43
    :try_start_43
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1572
    .local v8, "ident":J
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    iget-object v1, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 1573
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5c

    .line 1576
    invoke-direct {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->migrateSystemToLockWallpaperLocked(I)V
    :try_end_5c
    .catchall {:try_start_43 .. :try_end_5c} :catchall_40

    .line 1581
    :cond_5c
    const/4 v0, 0x0

    :try_start_5d
    iput-boolean v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 1582
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 1583
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    move-result v0

    iput v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 1584
    invoke-direct {p0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    :try_end_73
    .catchall {:try_start_5d .. :try_end_73} :catchall_78

    .line 1587
    :cond_73
    :try_start_73
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_40

    monitor-exit v6

    .line 1555
    return-void

    .line 1586
    :catchall_78
    move-exception v0

    .line 1587
    :try_start_79
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1586
    throw v0
    :try_end_7d
    .catchall {:try_start_79 .. :try_end_7d} :catchall_40
.end method

.method private writeWallpaperAttributes(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 7
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1882
    invoke-interface {p1, v2, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1883
    const-string/jumbo v0, "id"

    iget v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1884
    const-string/jumbo v0, "width"

    iget v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1885
    const-string/jumbo v0, "height"

    iget v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1887
    const-string/jumbo v0, "cropLeft"

    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1888
    const-string/jumbo v0, "cropTop"

    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1889
    const-string/jumbo v0, "cropRight"

    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1890
    const-string/jumbo v0, "cropBottom"

    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1892
    iget-object v0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_74

    .line 1893
    const-string/jumbo v0, "paddingLeft"

    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1895
    :cond_74
    iget-object v0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-eqz v0, :cond_88

    .line 1896
    const-string/jumbo v0, "paddingTop"

    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1898
    :cond_88
    iget-object v0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-eqz v0, :cond_9c

    .line 1899
    const-string/jumbo v0, "paddingRight"

    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1901
    :cond_9c
    iget-object v0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_b0

    .line 1902
    const-string/jumbo v0, "paddingBottom"

    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1905
    :cond_b0
    const-string/jumbo v0, "name"

    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1906
    iget-object v0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_c6

    .line 1907
    iget-object v0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 1912
    :cond_c6
    :goto_c6
    iget-boolean v0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    if-eqz v0, :cond_d3

    .line 1913
    const-string/jumbo v0, "backup"

    const-string/jumbo v1, "true"

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1916
    :cond_d3
    invoke-interface {p1, v2, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1881
    return-void

    .line 1908
    :cond_d7
    const-string/jumbo v0, "component"

    .line 1909
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    .line 1908
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_c6
.end method


# virtual methods
.method attachServiceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 14
    .param p1, "conn"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .param p2, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 1769
    :try_start_2
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    .line 1771
    iget v5, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    iget v6, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    iget-object v7, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    .line 1770
    const/16 v3, 0x7dd

    const/4 v4, 0x0

    move-object v1, p1

    .line 1769
    invoke-interface/range {v0 .. v7}, Landroid/service/wallpaper/IWallpaperService;->attach(Landroid/service/wallpaper/IWallpaperConnection;Landroid/os/IBinder;IZIILandroid/graphics/Rect;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_13} :catch_14

    .line 1767
    :cond_13
    :goto_13
    return-void

    .line 1772
    :catch_14
    move-exception v8

    .line 1773
    .local v8, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "WallpaperManagerService"

    const-string/jumbo v1, "Failed attaching wallpaper; clearing"

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1774
    iget-boolean v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperUpdating:Z

    if-nez v0, :cond_13

    move-object v0, p0

    move-object v1, v10

    move v2, v9

    move v3, v9

    move-object v4, p2

    move-object v5, v10

    .line 1775
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    goto :goto_13
.end method

.method bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    .registers 28
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "force"    # Z
    .param p3, "fromUser"    # Z
    .param p4, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p5, "reply"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 1596
    if-nez p2, :cond_20

    .line 1597
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v3, :cond_20

    .line 1598
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-nez v3, :cond_12

    .line 1599
    if-nez p1, :cond_20

    .line 1602
    const/4 v3, 0x1

    return v3

    .line 1604
    :cond_12
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 1607
    const/4 v3, 0x1

    return v3

    .line 1613
    :cond_20
    if-nez p1, :cond_32

    .line 1614
    :try_start_22
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/app/WallpaperManager;->getDefaultWallpaperComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object p1

    .line 1615
    if-nez p1, :cond_32

    .line 1617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    move-object/from16 p1, v0

    .line 1623
    :cond_32
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    move/from16 v18, v0

    .line 1624
    .local v18, "serviceUserId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 1625
    const/16 v4, 0x1080

    .line 1624
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v3, v0, v4, v1}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v19

    .line 1626
    .local v19, "si":Landroid/content/pm/ServiceInfo;
    if-nez v19, :cond_6d

    .line 1628
    const-string/jumbo v3, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Attempted wallpaper "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is unavailable"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    const/4 v3, 0x0

    return v3

    .line 1631
    :cond_6d
    const-string/jumbo v3, "android.permission.BIND_WALLPAPER"

    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ca

    .line 1632
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Selected service does not require android.permission.BIND_WALLPAPER: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1635
    .local v14, "msg":Ljava/lang/String;
    if-eqz p3, :cond_c2

    .line 1636
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v14}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_98
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_98} :catch_98

    .line 1723
    .end local v14    # "msg":Ljava/lang/String;
    .end local v18    # "serviceUserId":I
    .end local v19    # "si":Landroid/content/pm/ServiceInfo;
    :catch_98
    move-exception v9

    .line 1724
    .local v9, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Remote exception for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1725
    .restart local v14    # "msg":Ljava/lang/String;
    if-eqz p3, :cond_256

    .line 1726
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1638
    .end local v9    # "e":Landroid/os/RemoteException;
    .restart local v18    # "serviceUserId":I
    .restart local v19    # "si":Landroid/content/pm/ServiceInfo;
    :cond_c2
    :try_start_c2
    const-string/jumbo v3, "WallpaperManagerService"

    invoke-static {v3, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    const/4 v3, 0x0

    return v3

    .line 1642
    .end local v14    # "msg":Ljava/lang/String;
    :cond_ca
    const/16 v20, 0x0

    .line 1644
    .local v20, "wi":Landroid/app/WallpaperInfo;
    new-instance v13, Landroid/content/Intent;

    const-string/jumbo v3, "android.service.wallpaper.WallpaperService"

    invoke-direct {v13, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1645
    .local v13, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_e2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15e

    .line 1686
    .end local v20    # "wi":Landroid/app/WallpaperInfo;
    :cond_e2
    new-instance v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p4

    invoke-direct {v15, v0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/app/WallpaperInfo;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1687
    .local v15, "newConn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1688
    const-string/jumbo v3, "android.intent.extra.client_label"

    .line 1689
    const v4, 0x104050e

    .line 1688
    invoke-virtual {v13, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1690
    const-string/jumbo v21, "android.intent.extra.client_intent"

    .line 1691
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 1692
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1693
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const v6, 0x104050f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 1692
    invoke-static {v4, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    .line 1694
    new-instance v8, Landroid/os/UserHandle;

    move/from16 v0, v18

    invoke-direct {v8, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 1691
    const/4 v4, 0x0

    .line 1694
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1690
    invoke-static/range {v3 .. v8}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v13, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1695
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 1698
    new-instance v4, Landroid/os/UserHandle;

    move/from16 v0, v18

    invoke-direct {v4, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 1696
    const v5, 0x22000001

    .line 1695
    invoke-virtual {v3, v13, v15, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_212

    .line 1699
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to bind service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1701
    .restart local v14    # "msg":Ljava/lang/String;
    if-eqz p3, :cond_20a

    .line 1702
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1648
    .end local v14    # "msg":Ljava/lang/String;
    .end local v15    # "newConn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .restart local v20    # "wi":Landroid/app/WallpaperInfo;
    :cond_15e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 1649
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 1650
    const/16 v5, 0x80

    .line 1648
    move/from16 v0, v18

    invoke-interface {v3, v13, v4, v5, v0}, Landroid/content/pm/IPackageManager;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v16

    .line 1651
    .local v16, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_17b
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v3

    if-ge v12, v3, :cond_1bc

    .line 1652
    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v17, v0

    .line 1653
    .local v17, "rsi":Landroid/content/pm/ServiceInfo;
    move-object/from16 v0, v17

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1fe

    .line 1654
    move-object/from16 v0, v17

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1a6
    .catch Landroid/os/RemoteException; {:try_start_c2 .. :try_end_1a6} :catch_98

    move-result v3

    .line 1653
    if-eqz v3, :cond_1fe

    .line 1656
    :try_start_1a9
    new-instance v20, Landroid/app/WallpaperInfo;

    .end local v20    # "wi":Landroid/app/WallpaperInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v20

    invoke-direct {v0, v4, v3}, Landroid/app/WallpaperInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_1bc
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a9 .. :try_end_1bc} :catch_1ed
    .catch Ljava/io/IOException; {:try_start_1a9 .. :try_end_1bc} :catch_1dc
    .catch Landroid/os/RemoteException; {:try_start_1a9 .. :try_end_1bc} :catch_98

    .line 1673
    .end local v17    # "rsi":Landroid/content/pm/ServiceInfo;
    :cond_1bc
    if-nez v20, :cond_e2

    .line 1674
    :try_start_1be
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Selected service is not a wallpaper: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1676
    .restart local v14    # "msg":Ljava/lang/String;
    if-eqz p3, :cond_202

    .line 1677
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v14}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1663
    .end local v14    # "msg":Ljava/lang/String;
    .restart local v17    # "rsi":Landroid/content/pm/ServiceInfo;
    :catch_1dc
    move-exception v10

    .line 1664
    .local v10, "e":Ljava/io/IOException;
    if-eqz p3, :cond_1e5

    .line 1665
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1667
    :cond_1e5
    const-string/jumbo v3, "WallpaperManagerService"

    invoke-static {v3, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1668
    const/4 v3, 0x0

    return v3

    .line 1657
    .end local v10    # "e":Ljava/io/IOException;
    :catch_1ed
    move-exception v11

    .line 1658
    .local v11, "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz p3, :cond_1f6

    .line 1659
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1661
    :cond_1f6
    const-string/jumbo v3, "WallpaperManagerService"

    invoke-static {v3, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1662
    const/4 v3, 0x0

    return v3

    .line 1651
    .end local v11    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v20    # "wi":Landroid/app/WallpaperInfo;
    :cond_1fe
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_17b

    .line 1679
    .end local v17    # "rsi":Landroid/content/pm/ServiceInfo;
    .end local v20    # "wi":Landroid/app/WallpaperInfo;
    .restart local v14    # "msg":Ljava/lang/String;
    :cond_202
    const-string/jumbo v3, "WallpaperManagerService"

    invoke-static {v3, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    const/4 v3, 0x0

    return v3

    .line 1704
    .end local v12    # "i":I
    .end local v16    # "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v15    # "newConn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    :cond_20a
    const-string/jumbo v3, "WallpaperManagerService"

    invoke-static {v3, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    const/4 v3, 0x0

    return v3

    .line 1707
    .end local v14    # "msg":Ljava/lang/String;
    :cond_212
    move-object/from16 v0, p4

    iget v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v3, v4, :cond_22b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v3, :cond_22b

    .line 1708
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1710
    :cond_22b
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 1711
    move-object/from16 v0, p4

    iput-object v15, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 1712
    move-object/from16 v0, p5

    iput-object v0, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;
    :try_end_239
    .catch Landroid/os/RemoteException; {:try_start_1be .. :try_end_239} :catch_98

    .line 1714
    :try_start_239
    move-object/from16 v0, p4

    iget v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v3, v4, :cond_254

    .line 1717
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v4, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    .line 1718
    const/16 v5, 0x7dd

    .line 1717
    invoke-interface {v3, v4, v5}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;I)V

    .line 1719
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :try_end_254
    .catch Landroid/os/RemoteException; {:try_start_239 .. :try_end_254} :catch_25e

    .line 1731
    :cond_254
    :goto_254
    const/4 v3, 0x1

    return v3

    .line 1728
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v15    # "newConn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .end local v18    # "serviceUserId":I
    .end local v19    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v9    # "e":Landroid/os/RemoteException;
    .restart local v14    # "msg":Ljava/lang/String;
    :cond_256
    const-string/jumbo v3, "WallpaperManagerService"

    invoke-static {v3, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    const/4 v3, 0x0

    return v3

    .line 1721
    .end local v9    # "e":Landroid/os/RemoteException;
    .end local v14    # "msg":Ljava/lang/String;
    .restart local v13    # "intent":Landroid/content/Intent;
    .restart local v15    # "newConn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .restart local v18    # "serviceUserId":I
    .restart local v19    # "si":Landroid/content/pm/ServiceInfo;
    :catch_25e
    move-exception v9

    .restart local v9    # "e":Landroid/os/RemoteException;
    goto :goto_254
.end method

.method public clearWallpaper(Ljava/lang/String;II)V
    .registers 11
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "which"    # I
    .param p3, "userId"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 1103
    const-string/jumbo v0, "android.permission.SET_WALLPAPER"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 1104
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->isSetWallpaperAllowed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1107
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1108
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string/jumbo v5, "clearWallpaper"

    const/4 v4, 0x1

    move v2, p3

    .line 1107
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p3

    .line 1110
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1111
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_2a
    invoke-virtual {p0, v1, p2, p3, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZIILandroid/os/IRemoteCallback;)V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_30

    monitor-exit v0

    .line 1101
    return-void

    .line 1105
    :cond_2f
    return-void

    .line 1110
    :catchall_30
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method clearWallpaperComponentLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 3
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    .line 1763
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 1764
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1762
    return-void
.end method

.method clearWallpaperLocked(ZIILandroid/os/IRemoteCallback;)V
    .registers 21
    .param p1, "defaultFailed"    # Z
    .param p2, "which"    # I
    .param p3, "userId"    # I
    .param p4, "reply"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 1116
    const/4 v2, 0x1

    move/from16 v0, p2

    if-eq v0, v2, :cond_13

    const/4 v2, 0x2

    move/from16 v0, p2

    if-eq v0, v2, :cond_13

    .line 1117
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Must specify exactly one kind of wallpaper to read"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1120
    :cond_13
    const/4 v6, 0x0

    .line 1121
    .local v6, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/4 v2, 0x2

    move/from16 v0, p2

    if-ne v0, v2, :cond_28

    .line 1122
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    check-cast v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1123
    .local v6, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v6, :cond_4a

    .line 1128
    return-void

    .line 1131
    .local v6, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    check-cast v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1132
    .local v6, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v6, :cond_4a

    .line 1134
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    .line 1135
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    check-cast v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1138
    .restart local v6    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_4a
    if-nez v6, :cond_4d

    .line 1139
    return-void

    .line 1142
    :cond_4d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1144
    .local v14, "ident":J
    :try_start_51
    iget-object v2, v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_87

    .line 1145
    iget-object v2, v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1146
    iget-object v2, v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1147
    const/4 v2, 0x2

    move/from16 v0, p2

    if-ne v0, v2, :cond_87

    .line 1148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 1149
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mKeyguardListener:Landroid/app/IWallpaperManagerCallback;
    :try_end_75
    .catchall {:try_start_51 .. :try_end_75} :catchall_cd

    .line 1150
    .local v8, "cb":Landroid/app/IWallpaperManagerCallback;
    if-eqz v8, :cond_7a

    .line 1155
    :try_start_77
    invoke-interface {v8}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_77 .. :try_end_7a} :catch_85
    .catchall {:try_start_77 .. :try_end_7a} :catchall_cd

    .line 1160
    :cond_7a
    :goto_7a
    :try_start_7a
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V
    :try_end_81
    .catchall {:try_start_7a .. :try_end_81} :catchall_cd

    .line 1191
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1161
    return-void

    .line 1156
    :catch_85
    move-exception v9

    .local v9, "e":Landroid/os/RemoteException;
    goto :goto_7a

    .line 1165
    .end local v8    # "cb":Landroid/app/IWallpaperManagerCallback;
    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_87
    const/4 v10, 0x0

    .line 1167
    .local v10, "e":Ljava/lang/RuntimeException;
    const/4 v2, 0x0

    :try_start_89
    iput-boolean v2, v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 1168
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I
    :try_end_8f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_89 .. :try_end_8f} :catch_af
    .catchall {:try_start_89 .. :try_end_8f} :catchall_cd

    move/from16 v0, p3

    if-eq v0, v2, :cond_97

    .line 1191
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1168
    return-void

    .line 1169
    :cond_97
    if-eqz p1, :cond_ad

    .line 1170
    :try_start_99
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    .line 1171
    :goto_9d
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v2, p0

    move-object/from16 v7, p4

    .line 1169
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    :try_end_a6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_99 .. :try_end_a6} :catch_af
    .catchall {:try_start_99 .. :try_end_a6} :catchall_cd

    move-result v2

    if-eqz v2, :cond_b1

    .line 1191
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1172
    return-void

    .line 1171
    :cond_ad
    const/4 v3, 0x0

    goto :goto_9d

    .line 1174
    :catch_af
    move-exception v12

    .line 1175
    .local v12, "e1":Ljava/lang/IllegalArgumentException;
    move-object v10, v12

    .line 1182
    .end local v10    # "e":Ljava/lang/RuntimeException;
    .end local v12    # "e1":Ljava/lang/IllegalArgumentException;
    :cond_b1
    :try_start_b1
    const-string/jumbo v2, "WallpaperManagerService"

    const-string/jumbo v3, "Default wallpaper component not found!"

    invoke-static {v2, v3, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1183
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperComponentLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    :try_end_bf
    .catchall {:try_start_b1 .. :try_end_bf} :catchall_cd

    .line 1184
    if-eqz p4, :cond_c7

    .line 1186
    const/4 v2, 0x0

    :try_start_c2
    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_c7
    .catch Landroid/os/RemoteException; {:try_start_c2 .. :try_end_c7} :catch_cb
    .catchall {:try_start_c2 .. :try_end_c7} :catchall_cd

    .line 1191
    :cond_c7
    :goto_c7
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1115
    return-void

    .line 1187
    :catch_cb
    move-exception v11

    .local v11, "e1":Landroid/os/RemoteException;
    goto :goto_c7

    .line 1190
    .end local v11    # "e1":Landroid/os/RemoteException;
    :catchall_cd
    move-exception v2

    .line 1191
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1190
    throw v2
.end method

.method detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 6
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    const/4 v3, 0x0

    .line 1735
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v1, :cond_3e

    .line 1736
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_17

    .line 1738
    :try_start_b
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_13} :catch_43

    .line 1741
    :goto_13
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iput-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    .line 1743
    :cond_17
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v1, :cond_24

    .line 1745
    :try_start_1d
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v1}, Landroid/service/wallpaper/IWallpaperEngine;->destroy()V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_24} :catch_41

    .line 1749
    :cond_24
    :goto_24
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1753
    :try_start_2b
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_34} :catch_3f

    .line 1756
    :goto_34
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iput-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 1757
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iput-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 1758
    iput-object v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 1734
    :cond_3e
    return-void

    .line 1754
    :catch_3f
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_34

    .line 1746
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_41
    move-exception v0

    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_24

    .line 1739
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_43
    move-exception v0

    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_13
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 14
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2276
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_36

    .line 2279
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Permission Denial: can\'t dump wallpaper service from from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2280
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 2279
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2281
    const-string/jumbo v4, ", uid="

    .line 2279
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2281
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2279
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2282
    return-void

    .line 2285
    :cond_36
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2286
    :try_start_39
    const-string/jumbo v3, "System wallpaper state:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2287
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_40
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_105

    .line 2288
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2289
    .local v2, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const-string/jumbo v3, " User "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 2290
    const-string/jumbo v3, ": id="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 2291
    const-string/jumbo v3, "  mWidth="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2292
    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 2293
    const-string/jumbo v3, " mHeight="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2294
    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 2295
    const-string/jumbo v3, "  mCropHint="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2296
    const-string/jumbo v3, "  mPadding="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2297
    const-string/jumbo v3, "  mName="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2298
    const-string/jumbo v3, "  mWallpaperComponent="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2299
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v3, :cond_101

    .line 2300
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 2301
    .local v0, "conn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    const-string/jumbo v3, "  Wallpaper connection "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2302
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2303
    const-string/jumbo v3, ":"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2304
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz v3, :cond_d0

    .line 2305
    const-string/jumbo v3, "    mInfo.component="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2306
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    invoke-virtual {v3}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2308
    :cond_d0
    const-string/jumbo v3, "    mToken="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2309
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2310
    const-string/jumbo v3, "    mService="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2311
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2312
    const-string/jumbo v3, "    mEngine="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2313
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2314
    const-string/jumbo v3, "    mLastDiedTime="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2315
    iget-wide v6, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lastDiedTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-virtual {p2, v6, v7}, Ljava/io/PrintWriter;->println(J)V

    .line 2287
    .end local v0    # "conn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    :cond_101
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_40

    .line 2318
    .end local v2    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_105
    const-string/jumbo v3, "Lock wallpaper state:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2319
    const/4 v1, 0x0

    :goto_10c
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_16c

    .line 2320
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2321
    .restart local v2    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const-string/jumbo v3, " User "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 2322
    const-string/jumbo v3, ": id="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 2323
    const-string/jumbo v3, "  mWidth="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 2324
    const-string/jumbo v3, " mHeight="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 2325
    const-string/jumbo v3, "  mCropHint="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2326
    const-string/jumbo v3, "  mPadding="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2327
    const-string/jumbo v3, "  mName="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_169
    .catchall {:try_start_39 .. :try_end_169} :catchall_16e

    .line 2319
    add-int/lit8 v1, v1, 0x1

    goto :goto_10c

    .end local v2    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_16c
    monitor-exit v4

    .line 2275
    return-void

    .line 2285
    .end local v1    # "i":I
    :catchall_16e
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method protected finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 899
    invoke-super {p0}, Landroid/app/IWallpaperManager$Stub;->finalize()V

    .line 900
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1c

    .line 901
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 902
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->stopWatching()V

    .line 900
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 898
    .end local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_1c
    return-void
.end method

.method public getHeightHint()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1284
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1285
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1286
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v0, :cond_15

    .line 1287
    iget v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_18

    monitor-exit v2

    return v1

    .line 1289
    :cond_15
    const/4 v1, 0x0

    monitor-exit v2

    return v1

    .line 1284
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_18
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 985
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_11

    .line 986
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "getName() can only be called from the system process"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 988
    :cond_11
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 989
    :try_start_14
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_21

    monitor-exit v1

    return-object v0

    .line 988
    :catchall_21
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getWallpaper(Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;I)Landroid/os/ParcelFileDescriptor;
    .registers 16
    .param p1, "cb"    # Landroid/app/IWallpaperManagerCallback;
    .param p2, "which"    # I
    .param p3, "outParams"    # Landroid/os/Bundle;
    .param p4, "wallpaperUserId"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 1331
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1332
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string/jumbo v5, "getWallpaper"

    move v2, p4

    .line 1331
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p4

    .line 1334
    if-eq p2, v4, :cond_21

    if-eq p2, v10, :cond_21

    .line 1335
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Must specify exactly one kind of wallpaper to read"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1338
    :cond_21
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1340
    if-ne p2, v10, :cond_3e

    :try_start_26
    iget-object v9, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    .line 1341
    .local v9, "whichSet":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    :goto_28
    invoke-virtual {v9, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1342
    .local v8, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v8, :cond_41

    .line 1345
    const/4 v0, 0x0

    invoke-direct {p0, p4, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    .line 1346
    invoke-virtual {v9, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    check-cast v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :try_end_3a
    .catchall {:try_start_26 .. :try_end_3a} :catchall_7c

    .line 1347
    .restart local v8    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v8, :cond_41

    monitor-exit v1

    .line 1348
    return-object v6

    .line 1340
    .end local v8    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v9    # "whichSet":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    :cond_3e
    :try_start_3e
    iget-object v9, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;
    :try_end_40
    .catchall {:try_start_3e .. :try_end_40} :catchall_7c

    .restart local v9    # "whichSet":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    goto :goto_28

    .line 1352
    .restart local v8    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_41
    if-eqz p3, :cond_53

    .line 1353
    :try_start_43
    const-string/jumbo v0, "width"

    iget v2, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1354
    const-string/jumbo v0, "height"

    iget v2, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1356
    :cond_53
    if-eqz p1, :cond_5c

    .line 1357
    invoke-static {v8}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->-get0(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1359
    :cond_5c
    iget-object v0, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_61
    .catch Ljava/io/FileNotFoundException; {:try_start_43 .. :try_end_61} :catch_70
    .catchall {:try_start_43 .. :try_end_61} :catchall_7c

    move-result v0

    if-nez v0, :cond_66

    monitor-exit v1

    .line 1360
    return-object v6

    .line 1362
    :cond_66
    :try_start_66
    iget-object v0, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    const/high16 v2, 0x10000000

    invoke-static {v0, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_6d
    .catch Ljava/io/FileNotFoundException; {:try_start_66 .. :try_end_6d} :catch_70
    .catchall {:try_start_66 .. :try_end_6d} :catchall_7c

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1363
    :catch_70
    move-exception v7

    .line 1365
    .local v7, "e":Ljava/io/FileNotFoundException;
    :try_start_71
    const-string/jumbo v0, "WallpaperManagerService"

    const-string/jumbo v2, "Error getting wallpaper"

    invoke-static {v0, v2, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7a
    .catchall {:try_start_71 .. :try_end_7a} :catchall_7c

    monitor-exit v1

    .line 1367
    return-object v6

    .line 1338
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    .end local v8    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v9    # "whichSet":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    :catchall_7c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getWallpaperIdForUser(II)I
    .registers 13
    .param p1, "which"    # I
    .param p2, "userId"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x2

    const/4 v4, 0x1

    .line 1386
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1387
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string/jumbo v5, "getWallpaperIdForUser"

    const/4 v3, 0x0

    move v2, p2

    .line 1386
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 1389
    if-eq p1, v4, :cond_21

    if-eq p1, v9, :cond_21

    .line 1390
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Must specify exactly one kind of wallpaper"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1394
    :cond_21
    if-ne p1, v9, :cond_34

    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    .line 1395
    .local v7, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    :goto_25
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1396
    :try_start_28
    invoke-virtual {v7, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1397
    .local v8, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v8, :cond_37

    .line 1398
    iget v0, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I
    :try_end_32
    .catchall {:try_start_28 .. :try_end_32} :catchall_3a

    monitor-exit v1

    return v0

    .line 1394
    .end local v7    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    .end local v8    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_34
    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    .restart local v7    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    goto :goto_25

    .restart local v8    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_37
    monitor-exit v1

    .line 1401
    const/4 v0, -0x1

    return v0

    .line 1395
    .end local v8    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_3a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getWallpaperInfo(I)Landroid/app/WallpaperInfo;
    .registers 10
    .param p1, "userId"    # I

    .prologue
    const/4 v6, 0x0

    .line 1373
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1374
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string/jumbo v5, "getWallpaperIdForUser"

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v2, p1

    .line 1373
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 1375
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1376
    :try_start_16
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1377
    .local v7, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v7, :cond_2a

    iget-object v0, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_2a

    .line 1378
    iget-object v0, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;
    :try_end_28
    .catchall {:try_start_16 .. :try_end_28} :catchall_2c

    monitor-exit v1

    return-object v0

    :cond_2a
    monitor-exit v1

    .line 1380
    return-object v6

    .line 1375
    .end local v7    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_2c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getWidthHint()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1273
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1274
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1275
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v0, :cond_15

    .line 1276
    iget v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_18

    monitor-exit v2

    return v1

    .line 1278
    :cond_15
    const/4 v1, 0x0

    monitor-exit v2

    return v1

    .line 1273
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_18
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public hasNamedWallpaper(Ljava/lang/String;)Z
    .registers 12
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 1196
    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1198
    :try_start_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_5e

    move-result-wide v0

    .line 1200
    .local v0, "ident":J
    :try_start_8
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "user"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_59

    move-result-object v4

    .line 1202
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :try_start_17
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1204
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "user$iterator":Ljava/util/Iterator;
    :cond_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_61

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1206
    .local v2, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-nez v6, :cond_1e

    .line 1209
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v8, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1210
    .local v5, "wd":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v5, :cond_4c

    .line 1212
    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    const/4 v8, 0x0

    invoke-direct {p0, v6, v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    .line 1213
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v8, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "wd":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    check-cast v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1215
    .restart local v5    # "wd":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_4c
    if-eqz v5, :cond_1e

    iget-object v6, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_53
    .catchall {:try_start_17 .. :try_end_53} :catchall_5e

    move-result v6

    if-eqz v6, :cond_1e

    .line 1216
    const/4 v6, 0x1

    monitor-exit v7

    return v6

    .line 1201
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    .end local v3    # "user$iterator":Ljava/util/Iterator;
    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v5    # "wd":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_59
    move-exception v6

    .line 1202
    :try_start_5a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1201
    throw v6
    :try_end_5e
    .catchall {:try_start_5a .. :try_end_5e} :catchall_5e

    .line 1196
    .end local v0    # "ident":J
    :catchall_5e
    move-exception v6

    monitor-exit v7

    throw v6

    .restart local v0    # "ident":J
    .restart local v3    # "user$iterator":Ljava/util/Iterator;
    .restart local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_61
    monitor-exit v7

    .line 1220
    return v9
.end method

.method public isSetWallpaperAllowed(Ljava/lang/String;)Z
    .registers 11
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1814
    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1815
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 1816
    .local v3, "uidPackages":[Ljava/lang/String;
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 1817
    .local v2, "uidMatchPackage":Z
    if-nez v2, :cond_1b

    .line 1818
    return v5

    .line 1821
    :cond_1b
    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-class v8, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 1822
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_31

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->isProfileOwnerApp(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_32

    .line 1823
    :cond_31
    return v6

    .line 1825
    :cond_32
    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "user"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 1826
    .local v4, "um":Landroid/os/UserManager;
    const-string/jumbo v7, "no_set_wallpaper"

    invoke-virtual {v4, v7}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_47

    :goto_46
    return v5

    :cond_47
    move v5, v6

    goto :goto_46
.end method

.method public isWallpaperBackupEligible(II)Z
    .registers 6
    .param p1, "which"    # I
    .param p2, "userId"    # I

    .prologue
    .line 1831
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_11

    .line 1832
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "Only the system may call isWallpaperBackupEligible"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1835
    :cond_11
    const/4 v1, 0x2

    if-ne p1, v1, :cond_22

    .line 1836
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object v0, v1

    .line 1838
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :goto_1d
    if-eqz v0, :cond_2c

    iget-boolean v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    :goto_21
    return v1

    .line 1837
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_22
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object v0, v1

    goto :goto_1d

    .line 1838
    .restart local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_2c
    const/4 v1, 0x0

    goto :goto_21
.end method

.method public isWallpaperSupported(Ljava/lang/String;)Z
    .registers 6
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1808
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x30

    invoke-virtual {v1, v3, v2, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method makeWallpaperIdLocked()I
    .registers 2

    .prologue
    .line 588
    :cond_0
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperId:I

    .line 589
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperId:I

    if-eqz v0, :cond_0

    .line 590
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperId:I

    return v0
.end method

.method notifyLockWallpaperChanged()V
    .registers 3

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mKeyguardListener:Landroid/app/IWallpaperManagerCallback;

    .line 309
    .local v0, "cb":Landroid/app/IWallpaperManagerCallback;
    if-eqz v0, :cond_7

    .line 311
    :try_start_4
    invoke-interface {v0}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 307
    :cond_7
    :goto_7
    return-void

    .line 312
    :catch_8
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_7
.end method

.method onRemoveUser(I)V
    .registers 9
    .param p1, "userId"    # I

    .prologue
    .line 1042
    const/4 v2, 0x1

    if-ge p1, v2, :cond_4

    return-void

    .line 1044
    :cond_4
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    .line 1045
    .local v1, "wallpaperDir":Ljava/io/File;
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1046
    :try_start_b
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->stopObserversLocked(I)V

    .line 1047
    sget-object v4, Lcom/android/server/wallpaper/WallpaperManagerService;->sPerUserFiles:[Ljava/lang/String;

    const/4 v2, 0x0

    array-length v5, v4

    :goto_12
    if-ge v2, v5, :cond_21

    aget-object v0, v4, v2

    .line 1048
    .local v0, "filename":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_23

    .line 1047
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .end local v0    # "filename":Ljava/lang/String;
    :cond_21
    monitor-exit v3

    .line 1041
    return-void

    .line 1045
    :catchall_23
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method onUnlockUser(I)V
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 1010
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1011
    :try_start_3
    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v1, p1, :cond_2c

    .line 1012
    iget-boolean v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWaitingForUnlock:Z

    if-eqz v1, :cond_f

    .line 1014
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchUser(ILandroid/os/IRemoteCallback;)V

    .line 1021
    :cond_f
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mUserRestorecon:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v1, v3, :cond_2c

    .line 1022
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mUserRestorecon:Landroid/util/SparseArray;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1023
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$4;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$4;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    .line 1035
    .local v0, "relabeler":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2e

    .end local v0    # "relabeler":Ljava/lang/Runnable;
    :cond_2c
    monitor-exit v2

    .line 1009
    return-void

    .line 1010
    :catchall_2e
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method restoreNamedResourceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    .registers 29
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    .line 2199
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_193

    const-string/jumbo v23, "res:"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x4

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_193

    .line 2200
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    .line 2202
    .local v20, "resName":Ljava/lang/String;
    const/16 v16, 0x0

    .line 2203
    .local v16, "pkg":Ljava/lang/String;
    const/16 v23, 0x3a

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 2204
    .local v7, "colon":I
    if-lez v7, :cond_4d

    .line 2205
    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 2208
    .end local v16    # "pkg":Ljava/lang/String;
    :cond_4d
    const/4 v15, 0x0

    .line 2209
    .local v15, "ident":Ljava/lang/String;
    const/16 v23, 0x2f

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v21

    .line 2210
    .local v21, "slash":I
    if-lez v21, :cond_64

    .line 2211
    add-int/lit8 v23, v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 2214
    .end local v15    # "ident":Ljava/lang/String;
    :cond_64
    const/16 v22, 0x0

    .line 2215
    .local v22, "type":Ljava/lang/String;
    if-lez v7, :cond_80

    if-lez v21, :cond_80

    sub-int v23, v21, v7

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_80

    .line 2216
    add-int/lit8 v23, v7, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 2219
    .end local v22    # "type":Ljava/lang/String;
    :cond_80
    if-eqz v16, :cond_193

    if-eqz v15, :cond_193

    if-eqz v22, :cond_193

    .line 2220
    const/16 v19, -0x1

    .line 2221
    .local v19, "resId":I
    const/16 v18, 0x0

    .line 2222
    .local v18, "res":Ljava/io/InputStream;
    const/4 v13, 0x0

    .line 2223
    .local v13, "fos":Ljava/io/FileOutputStream;
    const/4 v8, 0x0

    .line 2225
    .local v8, "cos":Ljava/io/FileOutputStream;
    :try_start_8c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const/16 v24, 0x4

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v6

    .line 2226
    .local v6, "c":Landroid/content/Context;
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 2227
    .local v17, "r":Landroid/content/res/Resources;
    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    .line 2228
    if-nez v19, :cond_fa

    .line 2229
    const-string/jumbo v23, "WallpaperManagerService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "couldn\'t resolve identifier pkg="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " type="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2230
    const-string/jumbo v25, " ident="

    .line 2229
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ee
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8c .. :try_end_ee} :catch_23c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8c .. :try_end_ee} :catch_1ec
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_ee} :catch_1ca
    .catchall {:try_start_8c .. :try_end_ee} :catchall_220

    .line 2231
    const/16 v23, 0x0

    .line 2259
    invoke-static/range {v18 .. v18}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2266
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2267
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2231
    return v23

    .line 2234
    :cond_fa
    :try_start_fa
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v18

    .line 2235
    .local v18, "res":Ljava/io/InputStream;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_120

    .line 2236
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    .line 2237
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    .line 2239
    :cond_120
    new-instance v14, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v14, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_12d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_fa .. :try_end_12d} :catch_23c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_fa .. :try_end_12d} :catch_1ec
    .catch Ljava/io/IOException; {:try_start_fa .. :try_end_12d} :catch_1ca
    .catchall {:try_start_fa .. :try_end_12d} :catchall_220

    .line 2240
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .local v14, "fos":Ljava/io/FileOutputStream;
    :try_start_12d
    new-instance v9, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v9, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_13a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12d .. :try_end_13a} :catch_23f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_12d .. :try_end_13a} :catch_243
    .catch Ljava/io/IOException; {:try_start_12d .. :try_end_13a} :catch_24a
    .catchall {:try_start_12d .. :try_end_13a} :catchall_235

    .line 2242
    .local v9, "cos":Ljava/io/FileOutputStream;
    const v23, 0x8000

    :try_start_13d
    move/from16 v0, v23

    new-array v5, v0, [B

    .line 2244
    .end local v8    # "cos":Ljava/io/FileOutputStream;
    .local v5, "buffer":[B
    :goto_141
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, "amt":I
    if-lez v4, :cond_196

    .line 2245
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v14, v5, v0, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 2246
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v9, v5, v0, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_157
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13d .. :try_end_157} :catch_158
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_13d .. :try_end_157} :catch_246
    .catch Ljava/io/IOException; {:try_start_13d .. :try_end_157} :catch_24e
    .catchall {:try_start_13d .. :try_end_157} :catchall_238

    goto :goto_141

    .line 2252
    .end local v4    # "amt":I
    .end local v5    # "buffer":[B
    :catch_158
    move-exception v10

    .local v10, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v8, v9

    .end local v9    # "cos":Ljava/io/FileOutputStream;
    .local v8, "cos":Ljava/io/FileOutputStream;
    move-object v13, v14

    .line 2253
    .end local v6    # "c":Landroid/content/Context;
    .end local v8    # "cos":Ljava/io/FileOutputStream;
    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .end local v17    # "r":Landroid/content/res/Resources;
    .end local v18    # "res":Ljava/io/InputStream;
    :goto_15b
    :try_start_15b
    const-string/jumbo v23, "WallpaperManagerService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Package name "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " not found"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_180
    .catchall {:try_start_15b .. :try_end_180} :catchall_220

    .line 2259
    invoke-static/range {v18 .. v18}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2260
    if-eqz v13, :cond_188

    .line 2261
    invoke-static {v13}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2263
    :cond_188
    if-eqz v8, :cond_18d

    .line 2264
    invoke-static {v8}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2266
    :cond_18d
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2267
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2271
    .end local v7    # "colon":I
    .end local v10    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v19    # "resId":I
    .end local v20    # "resName":Ljava/lang/String;
    .end local v21    # "slash":I
    :cond_193
    :goto_193
    const/16 v23, 0x0

    return v23

    .line 2250
    .restart local v4    # "amt":I
    .restart local v5    # "buffer":[B
    .restart local v6    # "c":Landroid/content/Context;
    .restart local v7    # "colon":I
    .restart local v9    # "cos":Ljava/io/FileOutputStream;
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v17    # "r":Landroid/content/res/Resources;
    .restart local v18    # "res":Ljava/io/InputStream;
    .restart local v19    # "resId":I
    .restart local v20    # "resName":Ljava/lang/String;
    .restart local v21    # "slash":I
    :cond_196
    :try_start_196
    const-string/jumbo v23, "WallpaperManagerService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Restored wallpaper: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_196 .. :try_end_1b4} :catch_158
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_196 .. :try_end_1b4} :catch_246
    .catch Ljava/io/IOException; {:try_start_196 .. :try_end_1b4} :catch_24e
    .catchall {:try_start_196 .. :try_end_1b4} :catchall_238

    .line 2251
    const/16 v23, 0x1

    .line 2259
    invoke-static/range {v18 .. v18}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2260
    if-eqz v14, :cond_1be

    .line 2261
    invoke-static {v14}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2263
    :cond_1be
    if-eqz v9, :cond_1c3

    .line 2264
    invoke-static {v9}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2266
    :cond_1c3
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2267
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2251
    return v23

    .line 2256
    .end local v4    # "amt":I
    .end local v5    # "buffer":[B
    .end local v6    # "c":Landroid/content/Context;
    .end local v9    # "cos":Ljava/io/FileOutputStream;
    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .end local v17    # "r":Landroid/content/res/Resources;
    .end local v18    # "res":Ljava/io/InputStream;
    .local v8, "cos":Ljava/io/FileOutputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    :catch_1ca
    move-exception v12

    .line 2257
    .end local v8    # "cos":Ljava/io/FileOutputStream;
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .local v12, "e":Ljava/io/IOException;
    :goto_1cb
    :try_start_1cb
    const-string/jumbo v23, "WallpaperManagerService"

    const-string/jumbo v24, "IOException while restoring wallpaper "

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d8
    .catchall {:try_start_1cb .. :try_end_1d8} :catchall_220

    .line 2259
    invoke-static/range {v18 .. v18}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2260
    if-eqz v13, :cond_1e0

    .line 2261
    invoke-static {v13}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2263
    :cond_1e0
    if-eqz v8, :cond_1e5

    .line 2264
    invoke-static {v8}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2266
    :cond_1e5
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2267
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_193

    .line 2254
    .end local v12    # "e":Ljava/io/IOException;
    .restart local v8    # "cos":Ljava/io/FileOutputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    :catch_1ec
    move-exception v11

    .line 2255
    .end local v8    # "cos":Ljava/io/FileOutputStream;
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .local v11, "e":Landroid/content/res/Resources$NotFoundException;
    :goto_1ed
    :try_start_1ed
    const-string/jumbo v23, "WallpaperManagerService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Resource not found: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20b
    .catchall {:try_start_1ed .. :try_end_20b} :catchall_220

    .line 2259
    invoke-static/range {v18 .. v18}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2260
    if-eqz v13, :cond_213

    .line 2261
    invoke-static {v13}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2263
    :cond_213
    if-eqz v8, :cond_218

    .line 2264
    invoke-static {v8}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2266
    :cond_218
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2267
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_193

    .line 2258
    .end local v11    # "e":Landroid/content/res/Resources$NotFoundException;
    :catchall_220
    move-exception v23

    .line 2259
    :goto_221
    invoke-static/range {v18 .. v18}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2260
    if-eqz v13, :cond_229

    .line 2261
    invoke-static {v13}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2263
    :cond_229
    if-eqz v8, :cond_22e

    .line 2264
    invoke-static {v8}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2266
    :cond_22e
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2267
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2258
    throw v23

    .restart local v6    # "c":Landroid/content/Context;
    .restart local v8    # "cos":Ljava/io/FileOutputStream;
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v17    # "r":Landroid/content/res/Resources;
    .restart local v18    # "res":Ljava/io/InputStream;
    :catchall_235
    move-exception v23

    move-object v13, v14

    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .local v13, "fos":Ljava/io/FileOutputStream;
    goto :goto_221

    .end local v8    # "cos":Ljava/io/FileOutputStream;
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "cos":Ljava/io/FileOutputStream;
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    :catchall_238
    move-exception v23

    move-object v8, v9

    .end local v9    # "cos":Ljava/io/FileOutputStream;
    .local v8, "cos":Ljava/io/FileOutputStream;
    move-object v13, v14

    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    goto :goto_221

    .line 2252
    .end local v6    # "c":Landroid/content/Context;
    .end local v17    # "r":Landroid/content/res/Resources;
    .end local v18    # "res":Ljava/io/InputStream;
    .local v8, "cos":Ljava/io/FileOutputStream;
    .local v13, "fos":Ljava/io/FileOutputStream;
    :catch_23c
    move-exception v10

    .restart local v10    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_15b

    .end local v10    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "c":Landroid/content/Context;
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v17    # "r":Landroid/content/res/Resources;
    .restart local v18    # "res":Ljava/io/InputStream;
    :catch_23f
    move-exception v10

    .restart local v10    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v13, v14

    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .local v13, "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_15b

    .line 2254
    .end local v10    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    :catch_243
    move-exception v11

    .restart local v11    # "e":Landroid/content/res/Resources$NotFoundException;
    move-object v13, v14

    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1ed

    .end local v8    # "cos":Ljava/io/FileOutputStream;
    .end local v11    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "cos":Ljava/io/FileOutputStream;
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    :catch_246
    move-exception v11

    .restart local v11    # "e":Landroid/content/res/Resources$NotFoundException;
    move-object v8, v9

    .end local v9    # "cos":Ljava/io/FileOutputStream;
    .local v8, "cos":Ljava/io/FileOutputStream;
    move-object v13, v14

    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1ed

    .line 2256
    .end local v11    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .local v8, "cos":Ljava/io/FileOutputStream;
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    :catch_24a
    move-exception v12

    .restart local v12    # "e":Ljava/io/IOException;
    move-object v13, v14

    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_1cb

    .end local v8    # "cos":Ljava/io/FileOutputStream;
    .end local v12    # "e":Ljava/io/IOException;
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "cos":Ljava/io/FileOutputStream;
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    :catch_24e
    move-exception v12

    .restart local v12    # "e":Ljava/io/IOException;
    move-object v8, v9

    .end local v9    # "cos":Ljava/io/FileOutputStream;
    .local v8, "cos":Ljava/io/FileOutputStream;
    move-object v13, v14

    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_1cb
.end method

.method public setDimensionHints(IILjava/lang/String;)V
    .registers 11
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1233
    const-string/jumbo v4, "android.permission.SET_WALLPAPER_HINTS"

    invoke-direct {p0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 1234
    invoke-virtual {p0, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 1235
    return-void

    .line 1237
    :cond_d
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1238
    :try_start_10
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 1239
    .local v2, "userId":I
    const/4 v4, 0x1

    invoke-direct {p0, v2, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v3

    .line 1240
    .local v3, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-lez p1, :cond_1d

    if-gtz p2, :cond_29

    .line 1241
    :cond_1d
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "width and height must be > 0"

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_26
    .catchall {:try_start_10 .. :try_end_26} :catchall_26

    .line 1237
    .end local v2    # "userId":I
    .end local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_26
    move-exception v4

    monitor-exit v5

    throw v4

    .line 1244
    .restart local v2    # "userId":I
    .restart local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_29
    :try_start_29
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDefaultDisplaySize()Landroid/graphics/Point;

    move-result-object v0

    .line 1245
    .local v0, "displaySize":Landroid/graphics/Point;
    iget v4, v0, Landroid/graphics/Point;->x:I

    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1246
    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-static {p2, v4}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1248
    iget v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    if-ne p1, v4, :cond_41

    iget v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    if-eq p2, v4, :cond_62

    .line 1249
    :cond_41
    iput p1, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    .line 1250
    iput p2, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    .line 1251
    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    .line 1252
    iget v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I
    :try_end_4a
    .catchall {:try_start_29 .. :try_end_4a} :catchall_26

    if-eq v4, v2, :cond_4e

    monitor-exit v5

    return-void

    .line 1253
    :cond_4e
    :try_start_4e
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v4, :cond_62

    .line 1254
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v4, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_56
    .catchall {:try_start_4e .. :try_end_56} :catchall_26

    if-eqz v4, :cond_64

    .line 1256
    :try_start_58
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v4, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v4, p1, p2}, Landroid/service/wallpaper/IWallpaperEngine;->setDesiredSize(II)V
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_5f} :catch_70
    .catchall {:try_start_58 .. :try_end_5f} :catchall_26

    .line 1260
    :goto_5f
    :try_start_5f
    invoke-direct {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_26

    :cond_62
    :goto_62
    monitor-exit v5

    .line 1232
    return-void

    .line 1261
    :cond_64
    :try_start_64
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v4, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    if-eqz v4, :cond_62

    .line 1265
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDimensionsChanged:Z
    :try_end_6f
    .catchall {:try_start_64 .. :try_end_6f} :catchall_26

    goto :goto_62

    .line 1258
    :catch_70
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_5f
.end method

.method public setDisplayPadding(Landroid/graphics/Rect;Ljava/lang/String;)V
    .registers 10
    .param p1, "padding"    # Landroid/graphics/Rect;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 1295
    const-string/jumbo v3, "android.permission.SET_WALLPAPER_HINTS"

    invoke-direct {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 1296
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 1297
    return-void

    .line 1299
    :cond_d
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1300
    :try_start_10
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 1301
    .local v1, "userId":I
    const/4 v3, 0x1

    invoke-direct {p0, v1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v2

    .line 1302
    .local v2, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget v3, p1, Landroid/graphics/Rect;->left:I

    if-ltz v3, :cond_21

    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-gez v3, :cond_3e

    .line 1303
    :cond_21
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "padding must be positive: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3b
    .catchall {:try_start_10 .. :try_end_3b} :catchall_3b

    .line 1299
    .end local v1    # "userId":I
    .end local v2    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_3b
    move-exception v3

    monitor-exit v4

    throw v3

    .line 1302
    .restart local v1    # "userId":I
    .restart local v2    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_3e
    :try_start_3e
    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-ltz v3, :cond_21

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    if-ltz v3, :cond_21

    .line 1306
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_70

    .line 1307
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1308
    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    .line 1309
    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I
    :try_end_58
    .catchall {:try_start_3e .. :try_end_58} :catchall_3b

    if-eq v3, v1, :cond_5c

    monitor-exit v4

    return-void

    .line 1310
    :cond_5c
    :try_start_5c
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v3, :cond_70

    .line 1311
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_64
    .catchall {:try_start_5c .. :try_end_64} :catchall_3b

    if-eqz v3, :cond_72

    .line 1313
    :try_start_66
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v3, p1}, Landroid/service/wallpaper/IWallpaperEngine;->setDisplayPadding(Landroid/graphics/Rect;)V
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_6d} :catch_7e
    .catchall {:try_start_66 .. :try_end_6d} :catchall_3b

    .line 1316
    :goto_6d
    :try_start_6d
    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_3b

    :cond_70
    :goto_70
    monitor-exit v4

    .line 1294
    return-void

    .line 1317
    :cond_72
    :try_start_72
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    if-eqz v3, :cond_70

    .line 1321
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mPaddingChanged:Z
    :try_end_7d
    .catchall {:try_start_72 .. :try_end_7d} :catchall_3b

    goto :goto_70

    .line 1314
    :catch_7e
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_6d
.end method

.method public setLockWallpaperCallback(Landroid/app/IWallpaperManagerCallback;)Z
    .registers 4
    .param p1, "cb"    # Landroid/app/IWallpaperManagerCallback;

    .prologue
    .line 1406
    const-string/jumbo v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 1407
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1408
    :try_start_9
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mKeyguardListener:Landroid/app/IWallpaperManagerCallback;
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_e

    monitor-exit v0

    .line 1410
    const/4 v0, 0x1

    return v0

    .line 1407
    :catchall_e
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setWallpaper(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;I)Landroid/os/ParcelFileDescriptor;
    .registers 23
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "cropHint"    # Landroid/graphics/Rect;
    .param p4, "allowBackup"    # Z
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "which"    # I
    .param p7, "completion"    # Landroid/app/IWallpaperManagerCallback;
    .param p8, "userId"    # I

    .prologue
    .line 1417
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCallingPid()I

    move-result v2

    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCallingUid()I

    move-result v3

    .line 1418
    const-string/jumbo v7, "changing wallpaper"

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    move/from16 v4, p8

    .line 1417
    invoke-static/range {v2 .. v8}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p8

    .line 1419
    const-string/jumbo v2, "android.permission.SET_WALLPAPER"

    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 1421
    and-int/lit8 v2, p6, 0x3

    if-nez v2, :cond_33

    .line 1422
    const-string/jumbo v9, "Must specify a valid wallpaper category to set"

    .line 1423
    .local v9, "msg":Ljava/lang/String;
    const-string/jumbo v2, "WallpaperManagerService"

    const-string/jumbo v3, "Must specify a valid wallpaper category to set"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Must specify a valid wallpaper category to set"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1427
    .end local v9    # "msg":Ljava/lang/String;
    :cond_33
    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_96

    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isSetWallpaperAllowed(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_96

    .line 1432
    if-nez p3, :cond_98

    .line 1433
    new-instance p3, Landroid/graphics/Rect;

    .end local p3    # "cropHint":Landroid/graphics/Rect;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1442
    .restart local p3    # "cropHint":Landroid/graphics/Rect;
    :cond_50
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1450
    const/4 v2, 0x1

    move/from16 v0, p6

    if-ne v0, v2, :cond_67

    :try_start_58
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    move/from16 v0, p8

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_67

    .line 1454
    move/from16 v0, p8

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->migrateSystemToLockWallpaperLocked(I)V

    .line 1457
    :cond_67
    move/from16 v0, p8

    move/from16 v1, p6

    invoke-direct {p0, v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v13

    .line 1458
    .local v13, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_72
    .catchall {:try_start_58 .. :try_end_72} :catchall_cc

    move-result-wide v10

    .line 1460
    .local v10, "ident":J
    :try_start_73
    move-object/from16 v0, p5

    invoke-virtual {p0, p1, v13, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v12

    .line 1461
    .local v12, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v12, :cond_91

    .line 1462
    const/4 v2, 0x1

    iput-boolean v2, v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 1463
    move/from16 v0, p6

    iput v0, v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    .line 1464
    move-object/from16 v0, p7

    iput-object v0, v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setComplete:Landroid/app/IWallpaperManagerCallback;

    .line 1465
    iget-object v2, v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1466
    move/from16 v0, p4

    iput-boolean v0, v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z
    :try_end_91
    .catchall {:try_start_73 .. :try_end_91} :catchall_c7

    .line 1470
    :cond_91
    :try_start_91
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_94
    .catchall {:try_start_91 .. :try_end_94} :catchall_cc

    monitor-exit v3

    .line 1468
    return-object v12

    .line 1428
    .end local v10    # "ident":J
    .end local v12    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v13    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_96
    const/4 v2, 0x0

    return-object v2

    .line 1435
    :cond_98
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a4

    .line 1436
    move-object/from16 v0, p3

    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-gez v2, :cond_c0

    .line 1438
    :cond_a4
    :goto_a4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid crop rect supplied: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1437
    :cond_c0
    move-object/from16 v0, p3

    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-gez v2, :cond_50

    goto :goto_a4

    .line 1469
    .restart local v10    # "ident":J
    .restart local v13    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_c7
    move-exception v2

    .line 1470
    :try_start_c8
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1469
    throw v2
    :try_end_cc
    .catchall {:try_start_c8 .. :try_end_cc} :catchall_cc

    .line 1442
    .end local v10    # "ident":J
    .end local v13    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_cc
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public setWallpaperComponent(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 1552
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperComponent(Landroid/content/ComponentName;I)V

    .line 1551
    return-void
.end method

.method public setWallpaperComponentChecked(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 1544
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isSetWallpaperAllowed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1545
    invoke-direct {p0, p1, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperComponent(Landroid/content/ComponentName;I)V

    .line 1542
    :cond_f
    return-void
.end method

.method public settingsRestored()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 2143
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_12

    .line 2144
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "settingsRestored() can only be called from the system process"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2149
    :cond_12
    const/4 v5, 0x0

    .line 2150
    .local v5, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/4 v7, 0x0

    .line 2151
    .local v7, "success":Z
    iget-object v8, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 2152
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_19
    invoke-direct {p0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    .line 2153
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object v5, v0

    .line 2154
    .local v5, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    move-result v1

    iput v1, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 2155
    const/4 v1, 0x1

    iput-boolean v1, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    .line 2156
    iget-object v1, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_3e

    .line 2157
    iget-object v1, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_93

    .line 2169
    :cond_3e
    const-string/jumbo v1, ""

    iget-object v2, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a9

    .line 2171
    const/4 v7, 0x1

    .line 2178
    .end local v7    # "success":Z
    :goto_4a
    if-eqz v7, :cond_58

    .line 2179
    invoke-direct {p0, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->generateCrop(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 2180
    iget-object v2, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2181
    const/4 v6, 0x0

    move-object v1, p0

    .line 2180
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    :try_end_58
    .catchall {:try_start_19 .. :try_end_58} :catchall_ae

    :cond_58
    :goto_58
    monitor-exit v8

    .line 2186
    if-nez v7, :cond_8a

    .line 2187
    const-string/jumbo v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to restore wallpaper: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2188
    const-string/jumbo v1, ""

    iput-object v1, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 2189
    invoke-static {v9}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 2192
    :cond_8a
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2193
    const/4 v2, 0x0

    :try_start_8e
    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V
    :try_end_91
    .catchall {:try_start_8e .. :try_end_91} :catchall_b1

    monitor-exit v1

    .line 2141
    return-void

    .line 2158
    .restart local v7    # "success":Z
    :cond_93
    :try_start_93
    iget-object v2, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2159
    const/4 v6, 0x0

    move-object v1, p0

    .line 2158
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result v1

    if-nez v1, :cond_a7

    .line 2163
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 2165
    :cond_a7
    const/4 v7, 0x1

    .line 2157
    goto :goto_58

    .line 2174
    :cond_a9
    invoke-virtual {p0, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->restoreNamedResourceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    :try_end_ac
    .catchall {:try_start_93 .. :try_end_ac} :catchall_ae

    move-result v7

    .local v7, "success":Z
    goto :goto_4a

    .line 2151
    .end local v5    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v7    # "success":Z
    :catchall_ae
    move-exception v1

    monitor-exit v8

    throw v1

    .line 2192
    .restart local v5    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_b1
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method stopObserver(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 4
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    const/4 v1, 0x0

    .line 994
    if-eqz p1, :cond_e

    .line 995
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    if-eqz v0, :cond_e

    .line 996
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->stopWatching()V

    .line 997
    iput-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 993
    :cond_e
    return-void
.end method

.method stopObserversLocked(I)V
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->stopObserver(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1004
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->stopObserver(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1005
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1006
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1002
    return-void
.end method

.method switchUser(ILandroid/os/IRemoteCallback;)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "reply"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 1054
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1055
    :try_start_3
    iput p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 1056
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    .line 1058
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    if-nez v1, :cond_1a

    .line 1059
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    iput-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 1060
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->startWatching()V

    .line 1062
    :cond_1a
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1f

    monitor-exit v2

    .line 1053
    return-void

    .line 1054
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_1f
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V
    .registers 14
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p2, "reply"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 1067
    iget-object v10, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1068
    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWaitingForUnlock:Z

    .line 1069
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_36

    .line 1070
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 1071
    .local v1, "cname":Landroid/content/ComponentName;
    :goto_c
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_63

    move-result v0

    if-nez v0, :cond_34

    .line 1074
    const/4 v9, 0x0

    .line 1076
    .local v9, "si":Landroid/content/pm/ServiceInfo;
    :try_start_18
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 1077
    iget v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    const/high16 v3, 0x40000

    .line 1076
    invoke-interface {v0, v1, v3, v2}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_21} :catch_66
    .catchall {:try_start_18 .. :try_end_21} :catchall_63

    move-result-object v9

    .line 1081
    .end local v9    # "si":Landroid/content/pm/ServiceInfo;
    :goto_22
    if-nez v9, :cond_39

    .line 1082
    :try_start_24
    const-string/jumbo v0, "WallpaperManagerService"

    const-string/jumbo v2, "Failure starting previous wallpaper; clearing"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3, v0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZIILandroid/os/IRemoteCallback;)V
    :try_end_34
    .catchall {:try_start_24 .. :try_end_34} :catchall_63

    :cond_34
    :goto_34
    monitor-exit v10

    .line 1066
    return-void

    .line 1070
    .end local v1    # "cname":Landroid/content/ComponentName;
    :cond_36
    :try_start_36
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    .restart local v1    # "cname":Landroid/content/ComponentName;
    goto :goto_c

    .line 1085
    :cond_39
    const-string/jumbo v0, "WallpaperManagerService"

    const-string/jumbo v2, "Wallpaper isn\'t direct boot aware; using fallback until unlocked"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    iput-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 1090
    new-instance v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    .line 1091
    const-string/jumbo v2, "wallpaper_lock_orig"

    const-string/jumbo v3, "wallpaper_lock"

    .line 1090
    invoke-direct {v6, v0, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 1092
    .local v6, "fallback":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    invoke-direct {p0, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1093
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v2, p0

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 1094
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWaitingForUnlock:Z
    :try_end_62
    .catchall {:try_start_36 .. :try_end_62} :catchall_63

    goto :goto_34

    .line 1067
    .end local v1    # "cname":Landroid/content/ComponentName;
    .end local v6    # "fallback":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_63
    move-exception v0

    monitor-exit v10

    throw v0

    .line 1078
    .restart local v1    # "cname":Landroid/content/ComponentName;
    .restart local v9    # "si":Landroid/content/pm/ServiceInfo;
    :catch_66
    move-exception v8

    .local v8, "ignored":Landroid/os/RemoteException;
    goto :goto_22
.end method

.method systemReady()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 908
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 911
    .local v3, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 913
    invoke-virtual {v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropExists()Z

    move-result v4

    if-nez v4, :cond_1c

    .line 917
    invoke-direct {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->generateCrop(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 920
    :cond_1c
    invoke-virtual {v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropExists()Z

    move-result v4

    if-nez v4, :cond_27

    .line 924
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, v6, v4, v6, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZIILandroid/os/IRemoteCallback;)V

    .line 932
    :cond_27
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 933
    .local v2, "userFilter":Landroid/content/IntentFilter;
    const-string/jumbo v4, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 934
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/wallpaper/WallpaperManagerService$1;

    invoke-direct {v5, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$1;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 945
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 946
    .local v1, "shutdownFilter":Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/wallpaper/WallpaperManagerService$2;

    invoke-direct {v5, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$2;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 961
    :try_start_4e
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    .line 962
    new-instance v5, Lcom/android/server/wallpaper/WallpaperManagerService$3;

    invoke-direct {v5, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$3;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    .line 976
    const-string/jumbo v6, "WallpaperManagerService"

    .line 961
    invoke-interface {v4, v5, v6}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_5d} :catch_5e

    .line 906
    :goto_5d
    return-void

    .line 977
    :catch_5e
    move-exception v0

    .line 978
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    goto :goto_5d
.end method

.method updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;
    .registers 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 1509
    if-nez p1, :cond_6

    const-string/jumbo p1, ""

    .line 1511
    :cond_6
    :try_start_6
    iget v3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    .line 1512
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_20

    .line 1513
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 1515
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 1516
    const/16 v4, 0x1f9

    .line 1517
    const/4 v5, -0x1

    const/4 v6, -0x1

    .line 1514
    invoke-static {v3, v4, v5, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1519
    :cond_20
    iget-object v3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    .line 1520
    const/high16 v4, 0x3c000000    # 0.0078125f

    .line 1519
    invoke-static {v3, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 1521
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    iget-object v3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-static {v3}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 1522
    return-object v7

    .line 1524
    :cond_31
    iput-object p1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 1525
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    move-result v3

    iput v3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 1526
    if-eqz p3, :cond_43

    .line 1527
    const-string/jumbo v3, "android.service.wallpaper.extra.ID"

    iget v4, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    invoke-virtual {p3, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_43
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_43} :catch_44

    .line 1533
    :cond_43
    return-object v2

    .line 1534
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_44
    move-exception v1

    .line 1535
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v3, "WallpaperManagerService"

    const-string/jumbo v4, "Error setting wallpaper"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1537
    return-object v7
.end method
