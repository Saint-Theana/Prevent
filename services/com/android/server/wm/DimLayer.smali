.class public Lcom/android/server/wm/DimLayer;
.super Ljava/lang/Object;
.source "DimLayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DimLayer$DimLayerUser;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAlpha:F

.field private final mBounds:Landroid/graphics/Rect;

.field private mDestroyed:Z

.field private mDimSurface:Landroid/view/SurfaceControl;

.field private final mDisplayId:I

.field private mDuration:J

.field private final mLastBounds:Landroid/graphics/Rect;

.field private mLayer:I

.field private final mName:Ljava/lang/String;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mShowing:Z

.field private mStartAlpha:F

.field private mStartTime:J

.field private mTargetAlpha:F

.field private final mUser:Lcom/android/server/wm/DimLayer$DimLayerUser;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const-string/jumbo v0, "WindowManager"

    sput-object v0, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    .line 35
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DimLayer$DimLayerUser;ILjava/lang/String;)V
    .registers 8
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "user"    # Lcom/android/server/wm/DimLayer$DimLayerUser;
    .param p3, "displayId"    # I
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput v1, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DimLayer;->mLastBounds:Landroid/graphics/Rect;

    .line 55
    iput-boolean v2, p0, Lcom/android/server/wm/DimLayer;->mShowing:Z

    .line 58
    iput v1, p0, Lcom/android/server/wm/DimLayer;->mStartAlpha:F

    .line 61
    iput v1, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    .line 69
    iput-boolean v2, p0, Lcom/android/server/wm/DimLayer;->mDestroyed:Z

    .line 90
    iput-object p2, p0, Lcom/android/server/wm/DimLayer;->mUser:Lcom/android/server/wm/DimLayer$DimLayerUser;

    .line 91
    iput p3, p0, Lcom/android/server/wm/DimLayer;->mDisplayId:I

    .line 92
    iput-object p1, p0, Lcom/android/server/wm/DimLayer;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 93
    iput-object p4, p0, Lcom/android/server/wm/DimLayer;->mName:Ljava/lang/String;

    .line 89
    return-void
.end method

.method private adjustAlpha(F)V
    .registers 5
    .param p1, "alpha"    # F

    .prologue
    const/4 v2, 0x0

    .line 166
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_a

    .line 167
    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 169
    :cond_a
    cmpl-float v1, p1, v2

    if-nez v1, :cond_1f

    iget-boolean v1, p0, Lcom/android/server/wm/DimLayer;->mShowing:Z

    if-eqz v1, :cond_1f

    .line 171
    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_1e

    .line 172
    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->hide()V

    .line 173
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/DimLayer;->mShowing:Z

    .line 163
    :cond_1e
    :goto_1e
    return-void

    .line 175
    :cond_1f
    cmpl-float v1, p1, v2

    if-lez v1, :cond_1e

    iget-boolean v1, p0, Lcom/android/server/wm/DimLayer;->mShowing:Z

    if-nez v1, :cond_1e

    .line 177
    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_1e

    .line 178
    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->show()V

    .line 179
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/DimLayer;->mShowing:Z
    :try_end_33
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_33} :catch_34

    goto :goto_1e

    .line 182
    :catch_34
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v1, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failure setting alpha immediately"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e
.end method

.method private adjustBounds()V
    .registers 4

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mUser:Lcom/android/server/wm/DimLayer$DimLayerUser;

    invoke-interface {v0}, Lcom/android/server/wm/DimLayer$DimLayerUser;->dimFullscreen()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 192
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/wm/DimLayer;->getBoundsForFullscreen(Landroid/graphics/Rect;)V

    .line 195
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_42

    .line 196
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mLastBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 197
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 198
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setSize(II)V

    .line 201
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mLastBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 190
    :cond_42
    return-void
.end method

.method private adjustLayer(I)V
    .registers 3
    .param p1, "layer"    # I

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_9

    .line 147
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 145
    :cond_9
    return-void
.end method

.method private constructSurface(Lcom/android/server/wm/WindowManagerService;)V
    .registers 10
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 98
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 106
    :try_start_3
    new-instance v0, Landroid/view/SurfaceControl;

    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    iget-object v2, p0, Lcom/android/server/wm/DimLayer;->mName:Ljava/lang/String;

    .line 107
    const/16 v3, 0x10

    const/16 v4, 0x10

    const/4 v5, -0x1

    .line 108
    const v6, 0x20004

    .line 106
    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    .line 112
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/server/wm/DimLayer;->mDisplayId:I

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 113
    invoke-direct {p0}, Lcom/android/server/wm/DimLayer;->adjustBounds()V

    .line 114
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    invoke-direct {p0, v0}, Lcom/android/server/wm/DimLayer;->adjustAlpha(F)V

    .line 115
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    invoke-direct {p0, v0}, Lcom/android/server/wm/DimLayer;->adjustLayer(I)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2a} :catch_2e
    .catchall {:try_start_3 .. :try_end_2a} :catchall_3c

    .line 119
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 97
    :goto_2d
    return-void

    .line 116
    :catch_2e
    move-exception v7

    .line 117
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2f
    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "Exception creating Dim surface"

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_3c

    .line 119
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto :goto_2d

    .line 118
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_3c
    move-exception v0

    .line 119
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 118
    throw v0
