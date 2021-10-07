.class final Lcom/android/server/wm/SingleHandWindow;
.super Ljava/lang/Object;
.source "SingleHandWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/SingleHandWindow$1;,
        Lcom/android/server/wm/SingleHandWindow$2;,
        Lcom/android/server/wm/SingleHandWindow$3;,
        Lcom/android/server/wm/SingleHandWindow$4;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final HINT_INFO_TAG:Ljava/lang/String; = "hint_info"

.field private static final INITIAL_SCALE:F = 0.75f

.field private static final MAX_SCALE:F = 1.0f

.field private static final MIN_SCALE:F = 0.3f

.field private static final SINGLE_HAND_MODE_HINT_SHOWN:Ljava/lang/String; = "single_hand_mode_hint_shown"

.field private static final TAG:Ljava/lang/String; = "SingleHandWindow"

.field private static final WINDOW_ALPHA:F = 1.0f

.field private static final WINDOW_BG_TAG:Ljava/lang/String; = "other_area"

.field private static final YES:Ljava/lang/String; = "yes"


# instance fields
.field private mActionClickListener:Landroid/view/View$OnClickListener;

.field private mAttachedToWindow:Z

.field private mConfiguration:Landroid/content/res/Configuration;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultDisplay:Landroid/view/Display;

.field private mDefaultDisplayInfo:Landroid/view/DisplayInfo;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mHeightScale:F

.field private mImageView:Landroid/widget/ImageView;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsBlurTopWindow:Z

.field private mIsNeedRelayout:Z

.field private mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field private final mLeft:Z

.field private final mName:Ljava/lang/String;

.field private final mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mPointDownOuter:Z

.field private mPreDisplayInfo:Landroid/view/DisplayInfo;

.field private mRelateViewbottom:Landroid/widget/RelativeLayout;

.field private mRelateViewtop:Landroid/widget/RelativeLayout;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mTitleTextView:Landroid/widget/TextView;

.field private mWidth:I

.field private mWidthScale:F

.field private mWindowContent:Landroid/view/View;

.field private final mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowVisible:Z