.end method

.method private durationEndsEarlier(J)Z
    .registers 10
    .param p1, "duration"    # J

    .prologue
    .line 246
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    iget-wide v2, p0, Lcom/android/server/wm/DimLayer;->mStartTime:J

    iget-wide v4, p0, Lcom/android/server/wm/DimLayer;->mDuration:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private getBoundsForFullscreen(Landroid/graphics/Rect;)V
    .registers 12
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    .line 210
    iget-object v5, p0, Lcom/android/server/wm/DimLayer;->mUser:Lcom/android/server/wm/DimLayer$DimLayerUser;

    invoke-interface {v5}, Lcom/android/server/wm/DimLayer$DimLayerUser;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    .line 213
    .local v2, "info":Landroid/view/DisplayInfo;
    iget v5, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-double v6, v5

    mul-double/2addr v6, v8

    double-to-int v1, v6

    .line 214
    .local v1, "dw":I
    iget v5, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-double v6, v5

    mul-double/2addr v6, v8

    double-to-int v0, v6

    .line 216
    .local v0, "dh":I
    mul-int/lit8 v5, v1, -0x1

    div-int/lit8 v5, v5, 0x6

    int-to-float v3, v5

    .line 217
    .local v3, "xPos":F
    mul-int/lit8 v5, v0, -0x1

    div-int/lit8 v5, v5, 0x6

    int-to-float v4, v5

    .line 218
    .local v4, "yPos":F
    float-to-int v5, v3

    float-to-int v6, v4

    float-to-int v7, v3

    add-int/2addr v7, v1

    float-to-int v8, v4

    add-int/2addr v8, v0

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 206
    return-void
.end method

.method private setAlpha(F)V
    .registers 3
    .param p1, "alpha"    # F

    .prologue
    .line 156
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_7

    .line 157
    return-void

    .line 159
    :cond_7
    iput p1, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    .line 160
    invoke-direct {p0, p1}, Lcom/android/server/wm/DimLayer;->adjustAlpha(F)V

    .line 155
    return-void
.end method


# virtual methods
.method destroySurface()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 358
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_c

    .line 359
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 360
    iput-object v1, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    .line 362
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DimLayer;->mDestroyed:Z

    .line 356
    return-void
.end method

.method getLayer()I
    .registers 2

    .prologue
    .line 152
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    return v0
.end method

.method getTargetAlpha()F
    .registers 2

    .prologue
    .line 134
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    return v0
.end method

.method hide()V
    .registers 3

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/android/server/wm/DimLayer;->mShowing:Z

    if-eqz v0, :cond_9

    .line 309
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DimLayer;->hide(J)V

    .line 306
    :cond_9
    return-void
.end method

.method hide(J)V
    .registers 6
    .param p1, "duration"    # J

    .prologue
    const/4 v1, 0x0

    .line 320
    iget-boolean v0, p0, Lcom/android/server/wm/DimLayer;->mShowing:Z

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_11

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DimLayer;->durationEndsEarlier(J)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 322
    :cond_11
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/wm/DimLayer;->show(IFJ)V

    .line 319
    :cond_16
    return-void
.end method

.method isAnimating()Z
    .registers 3

    .prologue
    .line 130
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    iget v1, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method isDimming()Z
    .registers 3

    .prologue
    .line 125
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 366
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDimSurface="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 367
    const-string/jumbo v0, " mLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 368
    const-string/jumbo v0, " mAlpha="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 369
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLastBounds="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mLastBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 370
    const-string/jumbo v0, " mBounds="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 371
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Last animation: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 372
    const-string/jumbo v0, " mDuration="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/wm/DimLayer;->mDuration:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 373
    const-string/jumbo v0, " mStartTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/wm/DimLayer;->mStartTime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 374
    const-string/jumbo v0, " curTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 375
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, " mStartAlpha="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimLayer;->mStartAlpha:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 376
    const-string/jumbo v0, " mTargetAlpha="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 365
    return-void
.end method

.method setBounds(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 228
    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 229
    invoke-virtual {p0}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mLastBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 227
    :cond_13
    :goto_13
    return-void

    .line 231
    :cond_14
    :try_start_14
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 232
    invoke-direct {p0}, Lcom/android/server/wm/DimLayer;->adjustBounds()V
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_1a} :catch_1e
    .catchall {:try_start_14 .. :try_end_1a} :catchall_2b

    .line 236
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto :goto_13

    .line 233
    :catch_1e
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_1f
    sget-object v1, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failure setting size"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_2b

    .line 236
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto :goto_13

    .line 235
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_2b
    move-exception v1

    .line 236
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 235
    throw v1
.end method

.method setBoundsForFullscreen()V
    .registers 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/wm/DimLayer;->getBoundsForFullscreen(Landroid/graphics/Rect;)V

    .line 223
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    .line 221
    return-void
.end method

.method setLayer(I)V
    .registers 3
    .param p1, "layer"    # I

    .prologue
    .line 138
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    if-ne v0, p1, :cond_5

    .line 139
    return-void

    .line 141
    :cond_5
    iput p1, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    .line 142
    invoke-direct {p0, p1}, Lcom/android/server/wm/DimLayer;->adjustLayer(I)V

    .line 137
    return-void
.end method

.method show()V
    .registers 5

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/android/server/wm/DimLayer;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 254
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    iget v1, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/wm/DimLayer;->show(IFJ)V

    .line 251
    :cond_f
    return-void
.end method

.method show(IFJ)V
    .registers 12
    .param p1, "layer"    # I
    .param p2, "alpha"    # F
    .param p3, "duration"    # J

    .prologue
    const/4 v5, 0x0

    .line 269
    iget-boolean v1, p0, Lcom/android/server/wm/DimLayer;->mDestroyed:Z

    if-eqz v1, :cond_12

    .line 270
    sget-object v1, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "show: no Surface"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iput v5, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    iput v5, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    .line 273
    return-void

    .line 276
    :cond_12
    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    if-nez v1, :cond_1b

    .line 277
    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0, v1}, Lcom/android/server/wm/DimLayer;->constructSurface(Lcom/android/server/wm/WindowManagerService;)V

    .line 280
    :cond_1b
    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mLastBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 281
    invoke-direct {p0}, Lcom/android/server/wm/DimLayer;->adjustBounds()V

    .line 283
    :cond_28
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DimLayer;->setLayer(I)V

    .line 285
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 286
    .local v2, "curTime":J
    invoke-virtual {p0}, Lcom/android/server/wm/DimLayer;->isAnimating()Z

    move-result v0

    .line 287
    .local v0, "animating":Z
    if-eqz v0, :cond_41

    iget v1, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    cmpl-float v1, v1, p2

    if-nez v1, :cond_49

    invoke-direct {p0, p3, p4}, Lcom/android/server/wm/DimLayer;->durationEndsEarlier(J)Z

    move-result v1

    if-nez v1, :cond_49

    .line 288
    :cond_41
    if-nez v0, :cond_52

    iget v1, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    cmpl-float v1, v1, p2

    if-eqz v1, :cond_52

    .line 289
    :cond_49
    const-wide/16 v4, 0x0

    cmp-long v1, p3, v4

    if-gtz v1, :cond_55

    .line 291
    invoke-direct {p0, p2}, Lcom/android/server/wm/DimLayer;->setAlpha(F)V

    .line 299
    :cond_52
    :goto_52
    iput p2, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    .line 266
    return-void

    .line 294
    :cond_55
    iget v1, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    iput v1, p0, Lcom/android/server/wm/DimLayer;->mStartAlpha:F

    .line 295
    iput-wide v2, p0, Lcom/android/server/wm/DimLayer;->mStartTime:J

    .line 296
    iput-wide p3, p0, Lcom/android/server/wm/DimLayer;->mDuration:J

    goto :goto_52
.end method

.method stepAnimation()Z
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 333
    iget-boolean v4, p0, Lcom/android/server/wm/DimLayer;->mDestroyed:Z

    if-eqz v4, :cond_13

    .line 334
    sget-object v4, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "stepAnimation: surface destroyed"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iput v8, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    iput v8, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    .line 337
    const/4 v4, 0x0

    return v4

    .line 339
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/wm/DimLayer;->isAnimating()Z

    move-result v4

    if-eqz v4, :cond_40

    .line 340
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 341
    .local v2, "curTime":J
    iget v4, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    iget v5, p0, Lcom/android/server/wm/DimLayer;->mStartAlpha:F

    sub-float v1, v4, v5

    .line 342
    .local v1, "alphaDelta":F
    iget v4, p0, Lcom/android/server/wm/DimLayer;->mStartAlpha:F

    iget-wide v6, p0, Lcom/android/server/wm/DimLayer;->mStartTime:J

    sub-long v6, v2, v6

    long-to-float v5, v6

    mul-float/2addr v5, v1

    iget-wide v6, p0, Lcom/android/server/wm/DimLayer;->mDuration:J

    long-to-float v6, v6

    div-float/2addr v5, v6

    add-float v0, v4, v5

    .line 343
    .local v0, "alpha":F
    cmpl-float v4, v1, v8

    if-lez v4, :cond_45

    iget v4, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    cmpl-float v4, v0, v4

    if-lez v4, :cond_45

    .line 346
    :goto_3b
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    .line 349
    :cond_3d
    invoke-direct {p0, v0}, Lcom/android/server/wm/DimLayer;->setAlpha(F)V

    .line 352
    .end local v0    # "alpha":F
    .end local v1    # "alphaDelta":F
    .end local v2    # "curTime":J
    :cond_40
    invoke-virtual {p0}, Lcom/android/server/wm/DimLayer;->isAnimating()Z

    move-result v4

    return v4

    .line 344
    .restart local v0    # "alpha":F
    .restart local v1    # "alphaDelta":F
    .restart local v2    # "curTime":J
    :cond_45
    cmpg-float v4, v1, v8

    if-gez v4, :cond_3d

    iget v4, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    cmpg-float v4, v0, v4

    if-gez v4, :cond_3d

    goto :goto_3b
.end method