.field private overlay_display_window:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/android/server/wm/SingleHandWindow;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wm/SingleHandWindow;)Landroid/view/Display;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mDefaultDisplay:Landroid/view/Display;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wm/SingleHandWindow;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/wm/SingleHandWindow;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/SingleHandWindow;->mIsNeedRelayout:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/wm/SingleHandWindow;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/SingleHandWindow;->mPointDownOuter:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/wm/SingleHandWindow;)Lcom/android/server/wm/WindowManagerService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/wm/SingleHandWindow;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowContent:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/wm/SingleHandWindow;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/SingleHandWindow;->mPointDownOuter:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wm/SingleHandWindow;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/wm/SingleHandWindow;->updateDefaultDisplayInfo()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wm/SingleHandWindow;Z)V
    .registers 2
    .param p1, "visible"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wm/SingleHandWindow;->showHint(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;IILcom/android/server/wm/WindowManagerService;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "left"    # Z
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v1, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    .line 82
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mConfiguration:Landroid/content/res/Configuration;

    .line 84
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mPreDisplayInfo:Landroid/view/DisplayInfo;

    .line 107
    iput-boolean v1, p0, Lcom/android/server/wm/SingleHandWindow;->mPointDownOuter:Z

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->overlay_display_window:Landroid/widget/TextView;

    .line 110
    iput-boolean v1, p0, Lcom/android/server/wm/SingleHandWindow;->mAttachedToWindow:Z

    .line 111
    iput-boolean v1, p0, Lcom/android/server/wm/SingleHandWindow;->mIsNeedRelayout:Z

    .line 112
    iput-boolean v1, p0, Lcom/android/server/wm/SingleHandWindow;->mIsBlurTopWindow:Z

    .line 221
    new-instance v0, Lcom/android/server/wm/SingleHandWindow$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/SingleHandWindow$1;-><init>(Lcom/android/server/wm/SingleHandWindow;)V

    iput-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 285
    new-instance v0, Lcom/android/server/wm/SingleHandWindow$2;

    invoke-direct {v0, p0}, Lcom/android/server/wm/SingleHandWindow$2;-><init>(Lcom/android/server/wm/SingleHandWindow;)V

    .line 284
    iput-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 494
    new-instance v0, Lcom/android/server/wm/SingleHandWindow$3;

    invoke-direct {v0, p0}, Lcom/android/server/wm/SingleHandWindow$3;-><init>(Lcom/android/server/wm/SingleHandWindow;)V

    iput-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 533
    new-instance v0, Lcom/android/server/wm/SingleHandWindow$4;

    invoke-direct {v0, p0}, Lcom/android/server/wm/SingleHandWindow$4;-><init>(Lcom/android/server/wm/SingleHandWindow;)V

    iput-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mActionClickListener:Landroid/view/View$OnClickListener;

    .line 115
    iput-object p1, p0, Lcom/android/server/wm/SingleHandWindow;->mContext:Landroid/content/Context;

    .line 116
    iput-object p3, p0, Lcom/android/server/wm/SingleHandWindow;->mName:Ljava/lang/String;

    .line 117
    iput p4, p0, Lcom/android/server/wm/SingleHandWindow;->mWidth:I

    .line 118
    iput p5, p0, Lcom/android/server/wm/SingleHandWindow;->mHeight:I

    .line 119
    iput-boolean p2, p0, Lcom/android/server/wm/SingleHandWindow;->mLeft:Z

    .line 120
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mHandler:Landroid/os/Handler;

    .line 122
    const-string/jumbo v0, "window"

    .line 121
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 124
    const-string/jumbo v0, "display"

    .line 123
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 125
    iput-object p6, p0, Lcom/android/server/wm/SingleHandWindow;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 126
    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mDefaultDisplay:Landroid/view/Display;

    .line 127
    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    .line 128
    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mConfiguration:Landroid/content/res/Configuration;

    .line 129
    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mPreDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 130
    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mName:Ljava/lang/String;

    const-string/jumbo v1, "blurpaper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/SingleHandWindow;->mIsBlurTopWindow:Z

    .line 132
    invoke-direct {p0}, Lcom/android/server/wm/SingleHandWindow;->createWindow()V

    .line 114
    :cond_9d
    return-void
.end method

.method private createWindow()V
    .registers 15

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    .line 327
    iget-object v7, p0, Lcom/android/server/wm/SingleHandWindow;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 332
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x10900e9

    .line 331
    invoke-virtual {v4, v7, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowContent:Landroid/view/View;

    .line 334
    invoke-virtual {p0}, Lcom/android/server/wm/SingleHandWindow;->isSingleHandModeHintShown()Z

    move-result v3

    .line 336
    .local v3, "hintShown":Z
    iget-boolean v7, p0, Lcom/android/server/wm/SingleHandWindow;->mAttachedToWindow:Z

    if-nez v7, :cond_38

    .line 337
    iput-boolean v9, p0, Lcom/android/server/wm/SingleHandWindow;->mAttachedToWindow:Z

    .line 338
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 339
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v7, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 340
    const-string/jumbo v7, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 341
    iget-object v7, p0, Lcom/android/server/wm/SingleHandWindow;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/wm/SingleHandWindow;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v11, p0, Lcom/android/server/wm/SingleHandWindow;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v10, v2, v12, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 344
    .end local v2    # "filter":Landroid/content/IntentFilter;
    :cond_38
    iget-boolean v7, p0, Lcom/android/server/wm/SingleHandWindow;->mIsBlurTopWindow:Z

    if-eqz v7, :cond_e2

    .line 345
    sget-object v10, Lcom/android/server/wm/SingleHandAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 346
    :try_start_3f
    iget-object v7, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowContent:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 347
    iget-object v7, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowContent:Landroid/view/View;

    .line 348
    const v11, 0x1020413

    .line 347
    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lcom/android/server/wm/SingleHandWindow;->mRelateViewtop:Landroid/widget/RelativeLayout;

    .line 349
    iget-object v7, p0, Lcom/android/server/wm/SingleHandWindow;->mRelateViewtop:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/wm/SingleHandWindow;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 350
    iget-object v7, p0, Lcom/android/server/wm/SingleHandWindow;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget-object v11, p0, Lcom/android/server/wm/SingleHandWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v11, v11, Landroid/view/DisplayInfo;->logicalHeight:I

    div-int/lit8 v11, v11, 0x4

    iput v11, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 351
    iget-object v7, p0, Lcom/android/server/wm/SingleHandWindow;->mRelateViewtop:Landroid/widget/RelativeLayout;

    iget-object v11, p0, Lcom/android/server/wm/SingleHandWindow;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v7, v11}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 352
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/android/server/wm/SingleHandWindow;->cropwallpaper(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 353
    .local v0, "bg":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_82

    .line 354
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v7, p0, Lcom/android/server/wm/SingleHandWindow;->mRelateViewtop:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v5, v7, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 355
    .local v5, "mDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, Lcom/android/server/wm/SingleHandWindow;->mRelateViewtop:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v5}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 358
    .end local v5    # "mDrawable":Landroid/graphics/drawable/Drawable;
    :cond_82
    iget-object v7, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowContent:Landroid/view/View;

    .line 359
    const v11, 0x1020418

    .line 358
    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lcom/android/server/wm/SingleHandWindow;->mRelateViewbottom:Landroid/widget/RelativeLayout;

    .line 360
    iget-object v7, p0, Lcom/android/server/wm/SingleHandWindow;->mRelateViewbottom:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/wm/SingleHandWindow;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 361
    iget-object v7, p0, Lcom/android/server/wm/SingleHandWindow;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget-object v11, p0, Lcom/android/server/wm/SingleHandWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v11, v11, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v11, v11, 0x3

    div-int/lit8 v11, v11, 0x4

    iput v11, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 362
    iget-object v7, p0, Lcom/android/server/wm/SingleHandWindow;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget-object v11, p0, Lcom/android/server/wm/SingleHandWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v11, v11, Landroid/view/DisplayInfo;->logicalWidth:I

    div-int/lit8 v11, v11, 0x4

    iput v11, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 363
    iget-boolean v7, p0, Lcom/android/server/wm/SingleHandWindow;->mLeft:Z

    if-eqz v7, :cond_11b

    .line 364
    iget-object v7, p0, Lcom/android/server/wm/SingleHandWindow;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v11, 0xb

    invoke-virtual {v7, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 367
    :goto_ba
    iget-object v7, p0, Lcom/android/server/wm/SingleHandWindow;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v11, 0xc

    invoke-virtual {v7, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 368
    iget-object v7, p0, Lcom/android/server/wm/SingleHandWindow;->mRelateViewbottom:Landroid/widget/RelativeLayout;

    iget-object v11, p0, Lcom/android/server/wm/SingleHandWindow;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v7, v11}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 369
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/server/wm/SingleHandWindow;->cropwallpaper(Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 370
    .local v1, "bg1":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_e1

    .line 371
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v7, p0, Lcom/android/server/wm/SingleHandWindow;->mRelateViewbottom:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 372
    .local v6, "mDrawable1":Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, Lcom/android/server/wm/SingleHandWindow;->mRelateViewbottom:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v6}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_e1
    .catchall {:try_start_3f .. :try_end_e1} :catchall_125

    .end local v6    # "mDrawable1":Landroid/graphics/drawable/Drawable;
    :cond_e1
    monitor-exit v10

    .line 377
    .end local v0    # "bg":Landroid/graphics/Bitmap;
    .end local v1    # "bg1":Landroid/graphics/Bitmap;
    :cond_e2
    new-instance v7, Landroid/view/WindowManager$LayoutParams;

    .line 378
    const/16 v10, 0x7ea

    .line 377
    invoke-direct {v7, v10}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    iput-object v7, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 379
    iget-object v7, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v10, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v11, 0x1000328

    or-int/2addr v10, v11

    iput v10, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 384
    iget-object v7, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v10, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v10, v10, 0x2

    iput v10, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 386
    iget-object v7, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v13, v7, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 387
    iget-object v7, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v10, 0x33

    iput v10, v7, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 388
    iget-object v7, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v10, -0x3

    iput v10, v7, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 390
    iget-boolean v7, p0, Lcom/android/server/wm/SingleHandWindow;->mIsBlurTopWindow:Z

    if-eqz v7, :cond_11a

    .line 391
    if-eqz v3, :cond_128

    move v7, v8

    :goto_113
    invoke-direct {p0, v7}, Lcom/android/server/wm/SingleHandWindow;->showHint(Z)V

    .line 392
    iput v13, p0, Lcom/android/server/wm/SingleHandWindow;->mWidthScale:F

    .line 393
    iput v13, p0, Lcom/android/server/wm/SingleHandWindow;->mHeightScale:F

    .line 326
    :cond_11a
    return-void

    .line 366
    .restart local v0    # "bg":Landroid/graphics/Bitmap;
    :cond_11b
    :try_start_11b
    iget-object v7, p0, Lcom/android/server/wm/SingleHandWindow;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v11, 0x9

    invoke-virtual {v7, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V
    :try_end_124
    .catchall {:try_start_11b .. :try_end_124} :catchall_125

    goto :goto_ba

    .line 345
    .end local v0    # "bg":Landroid/graphics/Bitmap;
    :catchall_125
    move-exception v7

    monitor-exit v10

    throw v7

    :cond_128
    move v7, v9

    .line 391
    goto :goto_113
.end method

.method private cropwallpaper(Z)Landroid/graphics/Bitmap;
    .registers 11
    .param p1, "isTop"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    const/high16 v6, 0x3e800000    # 0.25f

    const/high16 v8, 0x3f400000    # 0.75f

    .line 203
    sget-object v3, Lcom/android/server/wm/SingleHandAdapter;->scaleWallpaper:Landroid/graphics/Bitmap;

    if-nez v3, :cond_b

    .line 204
    return-object v4

    .line 206
    :cond_b
    sget-object v3, Lcom/android/server/wm/SingleHandAdapter;->scaleWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 207
    .local v2, "w":I
    sget-object v3, Lcom/android/server/wm/SingleHandAdapter;->scaleWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 209
    .local v1, "h":I
    if-eqz p1, :cond_23

    .line 210
    sget-object v3, Lcom/android/server/wm/SingleHandAdapter;->scaleWallpaper:Landroid/graphics/Bitmap;

    int-to-float v4, v1

    mul-float/2addr v4, v6

    float-to-int v4, v4

    invoke-static {v3, v7, v7, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 218
    .local v0, "crop":Landroid/graphics/Bitmap;
    :goto_22
    return-object v0

    .line 212
    .end local v0    # "crop":Landroid/graphics/Bitmap;
    :cond_23
    iget-boolean v3, p0, Lcom/android/server/wm/SingleHandWindow;->mLeft:Z

    if-eqz v3, :cond_3c

    .line 213
    sget-object v3, Lcom/android/server/wm/SingleHandAdapter;->scaleWallpaper:Landroid/graphics/Bitmap;

    int-to-float v4, v2

    mul-float/2addr v4, v8

    float-to-int v4, v4

    int-to-float v5, v1

    mul-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v6, v2

    int-to-float v7, v2

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    float-to-int v6, v6

    int-to-float v7, v1

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-static {v3, v4, v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "crop":Landroid/graphics/Bitmap;
    goto :goto_22

    .line 215
    .end local v0    # "crop":Landroid/graphics/Bitmap;
    :cond_3c
    sget-object v3, Lcom/android/server/wm/SingleHandAdapter;->scaleWallpaper:Landroid/graphics/Bitmap;

    int-to-float v4, v1

    mul-float/2addr v4, v6

    float-to-int v4, v4

    int-to-float v5, v2

    int-to-float v6, v2

    mul-float/2addr v6, v8

    sub-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v6, v1

    mul-float/2addr v6, v8

    float-to-int v6, v6

    invoke-static {v3, v7, v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "crop":Landroid/graphics/Bitmap;
    goto :goto_22
.end method

.method private show(Landroid/view/View;Z)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "visible"    # Z

    .prologue
    .line 418
    if-eqz p1, :cond_8

    .line 419
    if-eqz p2, :cond_9

    .line 420
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 417
    :cond_8
    :goto_8
    return-void

    .line 422
    :cond_9
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8
.end method

.method private showHint(Z)V
    .registers 7
    .param p1, "visible"    # Z

    .prologue
    const/4 v3, 0x0

    .line 430
    iget-object v2, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowContent:Landroid/view/View;

    const v4, 0x1020415

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/server/wm/SingleHandWindow;->mImageView:Landroid/widget/ImageView;

    .line 431
    iget-object v2, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowContent:Landroid/view/View;

    const v4, 0x1020414

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 432
    .local v1, "layout":Landroid/widget/FrameLayout;
    new-instance v2, Lcom/android/server/wm/SingleHandWindow$6;

    invoke-direct {v2, p0}, Lcom/android/server/wm/SingleHandWindow$6;-><init>(Lcom/android/server/wm/SingleHandWindow;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    if-nez p1, :cond_2e

    iget-object v2, p0, Lcom/android/server/wm/SingleHandWindow;->mImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_2e

    .line 439
    iget-object v2, p0, Lcom/android/server/wm/SingleHandWindow;->mImageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/server/wm/SingleHandWindow;->mActionClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 441
    :cond_2e
    iget-object v4, p0, Lcom/android/server/wm/SingleHandWindow;->mImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_75

    move v2, v3

    :goto_33
    invoke-direct {p0, v4, v2}, Lcom/android/server/wm/SingleHandWindow;->show(Landroid/view/View;Z)V

    .line 444
    if-nez p1, :cond_77

    .line 445
    iget-object v2, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowContent:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 451
    :goto_3d
    iget-object v2, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowContent:Landroid/view/View;

    const v3, 0x1020416

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/server/wm/SingleHandWindow;->overlay_display_window:Landroid/widget/TextView;

    .line 452
    iget-object v2, p0, Lcom/android/server/wm/SingleHandWindow;->overlay_display_window:Landroid/widget/TextView;

    invoke-direct {p0, v2, p1}, Lcom/android/server/wm/SingleHandWindow;->show(Landroid/view/View;Z)V

    .line 454
    iget-object v2, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowContent:Landroid/view/View;

    const v3, 0x1020417

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 456
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/SingleHandWindow;->show(Landroid/view/View;Z)V

    .line 459
    if-eqz p1, :cond_7f

    .line 460
    iget-object v2, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v3, "SingleMode_windowbg_hint"

    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 468
    :goto_67
    iget-boolean v2, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowVisible:Z

    if-eqz v2, :cond_74

    .line 469
    iget-object v2, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowContent:Landroid/view/View;

    iget-object v4, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 427
    :cond_74
    return-void

    .line 441
    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_75
    const/4 v2, 0x1

    goto :goto_33

    .line 447
    :cond_77
    iget-object v2, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowContent:Landroid/view/View;

    const/high16 v3, -0x67000000

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_3d

    .line 462
    .restart local v0    # "imageView":Landroid/widget/ImageView;
    :cond_7f
    iget-boolean v2, p0, Lcom/android/server/wm/SingleHandWindow;->mLeft:Z

    if-eqz v2, :cond_8c

    .line 463
    iget-object v2, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v3, "SingleMode_windowbg_left"

    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_67

    .line 465
    :cond_8c
    iget-object v2, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v3, "SingleMode_windowbg_right"

    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_67
.end method

.method private updateDefaultDisplayInfo()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 260
    const/4 v0, 0x0

    .line 261
    .local v0, "value":Z
    iput-boolean v3, p0, Lcom/android/server/wm/SingleHandWindow;->mIsNeedRelayout:Z

    .line 262
    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mDefaultDisplay:Landroid/view/Display;

    iget-object v2, p0, Lcom/android/server/wm/SingleHandWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    move-result v0

    .line 263
    .local v0, "value":Z
    if-nez v0, :cond_19

    .line 264
    const-string/jumbo v1, "SingleHandWindow"

    const-string/jumbo v2, "Cannot show overlay display because there is no default display upon which to show it."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return v3

    .line 268
    :cond_19
    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mPreDisplayInfo:Landroid/view/DisplayInfo;

    if-nez v1, :cond_1e

    .line 269
    return v3

    .line 271
    :cond_1e
    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mPreDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, p0, Lcom/android/server/wm/SingleHandWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1, v2}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;)Z

    move-result v1

    if-nez v1, :cond_5f

    .line 272
    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/wm/SingleHandWindow;->mPreDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/server/wm/SingleHandWindow;->mWidthScale:F

    .line 273
    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/wm/SingleHandWindow;->mPreDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/server/wm/SingleHandWindow;->mHeightScale:F

    .line 274
    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v2, p0, Lcom/android/server/wm/SingleHandWindow;->mPreDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    if-ne v1, v2, :cond_56

    .line 275
    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v2, p0, Lcom/android/server/wm/SingleHandWindow;->mPreDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    if-eq v1, v2, :cond_60

    .line 278
    :cond_56
    :goto_56
    iput-boolean v4, p0, Lcom/android/server/wm/SingleHandWindow;->mIsNeedRelayout:Z

    .line 279
    :cond_58
    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mPreDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, p0, Lcom/android/server/wm/SingleHandWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1, v2}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 281
    :cond_5f
    return v4

    .line 276
    :cond_60
    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iget-object v2, p0, Lcom/android/server/wm/SingleHandWindow;->mPreDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    if-eq v1, v2, :cond_58

    goto :goto_56
.end method

.method private updateWindowParams()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 398
    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 399
    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 400
    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 401
    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 403
    iget v0, p0, Lcom/android/server/wm/SingleHandWindow;->mWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/wm/SingleHandWindow;->mWidthScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/wm/SingleHandWindow;->mWidth:I

    .line 404
    iget v0, p0, Lcom/android/server/wm/SingleHandWindow;->mHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/wm/SingleHandWindow;->mHeightScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/wm/SingleHandWindow;->mHeight:I

    .line 397
    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 166
    iget-boolean v0, p0, Lcom/android/server/wm/SingleHandWindow;->mAttachedToWindow:Z

    if-eqz v0, :cond_e

    .line 167
    iput-boolean v4, p0, Lcom/android/server/wm/SingleHandWindow;->mAttachedToWindow:Z

    .line 168
    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 170
    :cond_e
    iget-boolean v0, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowVisible:Z

    if-eqz v0, :cond_37

    .line 171
    invoke-direct {p0}, Lcom/android/server/wm/SingleHandWindow;->updateDefaultDisplayInfo()Z

    move-result v0

    if-nez v0, :cond_20

    .line 172
    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 173
    return-void

    .line 175
    :cond_20
    iget-boolean v0, p0, Lcom/android/server/wm/SingleHandWindow;->mIsBlurTopWindow:Z

    if-nez v0, :cond_38

    .line 176
    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/SingleHandWindow$5;

    invoke-direct {v1, p0}, Lcom/android/server/wm/SingleHandWindow$5;-><init>(Lcom/android/server/wm/SingleHandWindow;)V

    .line 180
    const-wide/16 v2, 0x64

    .line 176
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 181
    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowManagerService;->setSingleHandMode(I)V

    .line 185
    :goto_35
    iput-boolean v4, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowVisible:Z

    .line 165
    :cond_37
    return-void

    .line 183
    :cond_38
    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowContent:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    goto :goto_35
.end method

.method isSingleHandModeHintShown()Z
    .registers 4

    .prologue
    .line 408
    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 409
    const-string/jumbo v2, "single_hand_mode_hint_shown"

    .line 408
    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_1a

    const-string/jumbo v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 413
    const/4 v1, 0x1

    return v1

    .line 411
    :cond_1a
    const/4 v1, 0x0

    return v1
.end method

.method public onBlurWallpaperChanged()V
    .registers 7

    .prologue
    .line 544
    iget-object v4, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowContent:Landroid/view/View;

    .line 545
    const v5, 0x1020413

    .line 544
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/android/server/wm/SingleHandWindow;->mRelateViewtop:Landroid/widget/RelativeLayout;

    .line 546
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/server/wm/SingleHandWindow;->cropwallpaper(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 547
    .local v0, "bg":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_24

    .line 548
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/android/server/wm/SingleHandWindow;->mRelateViewtop:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v2, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 549
    .local v2, "mDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/android/server/wm/SingleHandWindow;->mRelateViewtop:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 551
    .end local v2    # "mDrawable":Landroid/graphics/drawable/Drawable;
    :cond_24
    iget-object v4, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowContent:Landroid/view/View;

    .line 552
    const v5, 0x1020418

    .line 551
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/android/server/wm/SingleHandWindow;->mRelateViewbottom:Landroid/widget/RelativeLayout;

    .line 553
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/server/wm/SingleHandWindow;->cropwallpaper(Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 554
    .local v1, "bg1":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_48

    .line 555
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/android/server/wm/SingleHandWindow;->mRelateViewbottom:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 556
    .local v3, "mDrawable1":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/android/server/wm/SingleHandWindow;->mRelateViewbottom:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 541
    .end local v3    # "mDrawable1":Landroid/graphics/drawable/Drawable;
    :cond_48
    return-void
.end method

.method public relayout()V
    .registers 4

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowVisible:Z

    if-eqz v0, :cond_2b

    iget-boolean v0, p0, Lcom/android/server/wm/SingleHandWindow;->mIsBlurTopWindow:Z

    if-eqz v0, :cond_2b

    .line 191
    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowContent:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowVisible:Z

    .line 193
    invoke-direct {p0}, Lcom/android/server/wm/SingleHandWindow;->createWindow()V

    .line 194
    invoke-direct {p0}, Lcom/android/server/wm/SingleHandWindow;->updateWindowParams()V

    .line 195
    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowContent:Landroid/view/View;

    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 196
    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowContent:Landroid/view/View;

    iget-object v2, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowVisible:Z

    .line 189
    :cond_2b
    return-void
.end method

.method public show()V
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 137
    iget-boolean v1, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowVisible:Z

    if-nez v1, :cond_6a

    .line 138
    iget-boolean v1, p0, Lcom/android/server/wm/SingleHandWindow;->mIsBlurTopWindow:Z

    if-nez v1, :cond_28

    .line 139
    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 141
    .local v0, "currentRotation":I
    iget-object v5, p0, Lcom/android/server/wm/SingleHandWindow;->mService:Lcom/android/server/wm/WindowManagerService;

    if-ne v0, v2, :cond_3e

    move v1, v2

    :goto_16
    invoke-virtual {v5, v1}, Lcom/android/server/wm/WindowManagerService;->freezeOrThawRotation(I)V

    .line 143
    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v5, p0, Lcom/android/server/wm/SingleHandWindow;->mLeft:Z

    if-eqz v5, :cond_20

    move v2, v4

    :cond_20
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->setSingleHandMode(I)V

    .line 144
    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 147
    .end local v0    # "currentRotation":I
    :cond_28
    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/android/server/wm/SingleHandWindow;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 148
    invoke-direct {p0}, Lcom/android/server/wm/SingleHandWindow;->updateDefaultDisplayInfo()Z

    move-result v1

    if-nez v1, :cond_40

    .line 149
    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/android/server/wm/SingleHandWindow;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 150
    return-void

    .restart local v0    # "currentRotation":I
    :cond_3e
    move v1, v3

    .line 142
    goto :goto_16

    .line 153
    .end local v0    # "currentRotation":I
    :cond_40
    iget-boolean v1, p0, Lcom/android/server/wm/SingleHandWindow;->mIsBlurTopWindow:Z

    if-eqz v1, :cond_68

    .line 154
    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 155
    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 156
    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/server/wm/SingleHandWindow;->mWidth:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 157
    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/server/wm/SingleHandWindow;->mHeight:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 158
    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowContent:Landroid/view/View;

    iget-object v2, p0, Lcom/android/server/wm/SingleHandWindow;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 159
    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowContent:Landroid/view/View;

    iget-object v3, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    :cond_68
    iput-boolean v4, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowVisible:Z

    .line 136
    :cond_6a
    return-void
.end method

.method singlehandRegionContainsPoint(II)Z
    .registers 9
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/high16 v5, 0x3e800000    # 0.25f

    .line 474
    iget-object v4, p0, Lcom/android/server/wm/SingleHandWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v3, v4

    .line 475
    .local v3, "top":I
    iget-object v4, p0, Lcom/android/server/wm/SingleHandWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 479
    .local v0, "bottom":I
    iget-boolean v4, p0, Lcom/android/server/wm/SingleHandWindow;->mLeft:Z

    if-eqz v4, :cond_25

    .line 480
    const/4 v1, 0x0

    .line 481
    .local v1, "left":I
    iget-object v4, p0, Lcom/android/server/wm/SingleHandWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v4, v4

    const/high16 v5, 0x3f400000    # 0.75f

    mul-float/2addr v4, v5

    float-to-int v2, v4

    .line 487
    .local v2, "right":I
    :goto_1b
    if-lt p2, v3, :cond_31

    if-ge p2, v0, :cond_31

    if-lt p1, v1, :cond_31

    if-ge p1, v2, :cond_31

    .line 488
    const/4 v4, 0x1

    return v4

    .line 483
    .end local v1    # "left":I
    .end local v2    # "right":I
    :cond_25
    iget-object v4, p0, Lcom/android/server/wm/SingleHandWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v1, v4

    .line 484
    .restart local v1    # "left":I
    iget-object v4, p0, Lcom/android/server/wm/SingleHandWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    .restart local v2    # "right":I
    goto :goto_1b

    .line 491
    :cond_31
    const/4 v4, 0x0

    return v4
.end method

.method updateConfiguration()V
    .registers 6

    .prologue
    .line 247
    iget-object v2, p0, Lcom/android/server/wm/SingleHandWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 248
    .local v1, "newConfiguration":Landroid/content/res/Configuration;
    iget-object v2, p0, Lcom/android/server/wm/SingleHandWindow;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, v1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    .line 249
    .local v0, "diff":I
    iput-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mConfiguration:Landroid/content/res/Configuration;

    .line 253
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_26

    .line 254
    iget-object v2, p0, Lcom/android/server/wm/SingleHandWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "single_hand_mode"

    const-string/jumbo v4, ""

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 255
    return-void

    .line 246
    :cond_26
    return-void
.end method

.method public updateLayoutParams()V
    .registers 3

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mRelateViewtop:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 312
    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    div-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 313
    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mRelateViewtop:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mRelateViewbottom:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 316
    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 317
    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    div-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 318
    iget-boolean v0, p0, Lcom/android/server/wm/SingleHandWindow;->mLeft:Z

    if-eqz v0, :cond_55

    .line 319
    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 322
    :goto_44
    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 323
    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mRelateViewbottom:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    return-void

    .line 321
    :cond_55
    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_44
.end method

.method updateLocale()V
    .registers 4

    .prologue
    .line 240
    const-string/jumbo v0, "SingleHandWindow"

    const-string/jumbo v1, "updateLocale ."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->overlay_display_window:Landroid/widget/TextView;

    if-eqz v0, :cond_1f

    .line 242
    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->overlay_display_window:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040076

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    :cond_1f
    return-void
.end method
