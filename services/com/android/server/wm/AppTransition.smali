.class public Lcom/android/server/wm/AppTransition;
.super Ljava/lang/Object;
.source "AppTransition.java"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AppTransition$SettingsObserver;
    }
.end annotation


# static fields
.field private static final APP_STATE_IDLE:I = 0x0

.field private static final APP_STATE_READY:I = 0x1

.field private static final APP_STATE_RUNNING:I = 0x2

.field private static final APP_STATE_TIMEOUT:I = 0x3

.field private static final APP_TRANSITION_TIMEOUT_MS:J = 0x1388L

.field private static final CLIP_REVEAL_TRANSLATION_Y_DP:I = 0x8

.field static final DEFAULT_APP_TRANSITION_DURATION:I = 0x150

.field private static final MAX_CLIP_REVEAL_TRANSITION_DURATION:I = 0x1a4

.field private static final NEXT_TRANSIT_TYPE_CLIP_REVEAL:I = 0x8

.field private static final NEXT_TRANSIT_TYPE_CUSTOM:I = 0x1

.field private static final NEXT_TRANSIT_TYPE_CUSTOM_IN_PLACE:I = 0x7

.field private static final NEXT_TRANSIT_TYPE_NONE:I = 0x0

.field private static final NEXT_TRANSIT_TYPE_SCALE_UP:I = 0x2

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_DOWN:I = 0x6

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_UP:I = 0x5

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_DOWN:I = 0x4

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_UP:I = 0x3

.field private static final RECENTS_THUMBNAIL_FADEIN_FRACTION:F = 0.5f

.field private static final RECENTS_THUMBNAIL_FADEOUT_FRACTION:F = 0.5f

.field private static final TAG:Ljava/lang/String;

.field private static final THUMBNAIL_APP_TRANSITION_DURATION:I = 0x150

.field private static final THUMBNAIL_DOCK_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final THUMBNAIL_TRANSITION_ENTER_SCALE_DOWN:I = 0x2

.field private static final THUMBNAIL_TRANSITION_ENTER_SCALE_UP:I = 0x0

.field private static final THUMBNAIL_TRANSITION_EXIT_SCALE_DOWN:I = 0x3

.field private static final THUMBNAIL_TRANSITION_EXIT_SCALE_UP:I = 0x1

.field static final TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final TRANSIT_ACTIVITY_CLOSE:I = 0x7

.field public static final TRANSIT_ACTIVITY_OPEN:I = 0x6

.field public static final TRANSIT_ACTIVITY_RELAUNCH:I = 0x12

.field public static final TRANSIT_DOCK_TASK_FROM_RECENTS:I = 0x13

.field public static final TRANSIT_NONE:I = 0x0

.field public static final TRANSIT_TASK_CLOSE:I = 0x9

.field public static final TRANSIT_TASK_IN_PLACE:I = 0x11

.field public static final TRANSIT_TASK_OPEN:I = 0x8

.field public static final TRANSIT_TASK_OPEN_BEHIND:I = 0x10

.field public static final TRANSIT_TASK_TO_BACK:I = 0xb

.field public static final TRANSIT_TASK_TO_FRONT:I = 0xa

.field public static final TRANSIT_UNSET:I = -0x1

.field public static final TRANSIT_WALLPAPER_CLOSE:I = 0xc

.field public static final TRANSIT_WALLPAPER_INTRA_CLOSE:I = 0xf

.field public static final TRANSIT_WALLPAPER_INTRA_OPEN:I = 0xe

.field public static final TRANSIT_WALLPAPER_OPEN:I = 0xd


# instance fields
.field private mActivityAnimations:[I

.field private mAnimationDuration:I

.field private mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

.field private mAppTransitionState:I

.field private final mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

.field private final mClipRevealTranslationY:I

.field private final mConfigShortAnimTime:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mDecelerateInterpolator:Landroid/view/animation/Interpolator;

.field private final mDefaultExecutor:Ljava/util/concurrent/ExecutorService;

.field private mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

.field private final mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private final mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mGridLayoutRecentsEnabled:Z

.field private mIsResId:Z

.field private mLastClipRevealMaxTranslation:I

.field private mLastClipRevealTransitionDuration:J

.field private mLastClosingApp:Ljava/lang/String;

.field private mLastHadClipReveal:Z

.field private mLastOpeningApp:Ljava/lang/String;

.field private mLastUsedAppTransition:I

.field private final mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/WindowManagerInternal$AppTransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNextAppTransition:I

.field private final mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/AppTransitionAnimationSpec;",
            ">;"
        }
    .end annotation
.end field

.field private mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

.field private mNextAppTransitionAnimationsSpecsPending:Z

.field private mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

.field private mNextAppTransitionEnter:I

.field private mNextAppTransitionExit:I

.field private mNextAppTransitionFutureCallback:Landroid/os/IRemoteCallback;

.field private mNextAppTransitionInPlace:I

.field private mNextAppTransitionInsets:Landroid/graphics/Rect;

.field private mNextAppTransitionPackage:Ljava/lang/String;

.field private mNextAppTransitionScaleUp:Z

.field private mNextAppTransitionType:I

.field private mProlongedAnimationsEnded:Z

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mSettingsObserver:Lcom/android/server/wm/AppTransition$SettingsObserver;

.field private final mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

.field private final mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

.field private mTmpFromClipRect:Landroid/graphics/Rect;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mTmpToClipRect:Landroid/graphics/Rect;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/wm/AppTransition;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wm/AppTransition;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wm/AppTransition;)Landroid/view/animation/Interpolator;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/wm/AppTransition;)Landroid/view/animation/Interpolator;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/wm/AppTransition;)Landroid/os/IRemoteCallback;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFutureCallback:Landroid/os/IRemoteCallback;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/wm/AppTransition;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/server/wm/AppTransition;)Lcom/android/server/wm/WindowManagerService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/wm/AppTransition;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsPending:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/wm/AppTransition;Landroid/os/IRemoteCallback;)Landroid/os/IRemoteCallback;
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFutureCallback:Landroid/os/IRemoteCallback;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wm/AppTransition;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->updateSettings()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 102
    const-string/jumbo v0, "WindowManager"

    sput-object v0, Lcom/android/server/wm/AppTransition;->TAG:Ljava/lang/String;

    .line 156
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 155
    sput-object v0, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 159
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f59999a    # 0.85f

    invoke-direct {v0, v1, v4, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 158
    sput-object v0, Lcom/android/server/wm/AppTransition;->THUMBNAIL_DOCK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 101
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v0, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 173
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    .line 186
    iput v3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 206
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 205
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    .line 211
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    .line 213
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    .line 214
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    .line 216
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    .line 222
    iput v3, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 231
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

    .line 236
    const/16 v0, 0xb

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    .line 238
    iput-boolean v3, p0, Lcom/android/server/wm/AppTransition;->mIsResId:Z

    .line 240
    iput v3, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    .line 241
    const-wide/16 v0, 0x150

    iput-wide v0, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealTransitionDuration:J

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    .line 244
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultExecutor:Ljava/util/concurrent/ExecutorService;

    .line 253
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 254
    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 255
    new-instance v0, Lcom/android/server/wm/AppTransition$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/AppTransition$SettingsObserver;-><init>(Lcom/android/server/wm/AppTransition;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mSettingsObserver:Lcom/android/server/wm/AppTransition$SettingsObserver;

    .line 256
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mSettingsObserver:Lcom/android/server/wm/AppTransition$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition$SettingsObserver;->observe()V

    .line 257
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->updateSettings()V

    .line 259
    const v0, 0x10c000e

    .line 258
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 261
    const v0, 0x10c000f

    .line 260
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 263
    const v0, 0x10c000d

    .line 262
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 264
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 265
    const/high16 v1, 0x10e0000

    .line 264
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    .line 267
    const v0, 0x10c0003

    .line 266
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 268
    new-instance v0, Lcom/android/server/wm/AppTransition$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AppTransition$1;-><init>(Lcom/android/server/wm/AppTransition;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

    .line 280
    new-instance v0, Lcom/android/server/wm/AppTransition$2;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AppTransition$2;-><init>(Lcom/android/server/wm/AppTransition;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    .line 292
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 291
    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mClipRevealTranslationY:I

    .line 293
    const-string/jumbo v0, "ro.recents.grid"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    .line 252
    return-void
.end method

.method private appStateToString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1961
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    packed-switch v0, :pswitch_data_2c

    .line 1971
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1963
    :pswitch_1c
    const-string/jumbo v0, "APP_STATE_IDLE"

    return-object v0

    .line 1965
    :pswitch_20
    const-string/jumbo v0, "APP_STATE_READY"

    return-object v0

    .line 1967
    :pswitch_24
    const-string/jumbo v0, "APP_STATE_RUNNING"

    return-object v0

    .line 1969
    :pswitch_28
    const-string/jumbo v0, "APP_STATE_TIMEOUT"

    return-object v0

    .line 1961
    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_20
        :pswitch_24
        :pswitch_28
    .end packed-switch
.end method

.method public static appTransitionToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "transition"    # I

    .prologue
    .line 1908
    packed-switch p0, :pswitch_data_44

    .line 1955
    :pswitch_3
    const-string/jumbo v0, "<UNKNOWN>"

    return-object v0

    .line 1910
    :pswitch_7
    const-string/jumbo v0, "TRANSIT_UNSET"

    return-object v0

    .line 1913
    :pswitch_b
    const-string/jumbo v0, "TRANSIT_NONE"

    return-object v0

    .line 1916
    :pswitch_f
    const-string/jumbo v0, "TRANSIT_ACTIVITY_OPEN"

    return-object v0

    .line 1919
    :pswitch_13
    const-string/jumbo v0, "TRANSIT_ACTIVITY_CLOSE"

    return-object v0

    .line 1922
    :pswitch_17
    const-string/jumbo v0, "TRANSIT_TASK_OPEN"

    return-object v0

    .line 1925
    :pswitch_1b
    const-string/jumbo v0, "TRANSIT_TASK_CLOSE"

    return-object v0

    .line 1928
    :pswitch_1f
    const-string/jumbo v0, "TRANSIT_TASK_TO_FRONT"

    return-object v0

    .line 1931
    :pswitch_23
    const-string/jumbo v0, "TRANSIT_TASK_TO_BACK"

    return-object v0

    .line 1934
    :pswitch_27
    const-string/jumbo v0, "TRANSIT_WALLPAPER_CLOSE"

    return-object v0

    .line 1937
    :pswitch_2b
    const-string/jumbo v0, "TRANSIT_WALLPAPER_OPEN"

    return-object v0

    .line 1940
    :pswitch_2f
    const-string/jumbo v0, "TRANSIT_WALLPAPER_INTRA_OPEN"

    return-object v0

    .line 1943
    :pswitch_33
    const-string/jumbo v0, "TRANSIT_WALLPAPER_INTRA_CLOSE"

    return-object v0

    .line 1946
    :pswitch_37
    const-string/jumbo v0, "TRANSIT_TASK_OPEN_BEHIND"

    return-object v0

    .line 1949
    :pswitch_3b
    const-string/jumbo v0, "TRANSIT_ACTIVITY_RELAUNCH"

    return-object v0

    .line 1952
    :pswitch_3f
    const-string/jumbo v0, "TRANSIT_DOCK_TASK_FROM_RECENTS"

    return-object v0

    .line 1908
    nop

    :pswitch_data_44
    .packed-switch -0x1
        :pswitch_7
        :pswitch_b
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_f
        :pswitch_13
        :pswitch_17
        :pswitch_1b
        :pswitch_1f
        :pswitch_23
        :pswitch_27
        :pswitch_2b
        :pswitch_2f
        :pswitch_33
        :pswitch_37
        :pswitch_3
        :pswitch_3b
        :pswitch_3f
    .end packed-switch
.end method

.method private calculateClipRevealTransitionDuration(ZFFLandroid/graphics/Rect;)J
    .registers 9
    .param p1, "cutOff"    # Z
    .param p2, "translationX"    # F
    .param p3, "translationY"    # F
    .param p4, "displayFrame"    # Landroid/graphics/Rect;

    .prologue
    .line 749
    if-nez p1, :cond_5

    .line 750
    const-wide/16 v2, 0x150

    return-wide v2

    .line 752
    :cond_5
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 753
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 752
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 755
    .local v0, "fraction":F
    const/high16 v1, 0x42a80000    # 84.0f

    .line 754
    mul-float/2addr v1, v0

    const/high16 v2, 0x43a80000    # 336.0f

    add-float/2addr v1, v2

    float-to-long v2, v1

    return-wide v2
.end method

.method private static computePivot(IF)F
    .registers 5
    .param p0, "startPos"    # I
    .param p1, "finalScale"    # F

    .prologue
    .line 622
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, p1, v1

    .line 623
    .local v0, "denom":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x38d1b717    # 1.0E-4f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_11

    .line 624
    int-to-float v1, p0

    return v1

    .line 626
    :cond_11
    neg-int v1, p0

    int-to-float v1, v1

    div-float/2addr v1, v0

    return v1
.end method

.method private createAspectScaledThumbnailEnterFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/animation/Animation;
    .registers 6
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "surfaceInsets"    # Landroid/graphics/Rect;
    .param p3, "taskId"    # I

    .prologue
    .line 1224
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p3, v0}, Lcom/android/server/wm/AppTransition;->getNextAppTransitionStartRect(ILandroid/graphics/Rect;)V

    .line 1225
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    .line 1226
    const/4 v1, 0x1

    .line 1225
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method private createAspectScaledThumbnailExitFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/animation/Animation;
    .registers 6
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "surfaceInsets"    # Landroid/graphics/Rect;
    .param p3, "taskId"    # I

    .prologue
    .line 1231
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p3, v0}, Lcom/android/server/wm/AppTransition;->getNextAppTransitionStartRect(ILandroid/graphics/Rect;)V

    .line 1232
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    .line 1233
    const/4 v1, 0x0

    .line 1232
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method private createAspectScaledThumbnailFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/AnimationSet;
    .registers 36
    .param p1, "sourceFrame"    # Landroid/graphics/Rect;
    .param p2, "destFrame"    # Landroid/graphics/Rect;
    .param p3, "surfaceInsets"    # Landroid/graphics/Rect;
    .param p4, "enter"    # Z

    .prologue
    .line 1238
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v0, v4

    move/from16 v27, v0

    .line 1239
    .local v27, "sourceWidth":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v0, v4

    move/from16 v25, v0

    .line 1240
    .local v25, "sourceHeight":F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v0, v4

    move/from16 v20, v0

    .line 1241
    .local v20, "destWidth":F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v0, v4

    move/from16 v18, v0

    .line 1242
    .local v18, "destHeight":F
    if-eqz p4, :cond_c1

    div-float v3, v27, v20

    .line 1243
    .local v3, "scaleH":F
    :goto_20
    if-eqz p4, :cond_c5

    div-float v5, v25, v18

    .line 1244
    .local v5, "scaleV":F
    :goto_24
    new-instance v23, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x1

    move-object/from16 v0, v23

    invoke-direct {v0, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1245
    .local v23, "set":Landroid/view/animation/AnimationSet;
    if-nez p3, :cond_c9

    .line 1246
    const/16 v28, 0x0

    .line 1247
    .local v28, "surfaceInsetsH":I
    :goto_30
    if-nez p3, :cond_d5

    .line 1248
    const/16 v29, 0x0

    .line 1251
    .local v29, "surfaceInsetsV":I
    :goto_34
    if-eqz p4, :cond_e1

    .end local v20    # "destWidth":F
    :goto_36
    move/from16 v0, v28

    int-to-float v4, v0

    add-float v4, v4, v20

    const/high16 v6, 0x40000000    # 2.0f

    div-float v7, v4, v6

    .line 1252
    .local v7, "scaleHCenter":F
    if-eqz p4, :cond_e5

    .end local v18    # "destHeight":F
    :goto_41
    move/from16 v0, v29

    int-to-float v4, v0

    add-float v4, v4, v18

    const/high16 v6, 0x40000000    # 2.0f

    div-float v8, v4, v6

    .line 1253
    .local v8, "scaleVCenter":F
    if-eqz p4, :cond_e9

    .line 1254
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1256
    .local v2, "scale":Landroid/view/animation/ScaleAnimation;
    :goto_55
    move-object/from16 v0, p1

    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int v24, v4, v6

    .line 1257
    .local v24, "sourceHCenter":I
    move-object/from16 v0, p1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int v26, v4, v6

    .line 1258
    .local v26, "sourceVCenter":I
    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int v17, v4, v6

    .line 1259
    .local v17, "destHCenter":I
    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int v19, v4, v6

    .line 1260
    .local v19, "destVCenter":I
    if-eqz p4, :cond_f9

    sub-int v21, v24, v17

    .line 1261
    .local v21, "fromX":I
    :goto_89
    if-eqz p4, :cond_fc

    sub-int v22, v26, v19

    .line 1262
    .local v22, "fromY":I
    :goto_8d
    if-eqz p4, :cond_ff

    new-instance v30, Landroid/view/animation/TranslateAnimation;

    move/from16 v0, v21

    int-to-float v4, v0

    const/4 v6, 0x0

    move/from16 v0, v22

    int-to-float v9, v0

    const/4 v10, 0x0

    move-object/from16 v0, v30

    invoke-direct {v0, v4, v6, v9, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1264
    .local v30, "translation":Landroid/view/animation/TranslateAnimation;
    :goto_9e
    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1265
    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AppTransition;->mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

    move-object/from16 v16, v0

    .line 1268
    .local v16, "callback":Landroid/os/IRemoteCallback;
    if-eqz v16, :cond_c0

    .line 1269
    new-instance v4, Lcom/android/server/wm/AppTransition$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v4, v0, v1}, Lcom/android/server/wm/AppTransition$3;-><init>(Lcom/android/server/wm/AppTransition;Landroid/os/IRemoteCallback;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1282
    :cond_c0
    return-object v23

    .line 1242
    .end local v2    # "scale":Landroid/view/animation/ScaleAnimation;
    .end local v3    # "scaleH":F
    .end local v5    # "scaleV":F
    .end local v7    # "scaleHCenter":F
    .end local v8    # "scaleVCenter":F
    .end local v16    # "callback":Landroid/os/IRemoteCallback;
    .end local v17    # "destHCenter":I
    .end local v19    # "destVCenter":I
    .end local v21    # "fromX":I
    .end local v22    # "fromY":I
    .end local v23    # "set":Landroid/view/animation/AnimationSet;
    .end local v24    # "sourceHCenter":I
    .end local v26    # "sourceVCenter":I
    .end local v28    # "surfaceInsetsH":I
    .end local v29    # "surfaceInsetsV":I
    .end local v30    # "translation":Landroid/view/animation/TranslateAnimation;
    .restart local v18    # "destHeight":F
    .restart local v20    # "destWidth":F
    :cond_c1
    div-float v3, v20, v27

    .restart local v3    # "scaleH":F
    goto/16 :goto_20

    .line 1243
    :cond_c5
    div-float v5, v18, v25

    .restart local v5    # "scaleV":F
    goto/16 :goto_24

    .line 1246
    .restart local v23    # "set":Landroid/view/animation/AnimationSet;
    :cond_c9
    move-object/from16 v0, p3

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p3

    iget v6, v0, Landroid/graphics/Rect;->right:I

    add-int v28, v4, v6

    .restart local v28    # "surfaceInsetsH":I
    goto/16 :goto_30

    .line 1248
    :cond_d5
    move-object/from16 v0, p3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p3

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int v29, v4, v6

    .restart local v29    # "surfaceInsetsV":I
    goto/16 :goto_34

    :cond_e1
    move/from16 v20, v27

    .line 1251
    goto/16 :goto_36

    .end local v20    # "destWidth":F
    .restart local v7    # "scaleHCenter":F
    :cond_e5
    move/from16 v18, v25

    .line 1252
    goto/16 :goto_41

    .line 1255
    .end local v18    # "destHeight":F
    .restart local v8    # "scaleVCenter":F
    :cond_e9
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    move-object v9, v2

    move v11, v3

    move v13, v5

    move v14, v7

    move v15, v8

    invoke-direct/range {v9 .. v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .restart local v2    # "scale":Landroid/view/animation/ScaleAnimation;
    goto/16 :goto_55

    .line 1260
    .restart local v17    # "destHCenter":I
    .restart local v19    # "destVCenter":I
    .restart local v24    # "sourceHCenter":I
    .restart local v26    # "sourceVCenter":I
    :cond_f9
    sub-int v21, v17, v24

    .restart local v21    # "fromX":I
    goto :goto_89

    .line 1261
    :cond_fc
    sub-int v22, v19, v26

    .restart local v22    # "fromY":I
    goto :goto_8d

    .line 1263
    :cond_ff
    new-instance v30, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x0

    move/from16 v0, v21

    int-to-float v6, v0

    const/4 v9, 0x0

    move/from16 v0, v22

    int-to-float v10, v0

    move-object/from16 v0, v30

    invoke-direct {v0, v4, v6, v9, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v30    # "translation":Landroid/view/animation/TranslateAnimation;
    goto :goto_9e
.end method

.method private createClipRevealAnimationLocked(IZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 36
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "appFrame"    # Landroid/graphics/Rect;
    .param p4, "displayFrame"    # Landroid/graphics/Rect;

    .prologue
    .line 761
    if-eqz p2, :cond_19a

    .line 762
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v16

    .line 763
    .local v16, "appWidth":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 767
    .local v8, "appHeight":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 769
    const/16 v27, 0x0

    .line 770
    .local v27, "t":F
    if-lez v8, :cond_25

    .line 771
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float v27, v6, v7

    .line 773
    :cond_25
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mClipRevealTranslationY:I

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    const/high16 v10, 0x40e00000    # 7.0f

    div-float/2addr v7, v10

    mul-float v7, v7, v27

    float-to-int v7, v7

    add-int v30, v6, v7

    .line 774
    .local v30, "translationY":I
    const/16 v29, 0x0

    .line 775
    .local v29, "translationX":I
    move/from16 v9, v30

    .line 776
    .local v9, "translationYCorrection":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v17

    .line 777
    .local v17, "centerX":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v18

    .line 778
    .local v18, "centerY":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v25, v6, 0x2

    .line 779
    .local v25, "halfWidth":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v24, v6, 0x2

    .line 780
    .local v24, "halfHeight":I
    sub-int v6, v17, v25

    move-object/from16 v0, p3

    iget v7, v0, Landroid/graphics/Rect;->left:I

    sub-int v20, v6, v7

    .line 781
    .local v20, "clipStartX":I
    sub-int v6, v18, v24

    move-object/from16 v0, p3

    iget v7, v0, Landroid/graphics/Rect;->top:I

    sub-int v5, v6, v7

    .line 782
    .local v5, "clipStartY":I
    const/16 v21, 0x0

    .line 787
    .local v21, "cutOff":Z
    move-object/from16 v0, p3

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sub-int v7, v18, v24

    if-le v6, v7, :cond_84

    .line 788
    sub-int v6, v18, v24

    move-object/from16 v0, p3

    iget v7, v0, Landroid/graphics/Rect;->top:I

    sub-int v30, v6, v7

    .line 789
    const/4 v9, 0x0

    .line 790
    const/4 v5, 0x0

    .line 791
    const/16 v21, 0x1

    .line 793
    :cond_84
    move-object/from16 v0, p3

    iget v6, v0, Landroid/graphics/Rect;->left:I

    sub-int v7, v17, v25

    if-le v6, v7, :cond_98

    .line 794
    sub-int v6, v17, v25

    move-object/from16 v0, p3

    iget v7, v0, Landroid/graphics/Rect;->left:I

    sub-int v29, v6, v7

    .line 795
    const/16 v20, 0x0

    .line 796
    const/16 v21, 0x1

    .line 798
    :cond_98
    move-object/from16 v0, p3

    iget v6, v0, Landroid/graphics/Rect;->right:I

    add-int v7, v17, v25

    if-ge v6, v7, :cond_b4

    .line 799
    add-int v6, v17, v25

    move-object/from16 v0, p3

    iget v7, v0, Landroid/graphics/Rect;->right:I

    sub-int v29, v6, v7

    .line 800
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int v20, v16, v6

    .line 801
    const/16 v21, 0x1

    .line 803
    :cond_b4
    move/from16 v0, v29

    int-to-float v6, v0

    .line 804
    move/from16 v0, v30

    int-to-float v7, v0

    .line 803
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/android/server/wm/AppTransition;->calculateClipRevealTransitionDuration(ZFFLandroid/graphics/Rect;)J

    move-result-wide v22

    .line 807
    .local v22, "duration":J
    new-instance v19, Lcom/android/server/wm/animation/ClipRectLRAnimation;

    .line 808
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int v6, v6, v20

    const/4 v7, 0x0

    .line 807
    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v16

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/android/server/wm/animation/ClipRectLRAnimation;-><init>(IIII)V

    .line 809
    .local v19, "clipAnimLR":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 810
    move-wide/from16 v0, v22

    long-to-float v6, v0

    const/high16 v7, 0x40200000    # 2.5f

    div-float/2addr v6, v7

    float-to-long v6, v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 812
    new-instance v28, Landroid/view/animation/TranslateAnimation;

    move/from16 v0, v29

    int-to-float v6, v0

    const/4 v7, 0x0

    move/from16 v0, v30

    int-to-float v10, v0

    const/4 v11, 0x0

    move-object/from16 v0, v28

    invoke-direct {v0, v6, v7, v10, v11}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 813
    .local v28, "translate":Landroid/view/animation/TranslateAnimation;
    if-eqz v21, :cond_192

    sget-object v6, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    :goto_102
    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 815
    move-object/from16 v0, v28

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 817
    new-instance v4, Lcom/android/server/wm/animation/ClipRectTBAnimation;

    .line 818
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/2addr v6, v5

    .line 821
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 819
    const/4 v7, 0x0

    .line 820
    const/4 v10, 0x0

    .line 817
    invoke-direct/range {v4 .. v11}, Lcom/android/server/wm/animation/ClipRectTBAnimation;-><init>(IIIIIILandroid/view/animation/Interpolator;)V

    .line 822
    .local v4, "clipAnimTB":Landroid/view/animation/Animation;
    sget-object v6, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 823
    move-wide/from16 v0, v22

    invoke-virtual {v4, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 826
    const-wide/16 v6, 0x4

    div-long v14, v22, v6

    .line 827
    .local v14, "alphaDuration":J
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-direct {v12, v7, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 828
    .local v12, "alpha":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v12, v14, v15}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 829
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v12, v6}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 831
    new-instance v26, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x0

    move-object/from16 v0, v26

    invoke-direct {v0, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 832
    .local v26, "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 833
    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 834
    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 835
    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 836
    const/4 v6, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 837
    move-object/from16 v0, v26

    move/from16 v1, v16

    move/from16 v2, v16

    invoke-virtual {v0, v1, v8, v2, v8}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    .line 838
    move-object/from16 v13, v26

    .line 839
    .local v13, "anim":Landroid/view/animation/Animation;
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/server/wm/AppTransition;->mLastHadClipReveal:Z

    .line 840
    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wm/AppTransition;->mLastClipRevealTransitionDuration:J

    .line 844
    if-eqz v21, :cond_198

    .line 845
    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 844
    :goto_18d
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/server/wm/AppTransition;->mLastClipRevealMaxTranslation:I

    .line 873
    .end local v4    # "clipAnimTB":Landroid/view/animation/Animation;
    .end local v5    # "clipStartY":I
    .end local v8    # "appHeight":I
    .end local v9    # "translationYCorrection":I
    .end local v12    # "alpha":Landroid/view/animation/AlphaAnimation;
    .end local v14    # "alphaDuration":J
    .end local v16    # "appWidth":I
    .end local v17    # "centerX":I
    .end local v18    # "centerY":I
    .end local v19    # "clipAnimLR":Landroid/view/animation/Animation;
    .end local v20    # "clipStartX":I
    .end local v21    # "cutOff":Z
    .end local v24    # "halfHeight":I
    .end local v25    # "halfWidth":I
    .end local v26    # "set":Landroid/view/animation/AnimationSet;
    .end local v27    # "t":F
    .end local v28    # "translate":Landroid/view/animation/TranslateAnimation;
    .end local v29    # "translationX":I
    .end local v30    # "translationY":I
    :goto_191
    return-object v13

    .line 814
    .end local v13    # "anim":Landroid/view/animation/Animation;
    .restart local v5    # "clipStartY":I
    .restart local v8    # "appHeight":I
    .restart local v9    # "translationYCorrection":I
    .restart local v16    # "appWidth":I
    .restart local v17    # "centerX":I
    .restart local v18    # "centerY":I
    .restart local v19    # "clipAnimLR":Landroid/view/animation/Animation;
    .restart local v20    # "clipStartX":I
    .restart local v21    # "cutOff":Z
    .restart local v24    # "halfHeight":I
    .restart local v25    # "halfWidth":I
    .restart local v27    # "t":F
    .restart local v28    # "translate":Landroid/view/animation/TranslateAnimation;
    .restart local v29    # "translationX":I
    .restart local v30    # "translationY":I
    :cond_192
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    goto/16 :goto_102

    .line 845
    .restart local v4    # "clipAnimTB":Landroid/view/animation/Animation;
    .restart local v12    # "alpha":Landroid/view/animation/AlphaAnimation;
    .restart local v13    # "anim":Landroid/view/animation/Animation;
    .restart local v14    # "alphaDuration":J
    .restart local v26    # "set":Landroid/view/animation/AnimationSet;
    :cond_198
    const/4 v6, 0x0

    goto :goto_18d

    .line 848
    .end local v4    # "clipAnimTB":Landroid/view/animation/Animation;
    .end local v5    # "clipStartY":I
    .end local v8    # "appHeight":I
    .end local v9    # "translationYCorrection":I
    .end local v12    # "alpha":Landroid/view/animation/AlphaAnimation;
    .end local v13    # "anim":Landroid/view/animation/Animation;
    .end local v14    # "alphaDuration":J
    .end local v16    # "appWidth":I
    .end local v17    # "centerX":I
    .end local v18    # "centerY":I
    .end local v19    # "clipAnimLR":Landroid/view/animation/Animation;
    .end local v20    # "clipStartX":I
    .end local v21    # "cutOff":Z
    .end local v22    # "duration":J
    .end local v24    # "halfHeight":I
    .end local v25    # "halfWidth":I
    .end local v26    # "set":Landroid/view/animation/AnimationSet;
    .end local v27    # "t":F
    .end local v28    # "translate":Landroid/view/animation/TranslateAnimation;
    .end local v29    # "translationX":I
    .end local v30    # "translationY":I
    :cond_19a
    packed-switch p1, :pswitch_data_1da

    .line 854
    const-wide/16 v22, 0x150

    .line 857
    .restart local v22    # "duration":J
    :goto_19f
    const/16 v6, 0xe

    move/from16 v0, p1

    if-eq v0, v6, :cond_1ab

    .line 858
    const/16 v6, 0xf

    move/from16 v0, p1

    if-ne v0, v6, :cond_1d0

    .line 863
    :cond_1ab
    new-instance v13, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-direct {v13, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 864
    .restart local v13    # "anim":Landroid/view/animation/Animation;
    const/4 v6, 0x1

    invoke-virtual {v13, v6}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    .line 869
    :goto_1b7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v13, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 870
    move-wide/from16 v0, v22

    invoke-virtual {v13, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 871
    const/4 v6, 0x1

    invoke-virtual {v13, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    goto :goto_191

    .line 851
    .end local v13    # "anim":Landroid/view/animation/Animation;
    .end local v22    # "duration":J
    :pswitch_1c8
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    int-to-long v0, v6

    move-wide/from16 v22, v0

    .line 852
    .restart local v22    # "duration":J
    goto :goto_19f

    .line 867
    :cond_1d0
    new-instance v13, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v13, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v13    # "anim":Landroid/view/animation/Animation;
    goto :goto_1b7

    .line 848
    :pswitch_data_1da
    .packed-switch 0x6
        :pswitch_1c8
        :pswitch_1c8
    .end packed-switch
.end method

.method private createCurvedMotion(FFFF)Landroid/view/animation/Animation;
    .registers 8
    .param p1, "fromX"    # F
    .param p2, "toX"    # F
    .param p3, "fromY"    # F
    .param p4, "toY"    # F

    .prologue
    .line 1053
    sub-float v1, p2, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_12

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v2, 0x13

    if-eq v1, v2, :cond_18

    .line 1054
    :cond_12
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    return-object v1

    .line 1056
    :cond_18
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/AppTransition;->createCurvedPath(FFFF)Landroid/graphics/Path;

    move-result-object v0

    .line 1057
    .local v0, "path":Landroid/graphics/Path;
    new-instance v1, Lcom/android/server/wm/animation/CurvedTranslateAnimation;

    invoke-direct {v1, v0}, Lcom/android/server/wm/animation/CurvedTranslateAnimation;-><init>(Landroid/graphics/Path;)V

    return-object v1
.end method

.method private createCurvedPath(FFFF)Landroid/graphics/Path;
    .registers 12
    .param p1, "fromX"    # F
    .param p2, "toX"    # F
    .param p3, "fromY"    # F
    .param p4, "toY"    # F

    .prologue
    const v3, 0x3f666666    # 0.9f

    const v2, 0x3dcccccd    # 0.1f

    .line 1062
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 1063
    .local v0, "path":Landroid/graphics/Path;
    invoke-virtual {v0, p1, p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1065
    cmpl-float v1, p3, p4

    if-lez v1, :cond_20

    .line 1067
    mul-float v1, v3, p3

    mul-float/2addr v2, p4

    add-float v4, v1, v2

    move v1, p1

    move v2, p3

    move v3, p2

    move v5, p2

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 1072
    :goto_1f
    return-object v0

    .line 1070
    :cond_20
    mul-float v1, v2, p3

    mul-float v2, v3, p4

    add-float v4, v1, v2

    move v1, p1

    move v2, p3

    move v3, p1

    move v5, p2

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_1f
.end method

.method private createRelaunchAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 19
    .param p1, "containingFrame"    # Landroid/graphics/Rect;
    .param p2, "contentInsets"    # Landroid/graphics/Rect;

    .prologue
    .line 1397
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 1398
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v4, v11, Landroid/graphics/Rect;->left:I

    .line 1399
    .local v4, "left":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v8, v11, Landroid/graphics/Rect;->top:I

    .line 1400
    .local v8, "top":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    neg-int v12, v4

    neg-int v13, v8

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Rect;->offset(II)V

    .line 1402
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v11, v14, v15, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 1403
    new-instance v5, Landroid/view/animation/AnimationSet;

    const/4 v11, 0x1

    invoke-direct {v5, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1404
    .local v5, "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v3, v11

    .line 1405
    .local v3, "fromWidth":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v7, v11

    .line 1406
    .local v7, "toWidth":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v2, v11

    .line 1410
    .local v2, "fromHeight":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v12

    int-to-float v6, v11

    .line 1411
    .local v6, "toHeight":F
    const/4 v10, 0x0

    .line 1412
    .local v10, "translateAdjustment":I
    cmpg-float v11, v3, v7

    if-gtz v11, :cond_9f

    cmpg-float v11, v2, v6

    if-gtz v11, :cond_9f

    .line 1416
    new-instance v11, Landroid/view/animation/ClipRectAnimation;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v11, v12, v13}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v5, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1430
    :goto_7c
    new-instance v9, Landroid/view/animation/TranslateAnimation;

    move-object/from16 v0, p1

    iget v11, v0, Landroid/graphics/Rect;->left:I

    sub-int v11, v4, v11

    int-to-float v11, v11

    .line 1431
    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Rect;->top:I

    sub-int v13, v8, v13

    sub-int/2addr v13, v10

    int-to-float v13, v13

    const/4 v14, 0x0

    .line 1430
    invoke-direct {v9, v11, v12, v13, v14}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1432
    .local v9, "translate":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v5, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1433
    const-wide/16 v12, 0x150

    invoke-virtual {v5, v12, v13}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1434
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 1435
    return-object v5

    .line 1420
    .end local v9    # "translate":Landroid/view/animation/TranslateAnimation;
    :cond_9f
    new-instance v11, Landroid/view/animation/ScaleAnimation;

    div-float v12, v3, v7

    const/high16 v13, 0x3f800000    # 1.0f

    div-float v14, v2, v6

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-direct {v11, v12, v13, v14, v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    invoke-virtual {v5, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1424
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    mul-float/2addr v11, v2

    div-float/2addr v11, v6

    float-to-int v10, v11

    goto :goto_7c
.end method

.method private createScaleUpAnimationLocked(IZLandroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 18
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "containingFrame"    # Landroid/graphics/Rect;

    .prologue
    .line 632
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 633
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v10

    .line 634
    .local v10, "appWidth":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 635
    .local v9, "appHeight":I
    if-eqz p2, :cond_74

    .line 637
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    int-to-float v4, v10

    div-float v1, v2, v4

    .line 638
    .local v1, "scaleW":F
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    int-to-float v4, v9

    div-float v3, v2, v4

    .line 639
    .local v3, "scaleH":F
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 640
    iget-object v5, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    invoke-static {v5, v1}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v5

    .line 641
    iget-object v6, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-static {v6, v3}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v6

    .line 639
    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 642
    .local v0, "scale":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 644
    new-instance v8, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v8, v2, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 645
    .local v8, "alpha":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v8, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 647
    new-instance v11, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v11, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 648
    .local v11, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 649
    invoke-virtual {v11, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 650
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    .line 651
    move-object v7, v11

    .line 669
    .end local v0    # "scale":Landroid/view/animation/Animation;
    .end local v1    # "scaleW":F
    .end local v3    # "scaleH":F
    .end local v8    # "alpha":Landroid/view/animation/Animation;
    .end local v11    # "set":Landroid/view/animation/AnimationSet;
    .local v7, "a":Landroid/view/animation/Animation;
    :goto_5f
    packed-switch p1, :pswitch_data_98

    .line 675
    const-wide/16 v12, 0x150

    .line 678
    .local v12, "duration":J
    :goto_64
    invoke-virtual {v7, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 679
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 680
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 681
    invoke-virtual {v7, v10, v9, v10, v9}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 682
    return-object v7

    .line 652
    .end local v7    # "a":Landroid/view/animation/Animation;
    .end local v12    # "duration":J
    :cond_74
    const/16 v2, 0xe

    if-eq p1, v2, :cond_7c

    .line 653
    const/16 v2, 0xf

    if-ne p1, v2, :cond_89

    .line 658
    :cond_7c
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v7, v2, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 659
    .restart local v7    # "a":Landroid/view/animation/Animation;
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    goto :goto_5f

    .line 662
    .end local v7    # "a":Landroid/view/animation/Animation;
    :cond_89
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v7, v2, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v7    # "a":Landroid/view/animation/Animation;
    goto :goto_5f

    .line 672
    :pswitch_93
    iget v2, p0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    int-to-long v12, v2

    .line 673
    .restart local v12    # "duration":J
    goto :goto_64

    .line 669
    nop

    :pswitch_data_98
    .packed-switch 0x6
        :pswitch_93
        :pswitch_93
    .end packed-switch
.end method

.method private fetchAppTransitionSpecsFromFuture()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1866
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    if-eqz v1, :cond_16

    .line 1867
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsPending:Z

    .line 1868
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 1870
    .local v0, "future":Landroid/view/IAppTransitionAnimationSpecsFuture;
    iput-object v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 1871
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mDefaultExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/android/server/wm/AppTransition$4;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/AppTransition$4;-><init>(Lcom/android/server/wm/AppTransition;Landroid/view/IAppTransitionAnimationSpecsFuture;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1865
    .end local v0    # "future":Landroid/view/IAppTransitionAnimationSpecsFuture;
    :cond_16
    return-void
.end method

.method private getAspectScaleDuration()J
    .registers 3

    .prologue
    .line 1076
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_9

    .line 1077
    const-wide/16 v0, 0x1c5

    return-wide v0

    .line 1079
    :cond_9
    const-wide/16 v0, 0x150

    return-wide v0
.end method

.method private getAspectScaleInterpolator()Landroid/view/animation/Interpolator;
    .registers 3

    .prologue
    .line 1084
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_9

    .line 1085
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0

    .line 1087
    :cond_9
    sget-object v0, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;
    .registers 7
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v3, 0x0

    .line 475
    if-eqz p1, :cond_2a

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v2, :cond_2a

    .line 479
    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_26

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 480
    .local v0, "packageName":Ljava/lang/String;
    :goto_d
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 481
    .local v1, "resId":I
    const/high16 v2, -0x1000000

    and-int/2addr v2, v1

    const/high16 v3, 0x1000000

    if-ne v2, v3, :cond_19

    .line 482
    const-string/jumbo v0, "android"

    .line 486
    :cond_19
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v2

    .line 487
    sget-object v3, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    iget v4, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    .line 486
    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    return-object v2

    .line 479
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "resId":I
    :cond_26
    const-string/jumbo v0, "android"

    .restart local v0    # "packageName":Ljava/lang/String;
    goto :goto_d

    .line 489
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_2a
    return-object v3
.end method

.method private getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .prologue
    const/4 v0, 0x0

    .line 495
    if-eqz p1, :cond_1a

    .line 496
    const/high16 v0, -0x1000000

    and-int/2addr v0, p2

    const/high16 v1, 0x1000000

    if-ne v0, v1, :cond_d

    .line 497
    const-string/jumbo p1, "android"

    .line 501
    :cond_d
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v0

    .line 502
    sget-object v1, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    iget v2, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    .line 501
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v0

    return-object v0

    .line 504
    :cond_1a
    return-object v0
.end method

.method private getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 686
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    if-eqz v0, :cond_a

    .line 687
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    iget-object v0, v0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    if-nez v0, :cond_1b

    .line 688
    :cond_a
    sget-object v0, Lcom/android/server/wm/AppTransition;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Starting rect for app requested, but none available"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 689
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 685
    :goto_1a
    return-void

    .line 691
    :cond_1b
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    iget-object v0, v0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1a
.end method

.method private isTvUiMode(I)Z
    .registers 4
    .param p1, "uiMode"    # I

    .prologue
    const/4 v0, 0x0

    .line 2107
    and-int/lit8 v1, p1, 0x4

    if-lez v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method private loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .prologue
    const/4 v3, 0x0

    .line 540
    const/4 v0, 0x0

    .line 541
    .local v0, "anim":I
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 542
    .local v1, "context":Landroid/content/Context;
    if-ltz p2, :cond_f

    .line 543
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 544
    .local v2, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v2, :cond_f

    .line 545
    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 546
    move v0, p2

    .line 549
    .end local v2    # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_f
    if-eqz v0, :cond_16

    .line 550
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    return-object v3

    .line 552
    :cond_16
    return-object v3
.end method

.method private notifyAppTransitionCancelledLocked()V
    .registers 3

    .prologue
    .line 458
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 459
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1}, Landroid/view/WindowManagerInternal$AppTransitionListener;->onAppTransitionCancelledLocked()V

    .line 458
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 457
    :cond_17
    return-void
.end method

.method private notifyAppTransitionPendingLocked()V
    .registers 3

    .prologue
    .line 452
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 453
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1}, Landroid/view/WindowManagerInternal$AppTransitionListener;->onAppTransitionPendingLocked()V

    .line 452
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 451
    :cond_17
    return-void
.end method

.method private notifyAppTransitionStartingLocked(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .registers 7
    .param p1, "openToken"    # Landroid/os/IBinder;
    .param p2, "closeToken"    # Landroid/os/IBinder;
    .param p3, "openAnimation"    # Landroid/view/animation/Animation;
    .param p4, "closeAnimation"    # Landroid/view/animation/Animation;

    .prologue
    .line 465
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 466
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/view/WindowManagerInternal$AppTransitionListener;->onAppTransitionStartingLocked(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 465
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 464
    :cond_17
    return-void
.end method

.method private prepare()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 383
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v0

    if-nez v0, :cond_16

    .line 384
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 385
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionPendingLocked()V

    .line 386
    iput-boolean v1, p0, Lcom/android/server/wm/AppTransition;->mLastHadClipReveal:Z

    .line 387
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealMaxTranslation:I

    .line 388
    const-wide/16 v0, 0x150

    iput-wide v0, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealTransitionDuration:J

    .line 389
    const/4 v0, 0x1

    return v0

    .line 391
    :cond_16
    return v1
.end method

.method private putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/Bitmap;)V
    .registers 10
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 711
    new-instance v0, Landroid/view/AppTransitionAnimationSpec;

    .line 712
    new-instance v1, Landroid/graphics/Rect;

    add-int v2, p1, p3

    add-int v3, p2, p4

    invoke-direct {v1, p1, p2, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 711
    const/4 v2, -0x1

    invoke-direct {v0, v2, p5, v1}, Landroid/view/AppTransitionAnimationSpec;-><init>(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    .line 710
    return-void
.end method

.method private setAppTransition(I)V
    .registers 4
    .param p1, "transit"    # I

    .prologue
    const/4 v1, 0x0

    .line 309
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 310
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/wm/AppTransition;->setLastAppTransition(ILcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/AppWindowToken;)V

    .line 308
    return-void
.end method

.method private shouldScaleDownThumbnailTransition(II)Z
    .registers 5
    .param p1, "uiMode"    # I
    .param p2, "orientation"    # I

    .prologue
    const/4 v0, 0x1

    .line 2098
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->isTvUiMode(I)Z

    move-result v1

    if-nez v1, :cond_d

    .line 2099
    iget-boolean v1, p0, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    .line 2098
    if-nez v1, :cond_d

    .line 2100
    if-ne p2, v0, :cond_e

    .line 2098
    :cond_d
    :goto_d
    return v0

    .line 2100
    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private transitTypeToString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1976
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    packed-switch v0, :pswitch_data_3c

    .line 1994
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1978
    :pswitch_1c
    const-string/jumbo v0, "NEXT_TRANSIT_TYPE_NONE"

    return-object v0

    .line 1980
    :pswitch_20
    const-string/jumbo v0, "NEXT_TRANSIT_TYPE_CUSTOM"

    return-object v0

    .line 1982
    :pswitch_24
    const-string/jumbo v0, "NEXT_TRANSIT_TYPE_CUSTOM_IN_PLACE"

    return-object v0

    .line 1984
    :pswitch_28
    const-string/jumbo v0, "NEXT_TRANSIT_TYPE_SCALE_UP"

    return-object v0

    .line 1986
    :pswitch_2c
    const-string/jumbo v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_UP"

    return-object v0

    .line 1988
    :pswitch_30
    const-string/jumbo v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_DOWN"

    return-object v0

    .line 1990
    :pswitch_34
    const-string/jumbo v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_UP"

    return-object v0

    .line 1992
    :pswitch_38
    const-string/jumbo v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_DOWN"

    return-object v0

    .line 1976
    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_20
        :pswitch_28
        :pswitch_2c
        :pswitch_30
        :pswitch_34
        :pswitch_38
        :pswitch_24
    .end packed-switch
.end method

.method private updateSettings()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 2130
    iget-object v3, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2131
    .local v1, "resolver":Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    const/16 v3, 0xb

    if-ge v0, v3, :cond_1b

    .line 2132
    iget-object v3, p0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    sget-object v4, Landroid/provider/Settings$System;->ACTIVITY_ANIMATION_CONTROLS:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    aput v4, v3, v0

    .line 2131
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 2135
    :cond_1b
    const-string/jumbo v3, "animation_controls_duration"

    invoke-static {v1, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 2136
    .local v2, "temp":I
    iput v2, p0, Lcom/android/server/wm/AppTransition;->mAnimationDuration:I

    .line 2129
    return-void
.end method


# virtual methods
.method canSkipFirstFrame()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1444
    iget v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-eq v2, v0, :cond_14

    .line 1445
    iget v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_14

    .line 1446
    iget v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_12

    .line 1444
    :goto_11
    return v0

    :cond_12
    move v0, v1

    .line 1446
    goto :goto_11

    :cond_14
    move v0, v1

    .line 1444
    goto :goto_11
.end method

.method clear()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 425
    iput v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 426
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 427
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 428
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 429
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    .line 430
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

    .line 431
    iput-boolean v2, p0, Lcom/android/server/wm/AppTransition;->mProlongedAnimationsEnded:Z

    .line 424
    return-void
.end method

.method createAspectScaledThumbnailEnterExitAnimationLocked(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZI)Landroid/view/animation/Animation;
    .registers 43
    .param p1, "thumbTransitState"    # I
    .param p2, "uiMode"    # I
    .param p3, "orientation"    # I
    .param p4, "transit"    # I
    .param p5, "containingFrame"    # Landroid/graphics/Rect;
    .param p6, "contentInsets"    # Landroid/graphics/Rect;
    .param p7, "surfaceInsets"    # Landroid/graphics/Rect;
    .param p8, "freeform"    # Z
    .param p9, "taskId"    # I

    .prologue
    .line 1099
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v14

    .line 1100
    .local v14, "appWidth":I
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v13

    .line 1101
    .local v13, "appHeight":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 1102
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v28

    .line 1103
    .local v28, "thumbWidthI":I
    if-lez v28, :cond_58

    move/from16 v5, v28

    :goto_1d
    int-to-float v0, v5

    move/from16 v27, v0

    .line 1104
    .local v27, "thumbWidth":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v24

    .line 1105
    .local v24, "thumbHeightI":I
    if-lez v24, :cond_5a

    move/from16 v5, v24

    :goto_2c
    int-to-float v0, v5

    move/from16 v23, v0

    .line 1106
    .local v23, "thumbHeight":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p5

    iget v6, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    move-object/from16 v0, p6

    iget v6, v0, Landroid/graphics/Rect;->left:I

    sub-int v25, v5, v6

    .line 1107
    .local v25, "thumbStartX":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p5

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sub-int v26, v5, v6

    .line 1109
    .local v26, "thumbStartY":I
    packed-switch p1, :pswitch_data_292

    .line 1215
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "Invalid thumbnail transition state"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1103
    .end local v23    # "thumbHeight":F
    .end local v24    # "thumbHeightI":I
    .end local v25    # "thumbStartX":I
    .end local v26    # "thumbStartY":I
    .end local v27    # "thumbWidth":F
    :cond_58
    const/4 v5, 0x1

    goto :goto_1d

    .line 1105
    .restart local v24    # "thumbHeightI":I
    .restart local v27    # "thumbWidth":F
    :cond_5a
    const/4 v5, 0x1

    goto :goto_2c

    .line 1112
    .restart local v23    # "thumbHeight":F
    .restart local v25    # "thumbStartX":I
    .restart local v26    # "thumbStartY":I
    :pswitch_5c
    if-nez p1, :cond_81

    const/16 v17, 0x1

    .line 1113
    .local v17, "scaleUp":Z
    :goto_60
    if-eqz p8, :cond_84

    if-eqz v17, :cond_84

    .line 1114
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p7

    move/from16 v3, p9

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailEnterFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/animation/Animation;

    move-result-object v7

    .line 1219
    .end local v17    # "scaleUp":Z
    .local v7, "a":Landroid/view/animation/Animation;
    :goto_70
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getAspectScaleDuration()J

    move-result-wide v10

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getAspectScaleInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v12

    move-object/from16 v6, p0

    move v8, v14

    move v9, v13

    .line 1218
    invoke-virtual/range {v6 .. v12}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v5

    return-object v5

    .line 1112
    .end local v7    # "a":Landroid/view/animation/Animation;
    :cond_81
    const/16 v17, 0x0

    .restart local v17    # "scaleUp":Z
    goto :goto_60

    .line 1116
    :cond_84
    if-eqz p8, :cond_93

    .line 1117
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p7

    move/from16 v3, p9

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailExitFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/animation/Animation;

    move-result-object v7

    .restart local v7    # "a":Landroid/view/animation/Animation;
    goto :goto_70

    .line 1120
    .end local v7    # "a":Landroid/view/animation/Animation;
    :cond_93
    new-instance v18, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x1

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1123
    .local v18, "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1124
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1128
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1129
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1132
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 1133
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1135
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/AppTransition;->shouldScaleDownThumbnailTransition(II)Z

    move-result v5

    if-eqz v5, :cond_1ed

    .line 1138
    move-object/from16 v0, p6

    iget v5, v0, Landroid/graphics/Rect;->left:I

    sub-int v5, v14, v5

    move-object/from16 v0, p6

    iget v6, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    .line 1137
    div-float v16, v27, v5

    .line 1139
    .local v16, "scale":F
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    if-nez v5, :cond_104

    .line 1140
    div-float v5, v23, v16

    float-to-int v0, v5

    move/from16 v30, v0

    .line 1141
    .local v30, "unscaledThumbHeight":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int v6, v6, v30

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 1144
    .end local v30    # "unscaledThumbHeight":I
    :cond_104
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1146
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    .line 1147
    if-eqz v17, :cond_1bd

    move/from16 v5, v16

    :goto_113
    if-eqz v17, :cond_1c1

    const/high16 v6, 0x3f800000    # 1.0f

    .line 1148
    :goto_117
    if-eqz v17, :cond_1c5

    move/from16 v7, v16

    :goto_11b
    if-eqz v17, :cond_1c9

    const/high16 v8, 0x3f800000    # 1.0f

    .line 1149
    :goto_11f
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    .line 1150
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    move-object/from16 v0, p6

    iget v11, v0, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    .line 1146
    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1151
    .local v4, "scaleAnim":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p5

    iget v6, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    int-to-float v0, v5

    move/from16 v21, v0

    .line 1152
    .local v21, "targetX":F
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    .line 1153
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    mul-float v6, v6, v16

    .line 1152
    sub-float v31, v5, v6

    .line 1154
    .local v31, "x":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p5

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    int-to-float v0, v5

    move/from16 v22, v0

    .line 1155
    .local v22, "targetY":F
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    .line 1156
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    mul-float v6, v6, v16

    .line 1155
    sub-float v32, v5, v6

    .line 1157
    .local v32, "y":F
    sub-float v19, v21, v31

    .line 1158
    .local v19, "startX":F
    sub-float v20, v22, v32

    .line 1159
    .local v20, "startY":F
    if-eqz v17, :cond_1cd

    .line 1160
    new-instance v15, Landroid/view/animation/ClipRectAnimation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v15, v5, v6}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1162
    .local v15, "clipAnim":Landroid/view/animation/Animation;
    :goto_18f
    if-eqz v17, :cond_1db

    .line 1163
    const/4 v5, 0x0

    move-object/from16 v0, p6

    iget v6, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    sub-float v6, v20, v6

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v5, v6, v8}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v29

    .line 1166
    .local v29, "translateAnim":Landroid/view/animation/Animation;
    :goto_1a2
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1167
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1168
    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1187
    .end local v4    # "scaleAnim":Landroid/view/animation/Animation;
    .end local v16    # "scale":F
    .end local v19    # "startX":F
    .end local v20    # "startY":F
    .end local v21    # "targetX":F
    .end local v22    # "targetY":F
    .end local v31    # "x":F
    .end local v32    # "y":F
    :goto_1b3
    move-object/from16 v7, v18

    .line 1188
    .restart local v7    # "a":Landroid/view/animation/Animation;
    const/4 v5, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    goto/16 :goto_70

    .line 1147
    .end local v7    # "a":Landroid/view/animation/Animation;
    .end local v15    # "clipAnim":Landroid/view/animation/Animation;
    .end local v29    # "translateAnim":Landroid/view/animation/Animation;
    .restart local v16    # "scale":F
    :cond_1bd
    const/high16 v5, 0x3f800000    # 1.0f

    goto/16 :goto_113

    :cond_1c1
    move/from16 v6, v16

    goto/16 :goto_117

    .line 1148
    :cond_1c5
    const/high16 v7, 0x3f800000    # 1.0f

    goto/16 :goto_11b

    :cond_1c9
    move/from16 v8, v16

    goto/16 :goto_11f

    .line 1161
    .restart local v4    # "scaleAnim":Landroid/view/animation/Animation;
    .restart local v19    # "startX":F
    .restart local v20    # "startY":F
    .restart local v21    # "targetX":F
    .restart local v22    # "targetY":F
    .restart local v31    # "x":F
    .restart local v32    # "y":F
    :cond_1cd
    new-instance v15, Landroid/view/animation/ClipRectAnimation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-direct {v15, v5, v6}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .restart local v15    # "clipAnim":Landroid/view/animation/Animation;
    goto :goto_18f

    .line 1164
    :cond_1db
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p6

    iget v8, v0, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    sub-float v8, v20, v8

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v5, v1, v6, v8}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v29

    .restart local v29    # "translateAnim":Landroid/view/animation/Animation;
    goto :goto_1a2

    .line 1172
    .end local v4    # "scaleAnim":Landroid/view/animation/Animation;
    .end local v15    # "clipAnim":Landroid/view/animation/Animation;
    .end local v16    # "scale":F
    .end local v19    # "startX":F
    .end local v20    # "startY":F
    .end local v21    # "targetX":F
    .end local v22    # "targetY":F
    .end local v29    # "translateAnim":Landroid/view/animation/Animation;
    .end local v31    # "x":F
    .end local v32    # "y":F
    :cond_1ed
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int v6, v6, v24

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 1173
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int v6, v6, v28

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 1175
    if-eqz v17, :cond_23a

    .line 1176
    new-instance v15, Landroid/view/animation/ClipRectAnimation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v15, v5, v6}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1178
    .restart local v15    # "clipAnim":Landroid/view/animation/Animation;
    :goto_218
    if-eqz v17, :cond_248

    .line 1179
    move/from16 v0, v25

    int-to-float v5, v0

    const/4 v6, 0x0

    .line 1180
    move-object/from16 v0, p6

    iget v8, v0, Landroid/graphics/Rect;->top:I

    sub-int v8, v26, v8

    int-to-float v8, v8

    const/4 v9, 0x0

    .line 1179
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v8, v9}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v29

    .line 1184
    .restart local v29    # "translateAnim":Landroid/view/animation/Animation;
    :goto_22c
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1185
    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1b3

    .line 1177
    .end local v15    # "clipAnim":Landroid/view/animation/Animation;
    .end local v29    # "translateAnim":Landroid/view/animation/Animation;
    :cond_23a
    new-instance v15, Landroid/view/animation/ClipRectAnimation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-direct {v15, v5, v6}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .restart local v15    # "clipAnim":Landroid/view/animation/Animation;
    goto :goto_218

    .line 1181
    :cond_248
    const/4 v5, 0x0

    move/from16 v0, v25

    int-to-float v6, v0

    const/4 v8, 0x0

    .line 1182
    move-object/from16 v0, p6

    iget v9, v0, Landroid/graphics/Rect;->top:I

    sub-int v9, v26, v9

    int-to-float v9, v9

    .line 1181
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v8, v9}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v29

    .restart local v29    # "translateAnim":Landroid/view/animation/Animation;
    goto :goto_22c

    .line 1194
    .end local v15    # "clipAnim":Landroid/view/animation/Animation;
    .end local v17    # "scaleUp":Z
    .end local v18    # "set":Landroid/view/animation/AnimationSet;
    .end local v29    # "translateAnim":Landroid/view/animation/Animation;
    :pswitch_25b
    const/16 v5, 0xe

    move/from16 v0, p4

    if-ne v0, v5, :cond_26b

    .line 1197
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct {v7, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v7    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_70

    .line 1199
    .end local v7    # "a":Landroid/view/animation/Animation;
    :cond_26b
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v7, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v7    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_70

    .line 1205
    .end local v7    # "a":Landroid/view/animation/Animation;
    :pswitch_276
    const/16 v5, 0xe

    move/from16 v0, p4

    if-ne v0, v5, :cond_286

    .line 1208
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v7, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v7    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_70

    .line 1210
    .end local v7    # "a":Landroid/view/animation/Animation;
    :cond_286
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v7, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v7    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_70

    .line 1109
    nop

    :pswitch_data_292
    .packed-switch 0x0
        :pswitch_5c
        :pswitch_25b
        :pswitch_276
        :pswitch_5c
    .end packed-switch
.end method

.method createThumbnailAspectScaleAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Bitmap;III)Landroid/view/animation/Animation;
    .registers 43
    .param p1, "appRect"    # Landroid/graphics/Rect;
    .param p2, "contentInsets"    # Landroid/graphics/Rect;
    .param p3, "thumbnailHeader"    # Landroid/graphics/Bitmap;
    .param p4, "taskId"    # I
    .param p5, "uiMode"    # I
    .param p6, "orientation"    # I

    .prologue
    .line 939
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v32

    .line 940
    .local v32, "thumbWidthI":I
    if-lez v32, :cond_1b7

    move/from16 v7, v32

    :goto_8
    int-to-float v0, v7

    move/from16 v31, v0

    .line 941
    .local v31, "thumbWidth":F
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v30

    .line 942
    .local v30, "thumbHeightI":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v22

    .line 944
    .local v22, "appWidth":I
    move/from16 v0, v22

    int-to-float v7, v0

    div-float v8, v7, v31

    .line 945
    .local v8, "scaleW":F
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1, v7}, Lcom/android/server/wm/AppTransition;->getNextAppTransitionStartRect(ILandroid/graphics/Rect;)V

    .line 952
    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/AppTransition;->shouldScaleDownThumbnailTransition(II)Z

    move-result v7

    if-eqz v7, :cond_1ba

    .line 953
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v0, v7

    move/from16 v26, v0

    .line 954
    .local v26, "fromX":F
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v0, v7

    move/from16 v27, v0

    .line 958
    .local v27, "fromY":F
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v9, v8, v9

    mul-float/2addr v7, v9

    move-object/from16 v0, p1

    iget v9, v0, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    add-float v33, v7, v9

    .line 959
    .local v33, "toX":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    const/high16 v9, 0x3f800000    # 1.0f

    div-float/2addr v9, v8

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v9, v10, v9

    mul-float/2addr v7, v9

    move-object/from16 v0, p1

    iget v9, v0, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    add-float v34, v7, v9

    .line 960
    .local v34, "toY":F
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v11, v7

    .line 961
    .local v11, "pivotX":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    div-float v12, v7, v8

    .line 962
    .local v12, "pivotY":F
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    if-eqz v7, :cond_93

    .line 965
    move/from16 v0, v30

    int-to-float v7, v0

    sub-float v27, v27, v7

    .line 966
    move/from16 v0, v30

    int-to-float v7, v0

    mul-float/2addr v7, v8

    sub-float v34, v34, v7

    .line 976
    :cond_93
    :goto_93
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getAspectScaleDuration()J

    move-result-wide v24

    .line 977
    .local v24, "duration":J
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getAspectScaleInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v28

    .line 978
    .local v28, "interpolator":Landroid/view/animation/Interpolator;
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v7, :cond_1e8

    .line 980
    new-instance v6, Landroid/view/animation/ScaleAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    move v10, v8

    invoke-direct/range {v6 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 981
    .local v6, "scale":Landroid/view/animation/Animation;
    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 982
    move-wide/from16 v0, v24

    invoke-virtual {v6, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 983
    new-instance v21, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    move-object/from16 v0, v21

    invoke-direct {v0, v7, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 984
    .local v21, "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v9, 0x13

    if-ne v7, v9, :cond_1de

    .line 985
    sget-object v7, Lcom/android/server/wm/AppTransition;->THUMBNAIL_DOCK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 984
    :goto_c9
    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 986
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v9, 0x13

    if-ne v7, v9, :cond_1e4

    .line 987
    const-wide/16 v16, 0x2

    div-long v16, v24, v16

    .line 986
    :goto_da
    move-object/from16 v0, v21

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 989
    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v33

    move/from16 v3, v27

    move/from16 v4, v34

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v35

    .line 990
    .local v35, "translate":Landroid/view/animation/Animation;
    move-object/from16 v0, v35

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 991
    move-object/from16 v0, v35

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 993
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v0, v32

    move/from16 v1, v30

    invoke-virtual {v7, v9, v10, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 994
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 998
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 999
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    div-float/2addr v9, v8

    float-to-int v9, v9

    iput v9, v7, Landroid/graphics/Rect;->right:I

    .line 1000
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    div-float/2addr v9, v8

    float-to-int v9, v9

    iput v9, v7, Landroid/graphics/Rect;->bottom:I

    .line 1002
    if-eqz p2, :cond_163

    .line 1003
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/Rect;->left:I

    neg-int v9, v9

    int-to-float v9, v9

    mul-float/2addr v9, v8

    float-to-int v9, v9

    .line 1004
    move-object/from16 v0, p2

    iget v10, v0, Landroid/graphics/Rect;->top:I

    neg-int v10, v10

    int-to-float v10, v10

    mul-float/2addr v10, v8

    float-to-int v10, v10

    .line 1005
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->right:I

    neg-int v13, v13

    int-to-float v13, v13

    mul-float/2addr v13, v8

    float-to-int v13, v13

    .line 1006
    move-object/from16 v0, p2

    iget v14, v0, Landroid/graphics/Rect;->bottom:I

    neg-int v14, v14

    int-to-float v14, v14

    mul-float/2addr v14, v8

    float-to-int v14, v14

    .line 1003
    invoke-virtual {v7, v9, v10, v13, v14}, Landroid/graphics/Rect;->inset(IIII)V

    .line 1009
    :cond_163
    new-instance v23, Landroid/view/animation/ClipRectAnimation;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, v23

    invoke-direct {v0, v7, v9}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1010
    .local v23, "clipAnim":Landroid/view/animation/Animation;
    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1011
    invoke-virtual/range {v23 .. v25}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1014
    new-instance v29, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x0

    move-object/from16 v0, v29

    invoke-direct {v0, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1015
    .local v29, "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1016
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    if-nez v7, :cond_196

    .line 1018
    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1020
    :cond_196
    move-object/from16 v0, v29

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1021
    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1022
    move-object/from16 v15, v29

    .line 1046
    .end local v23    # "clipAnim":Landroid/view/animation/Animation;
    .local v15, "a":Landroid/view/animation/Animation;
    :goto_1a6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v17

    const-wide/16 v18, 0x0

    .line 1047
    const/16 v20, 0x0

    move-object/from16 v14, p0

    move/from16 v16, v22

    .line 1046
    invoke-virtual/range {v14 .. v20}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v7

    return-object v7

    .line 940
    .end local v6    # "scale":Landroid/view/animation/Animation;
    .end local v8    # "scaleW":F
    .end local v11    # "pivotX":F
    .end local v12    # "pivotY":F
    .end local v15    # "a":Landroid/view/animation/Animation;
    .end local v21    # "alpha":Landroid/view/animation/Animation;
    .end local v22    # "appWidth":I
    .end local v24    # "duration":J
    .end local v26    # "fromX":F
    .end local v27    # "fromY":F
    .end local v28    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v29    # "set":Landroid/view/animation/AnimationSet;
    .end local v30    # "thumbHeightI":I
    .end local v31    # "thumbWidth":F
    .end local v33    # "toX":F
    .end local v34    # "toY":F
    .end local v35    # "translate":Landroid/view/animation/Animation;
    :cond_1b7
    const/4 v7, 0x1

    goto/16 :goto_8

    .line 969
    .restart local v8    # "scaleW":F
    .restart local v22    # "appWidth":I
    .restart local v30    # "thumbHeightI":I
    .restart local v31    # "thumbWidth":F
    :cond_1ba
    const/4 v11, 0x0

    .line 970
    .restart local v11    # "pivotX":F
    const/4 v12, 0x0

    .line 971
    .restart local v12    # "pivotY":F
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v0, v7

    move/from16 v26, v0

    .line 972
    .restart local v26    # "fromX":F
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v0, v7

    move/from16 v27, v0

    .line 973
    .restart local v27    # "fromY":F
    move-object/from16 v0, p1

    iget v7, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v7

    move/from16 v33, v0

    .line 974
    .restart local v33    # "toX":F
    move-object/from16 v0, p1

    iget v7, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v7

    move/from16 v34, v0

    .restart local v34    # "toY":F
    goto/16 :goto_93

    .line 985
    .restart local v6    # "scale":Landroid/view/animation/Animation;
    .restart local v21    # "alpha":Landroid/view/animation/Animation;
    .restart local v24    # "duration":J
    .restart local v28    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_1de
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    goto/16 :goto_c9

    :cond_1e4
    move-wide/from16 v16, v24

    .line 988
    goto/16 :goto_da

    .line 1025
    .end local v6    # "scale":Landroid/view/animation/Animation;
    .end local v21    # "alpha":Landroid/view/animation/Animation;
    :cond_1e8
    new-instance v6, Landroid/view/animation/ScaleAnimation;

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    move-object v13, v6

    move v14, v8

    move/from16 v16, v8

    move/from16 v18, v11

    move/from16 v19, v12

    invoke-direct/range {v13 .. v19}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1026
    .restart local v6    # "scale":Landroid/view/animation/Animation;
    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1027
    move-wide/from16 v0, v24

    invoke-virtual {v6, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1028
    new-instance v21, Landroid/view/animation/AlphaAnimation;

    const/4 v7, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move-object/from16 v0, v21

    invoke-direct {v0, v7, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1029
    .restart local v21    # "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1030
    move-object/from16 v0, v21

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1031
    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v26

    move/from16 v3, v34

    move/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v35

    .line 1032
    .restart local v35    # "translate":Landroid/view/animation/Animation;
    move-object/from16 v0, v35

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1033
    move-object/from16 v0, v35

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1036
    new-instance v29, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x0

    move-object/from16 v0, v29

    invoke-direct {v0, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1037
    .restart local v29    # "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1038
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    if-nez v7, :cond_253

    .line 1040
    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1042
    :cond_253
    move-object/from16 v0, v29

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1043
    move-object/from16 v15, v29

    .restart local v15    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_1a6
.end method

.method createThumbnailEnterExitAnimationLocked(ILandroid/graphics/Rect;II)Landroid/view/animation/Animation;
    .registers 27
    .param p1, "thumbTransitState"    # I
    .param p2, "containingFrame"    # Landroid/graphics/Rect;
    .param p3, "transit"    # I
    .param p4, "taskId"    # I

    .prologue
    .line 1333
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v15

    .line 1334
    .local v15, "appWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v14

    .line 1335
    .local v14, "appHeight":I
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTransition;->getAppTransitionThumbnailHeader(I)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 1337
    .local v21, "thumbnailHeader":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 1338
    if-eqz v21, :cond_3f

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    .line 1339
    .local v20, "thumbWidthI":I
    :goto_1f
    if-lez v20, :cond_42

    .end local v20    # "thumbWidthI":I
    :goto_21
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v19, v0

    .line 1340
    .local v19, "thumbWidth":F
    if-eqz v21, :cond_45

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    .line 1341
    .local v18, "thumbHeightI":I
    :goto_2c
    if-lez v18, :cond_48

    .end local v18    # "thumbHeightI":I
    :goto_2e
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v17, v0

    .line 1343
    .local v17, "thumbHeight":F
    packed-switch p1, :pswitch_data_e2

    .line 1390
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "Invalid thumbnail transition state"

    invoke-direct {v4, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v17    # "thumbHeight":F
    .end local v19    # "thumbWidth":F
    :cond_3f
    move/from16 v20, v15

    .line 1338
    goto :goto_1f

    .line 1339
    .restart local v20    # "thumbWidthI":I
    :cond_42
    const/16 v20, 0x1

    goto :goto_21

    .end local v20    # "thumbWidthI":I
    .restart local v19    # "thumbWidth":F
    :cond_45
    move/from16 v18, v14

    .line 1340
    goto :goto_2c

    .line 1341
    .restart local v18    # "thumbHeightI":I
    :cond_48
    const/16 v18, 0x1

    goto :goto_2e

    .line 1346
    .end local v18    # "thumbHeightI":I
    .restart local v17    # "thumbHeight":F
    :pswitch_4b
    int-to-float v4, v15

    div-float v3, v19, v4

    .line 1347
    .local v3, "scaleW":F
    int-to-float v4, v14

    div-float v5, v17, v4

    .line 1348
    .local v5, "scaleH":F
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 1349
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    invoke-static {v7, v3}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v7

    .line 1350
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    invoke-static {v8, v5}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v8

    .line 1348
    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1393
    .end local v3    # "scaleW":F
    .end local v5    # "scaleH":F
    .local v2, "a":Landroid/view/animation/Animation;
    :goto_6e
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v2, v15, v14, v1}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimation(Landroid/view/animation/Animation;III)Landroid/view/animation/Animation;

    move-result-object v4

    return-object v4

    .line 1355
    .end local v2    # "a":Landroid/view/animation/Animation;
    :pswitch_77
    const/16 v4, 0xe

    move/from16 v0, p3

    if-ne v0, v4, :cond_86

    .line 1359
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-direct {v2, v4, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v2    # "a":Landroid/view/animation/Animation;
    goto :goto_6e

    .line 1362
    .end local v2    # "a":Landroid/view/animation/Animation;
    :cond_86
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v2, v4, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v2    # "a":Landroid/view/animation/Animation;
    goto :goto_6e

    .line 1369
    .end local v2    # "a":Landroid/view/animation/Animation;
    :pswitch_90
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v2, v4, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1370
    .restart local v2    # "a":Landroid/view/animation/Animation;
    goto :goto_6e

    .line 1374
    .end local v2    # "a":Landroid/view/animation/Animation;
    :pswitch_9a
    int-to-float v4, v15

    div-float v3, v19, v4

    .line 1375
    .restart local v3    # "scaleW":F
    int-to-float v4, v14

    div-float v5, v17, v4

    .line 1376
    .restart local v5    # "scaleH":F
    new-instance v6, Landroid/view/animation/ScaleAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    .line 1377
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-static {v4, v3}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v11

    .line 1378
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-static {v4, v5}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v12

    move v8, v3

    move v10, v5

    .line 1376
    invoke-direct/range {v6 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1380
    .local v6, "scale":Landroid/view/animation/Animation;
    new-instance v13, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-direct {v13, v4, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1382
    .local v13, "alpha":Landroid/view/animation/Animation;
    new-instance v16, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1383
    .local v16, "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1384
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1385
    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 1386
    move-object/from16 v2, v16

    .line 1387
    .restart local v2    # "a":Landroid/view/animation/Animation;
    goto :goto_6e

    .line 1343
    :pswitch_data_e2
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_77
        :pswitch_90
        :pswitch_9a
    .end packed-switch
.end method

.method createThumbnailScaleAnimationLocked(IIILandroid/graphics/Bitmap;)Landroid/view/animation/Animation;
    .registers 24
    .param p1, "appWidth"    # I
    .param p2, "appHeight"    # I
    .param p3, "transit"    # I
    .param p4, "thumbnailHeader"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1292
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 1293
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    .line 1294
    .local v17, "thumbWidthI":I
    if-lez v17, :cond_7e

    .end local v17    # "thumbWidthI":I
    :goto_f
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v16, v0

    .line 1295
    .local v16, "thumbWidth":F
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    .line 1296
    .local v15, "thumbHeightI":I
    if-lez v15, :cond_81

    .end local v15    # "thumbHeightI":I
    :goto_1a
    int-to-float v14, v15

    .line 1298
    .local v14, "thumbHeight":F
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v7, :cond_83

    .line 1300
    move/from16 v0, p1

    int-to-float v7, v0

    div-float v6, v7, v16

    .line 1301
    .local v6, "scaleW":F
    move/from16 v0, p2

    int-to-float v7, v0

    div-float v8, v7, v14

    .line 1302
    .local v8, "scaleH":F
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    .line 1303
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    const/high16 v10, 0x3f800000    # 1.0f

    div-float/2addr v10, v6

    invoke-static {v9, v10}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v9

    .line 1304
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    const/high16 v11, 0x3f800000    # 1.0f

    div-float/2addr v11, v8

    invoke-static {v10, v11}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v10

    .line 1302
    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1305
    .local v4, "scale":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1307
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-direct {v12, v7, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1308
    .local v12, "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v12, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1311
    new-instance v13, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x0

    invoke-direct {v13, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1312
    .local v13, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v13, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1313
    invoke-virtual {v13, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1314
    move-object v5, v13

    .line 1324
    .end local v4    # "scale":Landroid/view/animation/Animation;
    .end local v12    # "alpha":Landroid/view/animation/Animation;
    .end local v13    # "set":Landroid/view/animation/AnimationSet;
    .local v5, "a":Landroid/view/animation/Animation;
    :goto_71
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimation(Landroid/view/animation/Animation;III)Landroid/view/animation/Animation;

    move-result-object v7

    return-object v7

    .line 1294
    .end local v5    # "a":Landroid/view/animation/Animation;
    .end local v6    # "scaleW":F
    .end local v8    # "scaleH":F
    .end local v14    # "thumbHeight":F
    .end local v16    # "thumbWidth":F
    .restart local v17    # "thumbWidthI":I
    :cond_7e
    const/16 v17, 0x1

    goto :goto_f

    .line 1296
    .end local v17    # "thumbWidthI":I
    .restart local v15    # "thumbHeightI":I
    .restart local v16    # "thumbWidth":F
    :cond_81
    const/4 v15, 0x1

    goto :goto_1a

    .line 1317
    .end local v15    # "thumbHeightI":I
    .restart local v14    # "thumbHeight":F
    :cond_83
    move/from16 v0, p1

    int-to-float v7, v0

    div-float v6, v7, v16

    .line 1318
    .restart local v6    # "scaleW":F
    move/from16 v0, p2

    int-to-float v7, v0

    div-float v8, v7, v14

    .line 1319
    .restart local v8    # "scaleH":F
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    .line 1320
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    const/high16 v11, 0x3f800000    # 1.0f

    div-float/2addr v11, v6

    invoke-static {v10, v11}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v10

    .line 1321
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    const/high16 v18, 0x3f800000    # 1.0f

    div-float v18, v18, v8

    move/from16 v0, v18

    invoke-static {v11, v0}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v11

    .line 1319
    invoke-direct/range {v5 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .restart local v5    # "a":Landroid/view/animation/Animation;
    goto :goto_71
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 2000
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2001
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAppTransitionState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->appStateToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2002
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-eqz v0, :cond_2a

    .line 2003
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2004
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->transitTypeToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2006
    :cond_2a
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    packed-switch v0, :pswitch_data_138

    .line 2046
    :goto_2f
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_41

    .line 2047
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionCallback="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2048
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2050
    :cond_41
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    if-eqz v0, :cond_73

    .line 2051
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLastUsedAppTransition="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2052
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    invoke-static {v0}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2053
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLastOpeningApp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2054
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastOpeningApp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2055
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLastClosingApp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2056
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastClosingApp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1999
    :cond_73
    return-void

    .line 2008
    :pswitch_74
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2009
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2010
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionEnter=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2011
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2012
    const-string/jumbo v0, " mNextAppTransitionExit=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2013
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2f

    .line 2016
    :pswitch_a4
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2017
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2018
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionInPlace=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2019
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_2f

    .line 2022
    :pswitch_c6
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 2023
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionStartX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2024
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2025
    const-string/jumbo v0, " mNextAppTransitionStartY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2026
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2027
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionStartWidth="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2028
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2029
    const-string/jumbo v0, " mNextAppTransitionStartHeight="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2030
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    goto/16 :goto_2f

    .line 2037
    :pswitch_10b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDefaultNextAppTransitionAnimationSpec="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2038
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2039
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionAnimationsSpecs="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2040
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2041
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionScaleUp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2042
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto/16 :goto_2f

    .line 2006
    nop

    :pswitch_data_138
    .packed-switch 0x1
        :pswitch_74
        :pswitch_c6
        :pswitch_10b
        :pswitch_10b
        :pswitch_10b
        :pswitch_10b
        :pswitch_a4
    .end packed-switch
.end method

.method freeze()V
    .registers 2

    .prologue
    .line 435
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->setAppTransition(I)V

    .line 436
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 437
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->setReady()V

    .line 438
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionCancelledLocked()V

    .line 434
    return-void
.end method

.method getAppStackClipMode()I
    .registers 3

    .prologue
    .line 1726
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v1, 0x12

    if-eq v0, v1, :cond_c

    .line 1727
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_e

    .line 1729
    :cond_c
    const/4 v0, 0x2

    .line 1726
    :goto_d
    return v0

    .line 1728
    :cond_e
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_c

    .line 1730
    const/4 v0, 0x0

    goto :goto_d
.end method

.method getAppTransition()I
    .registers 2

    .prologue
    .line 305
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    return v0
.end method

.method getAppTransitionThumbnailHeader(I)Landroid/graphics/Bitmap;
    .registers 5
    .param p1, "taskId"    # I

    .prologue
    const/4 v1, 0x0

    .line 346
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/AppTransitionAnimationSpec;

    .line 347
    .local v0, "spec":Landroid/view/AppTransitionAnimationSpec;
    if-nez v0, :cond_d

    .line 348
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    .line 350
    :cond_d
    if-eqz v0, :cond_11

    iget-object v1, v0, Landroid/view/AppTransitionAnimationSpec;->bitmap:Landroid/graphics/Bitmap;

    :cond_11
    return-object v1
.end method

.method getLastClipRevealMaxTranslation()I
    .registers 2

    .prologue
    .line 726
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealMaxTranslation:I

    return v0
.end method

.method getLastClipRevealTransitionDuration()J
    .registers 3

    .prologue
    .line 719
    iget-wide v0, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealTransitionDuration:J

    return-wide v0
.end method

.method getNextAppTransitionStartRect(ILandroid/graphics/Rect;)V
    .registers 7
    .param p1, "taskId"    # I
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 696
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/AppTransitionAnimationSpec;

    .line 697
    .local v0, "spec":Landroid/view/AppTransitionAnimationSpec;
    if-nez v0, :cond_c

    .line 698
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    .line 700
    :cond_c
    if-eqz v0, :cond_12

    iget-object v1, v0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    if-nez v1, :cond_3b

    .line 701
    :cond_12
    sget-object v1, Lcom/android/server/wm/AppTransition;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Starting rect for task: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " requested, but not available"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 702
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    .line 701
    invoke-static {v1, v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 703
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 695
    :goto_3a
    return-void

    .line 705
    :cond_3b
    iget-object v1, v0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_3a
.end method

.method getThumbnailTransitionState(Z)I
    .registers 3
    .param p1, "enter"    # Z

    .prologue
    .line 917
    if-eqz p1, :cond_a

    .line 918
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v0, :cond_8

    .line 919
    const/4 v0, 0x0

    return v0

    .line 921
    :cond_8
    const/4 v0, 0x2

    return v0

    .line 924
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v0, :cond_10

    .line 925
    const/4 v0, 0x1

    return v0

    .line 927
    :cond_10
    const/4 v0, 0x3

    return v0
.end method

.method goodToGo(Lcom/android/server/wm/AppWindowAnimator;Lcom/android/server/wm/AppWindowAnimator;Landroid/util/ArraySet;Landroid/util/ArraySet;)V
    .registers 13
    .param p1, "topOpeningAppAnimator"    # Lcom/android/server/wm/AppWindowAnimator;
    .param p2, "topClosingAppAnimator"    # Lcom/android/server/wm/AppWindowAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/AppWindowAnimator;",
            "Lcom/android/server/wm/AppWindowAnimator;",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    .local p4, "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    const/4 v7, 0x2

    const/4 v3, 0x0

    .line 396
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 397
    .local v1, "appTransition":I
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 398
    iput v7, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 400
    if-eqz p1, :cond_3a

    iget-object v4, p1, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v4, v4, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object v6, v4

    .line 401
    :goto_10
    if-eqz p2, :cond_3c

    iget-object v4, p2, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v4, v4, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object v5, v4

    .line 402
    :goto_17
    if-eqz p1, :cond_3e

    iget-object v4, p1, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    .line 403
    :goto_1b
    if-eqz p2, :cond_1f

    iget-object v3, p2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    .line 399
    :cond_1f
    invoke-direct {p0, v6, v5, v4, v3}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionStartingLocked(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 404
    iget-object v3, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v3

    invoke-virtual {v3, p3, v1}, Lcom/android/server/wm/DockedStackDividerController;->notifyAppTransitionStarting(Landroid/util/ArraySet;I)V

    .line 409
    iget v3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v4, 0x13

    if-ne v3, v4, :cond_39

    iget-boolean v3, p0, Lcom/android/server/wm/AppTransition;->mProlongedAnimationsEnded:Z

    if-eqz v3, :cond_40

    .line 395
    :cond_39
    return-void

    :cond_3a
    move-object v6, v3

    .line 400
    goto :goto_10

    :cond_3c
    move-object v5, v3

    .line 401
    goto :goto_17

    :cond_3e
    move-object v4, v3

    .line 402
    goto :goto_1b

    .line 410
    :cond_40
    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_46
    if-ltz v2, :cond_39

    .line 411
    invoke-virtual {p3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v3, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 412
    .local v0, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    invoke-virtual {v0, v7}, Lcom/android/server/wm/AppWindowAnimator;->startProlongAnimation(I)V

    .line 410
    add-int/lit8 v2, v2, -0x1

    goto :goto_46
.end method

.method hadClipRevealAnimation()Z
    .registers 2

    .prologue
    .line 733
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mLastHadClipReveal:Z

    return v0
.end method

.method isFetchingAppTransitionsSpecs()Z
    .registers 2

    .prologue
    .line 379
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsPending:Z

    return v0
.end method

.method isNextAppTransitionThumbnailDown()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 370
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_b

    .line 371
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_c

    .line 370
    :cond_b
    :goto_b
    return v0

    .line 371
    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method isNextAppTransitionThumbnailUp()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 365
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_b

    .line 366
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_c

    .line 365
    :cond_b
    :goto_b
    return v0

    .line 366
    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method isNextThumbnailTransitionAspectScaled()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 355
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_b

    .line 356
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_c

    .line 355
    :cond_b
    :goto_b
    return v0

    .line 356
    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method isNextThumbnailTransitionScaleUp()Z
    .registers 2

    .prologue
    .line 361
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    return v0
.end method

.method isReady()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 320
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    if-eq v1, v0, :cond_a

    .line 321
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_b

    .line 320
    :cond_a
    :goto_a
    return v0

    .line 321
    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method isRunning()Z
    .registers 3

    .prologue
    .line 330
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method isTimeout()Z
    .registers 3

    .prologue
    .line 338
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method isTransitionEqual(I)Z
    .registers 3
    .param p1, "transit"    # I

    .prologue
    .line 301
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method isTransitionSet()Z
    .registers 3

    .prologue
    .line 297
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method loadAnimation(Landroid/view/WindowManager$LayoutParams;IZIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZI)Landroid/view/animation/Animation;
    .registers 32
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "transit"    # I
    .param p3, "enter"    # Z
    .param p4, "uiMode"    # I
    .param p5, "orientation"    # I
    .param p6, "frame"    # Landroid/graphics/Rect;
    .param p7, "displayFrame"    # Landroid/graphics/Rect;
    .param p8, "insets"    # Landroid/graphics/Rect;
    .param p9, "surfaceInsets"    # Landroid/graphics/Rect;
    .param p10, "isVoiceInteraction"    # Z
    .param p11, "freeform"    # Z
    .param p12, "taskId"    # I

    .prologue
    .line 1474
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/server/wm/AppTransition;->mIsResId:Z

    .line 1476
    if-eqz p10, :cond_26

    const/4 v6, 0x6

    move/from16 v0, p2

    if-eq v0, v6, :cond_12

    .line 1477
    const/16 v6, 0x8

    move/from16 v0, p2

    if-ne v0, v6, :cond_20

    .line 1479
    :cond_12
    if-eqz p3, :cond_41

    .line 1480
    const v6, 0x10a00c6

    .line 1479
    :goto_17
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v16

    .line 1722
    .local v16, "a":Landroid/view/animation/Animation;
    :goto_1f
    return-object v16

    .line 1478
    .end local v16    # "a":Landroid/view/animation/Animation;
    :cond_20
    const/16 v6, 0xa

    move/from16 v0, p2

    if-eq v0, v6, :cond_12

    .line 1486
    :cond_26
    if-eqz p10, :cond_4b

    const/4 v6, 0x7

    move/from16 v0, p2

    if-eq v0, v6, :cond_33

    .line 1487
    const/16 v6, 0x9

    move/from16 v0, p2

    if-ne v0, v6, :cond_45

    .line 1489
    :cond_33
    if-eqz p3, :cond_5c

    .line 1490
    const v6, 0x10a00c4

    .line 1489
    :goto_38
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v16

    .restart local v16    # "a":Landroid/view/animation/Animation;
    goto :goto_1f

    .line 1481
    .end local v16    # "a":Landroid/view/animation/Animation;
    :cond_41
    const v6, 0x10a00c7

    goto :goto_17

    .line 1488
    :cond_45
    const/16 v6, 0xb

    move/from16 v0, p2

    if-eq v0, v6, :cond_33

    .line 1496
    :cond_4b
    const/16 v6, 0x12

    move/from16 v0, p2

    if-ne v0, v6, :cond_60

    .line 1497
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p8

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/AppTransition;->createRelaunchAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v16

    .restart local v16    # "a":Landroid/view/animation/Animation;
    goto :goto_1f

    .line 1491
    .end local v16    # "a":Landroid/view/animation/Animation;
    :cond_5c
    const v6, 0x10a00c5

    goto :goto_38

    .line 1503
    :cond_60
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7d

    .line 1504
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    if-eqz p3, :cond_78

    .line 1505
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    .line 1504
    :goto_71
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v16

    .restart local v16    # "a":Landroid/view/animation/Animation;
    goto :goto_1f

    .line 1505
    .end local v16    # "a":Landroid/view/animation/Animation;
    :cond_78
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    goto :goto_71

    .line 1511
    :cond_7d
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v7, 0x7

    if-ne v6, v7, :cond_93

    .line 1512
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v16

    .restart local v16    # "a":Landroid/view/animation/Animation;
    goto :goto_1f

    .line 1518
    .end local v16    # "a":Landroid/view/animation/Animation;
    :cond_93
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_ab

    .line 1519
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/wm/AppTransition;->createClipRevealAnimationLocked(IZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v16

    .restart local v16    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_1f

    .line 1525
    .end local v16    # "a":Landroid/view/animation/Animation;
    :cond_ab
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_c0

    .line 1526
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wm/AppTransition;->createScaleUpAnimationLocked(IZLandroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v16

    .restart local v16    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_1f

    .line 1532
    .end local v16    # "a":Landroid/view/animation/Animation;
    :cond_c0
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_ce

    .line 1533
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_f2

    .line 1535
    :cond_ce
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_f0

    const/4 v6, 0x1

    .line 1534
    :goto_d6
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1536
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTransition;->getThumbnailTransitionState(Z)I

    move-result v6

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move/from16 v2, p2

    move/from16 v3, p12

    invoke-virtual {v0, v6, v1, v2, v3}, Lcom/android/server/wm/AppTransition;->createThumbnailEnterExitAnimationLocked(ILandroid/graphics/Rect;II)Landroid/view/animation/Animation;

    move-result-object v16

    .restart local v16    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_1f

    .line 1535
    .end local v16    # "a":Landroid/view/animation/Animation;
    :cond_f0
    const/4 v6, 0x0

    goto :goto_d6

    .line 1546
    :cond_f2
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v7, 0x5

    if-eq v6, v7, :cond_100

    .line 1547
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_12e

    .line 1549
    :cond_100
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_12c

    const/4 v6, 0x1

    .line 1548
    :goto_108
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1551
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTransition;->getThumbnailTransitionState(Z)I

    move-result v7

    move-object/from16 v6, p0

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p2

    move-object/from16 v11, p6

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move/from16 v14, p11

    move/from16 v15, p12

    .line 1550
    invoke-virtual/range {v6 .. v15}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailEnterExitAnimationLocked(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZI)Landroid/view/animation/Animation;

    move-result-object v16

    .restart local v16    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_1f

    .line 1549
    .end local v16    # "a":Landroid/view/animation/Animation;
    :cond_12c
    const/4 v6, 0x0

    goto :goto_108

    .line 1562
    :cond_12e
    const/16 v18, 0x0

    .line 1563
    .local v18, "animAttr":I
    packed-switch p2, :pswitch_data_360

    .line 1708
    :goto_133
    :pswitch_133
    if-eqz v18, :cond_35b

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AppTransition;->loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v16

    .line 1709
    .restart local v16    # "a":Landroid/view/animation/Animation;
    :goto_13f
    if-eqz v16, :cond_151

    .line 1710
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mAnimationDuration:I

    if-lez v6, :cond_151

    .line 1711
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mAnimationDuration:I

    int-to-long v6, v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1714
    :cond_151
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/server/wm/AppTransition;->mIsResId:Z

    goto/16 :goto_1f

    .line 1565
    .end local v16    # "a":Landroid/view/animation/Animation;
    :pswitch_158
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    if-eqz v6, :cond_17b

    .line 1566
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/server/wm/AppTransition;->mIsResId:Z

    .line 1567
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-static {v6}, Lcom/android/internal/util/rr/AwesomeAnimationHelper;->getAnimations(I)[I

    move-result-object v17

    .line 1568
    .local v17, "animArray":[I
    if-eqz p3, :cond_177

    .line 1569
    const/4 v6, 0x1

    aget v18, v17, v6

    goto :goto_133

    .line 1570
    :cond_177
    const/4 v6, 0x0

    aget v18, v17, v6

    goto :goto_133

    .line 1572
    .end local v17    # "animArray":[I
    :cond_17b
    if-eqz p3, :cond_180

    .line 1573
    const/16 v18, 0x4

    goto :goto_133

    .line 1574
    :cond_180
    const/16 v18, 0x5

    goto :goto_133

    .line 1578
    :pswitch_183
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    if-eqz v6, :cond_1a6

    .line 1579
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/server/wm/AppTransition;->mIsResId:Z

    .line 1580
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-static {v6}, Lcom/android/internal/util/rr/AwesomeAnimationHelper;->getAnimations(I)[I

    move-result-object v17

    .line 1581
    .restart local v17    # "animArray":[I
    if-eqz p3, :cond_1a2

    .line 1582
    const/4 v6, 0x1

    aget v18, v17, v6

    goto :goto_133

    .line 1583
    :cond_1a2
    const/4 v6, 0x0

    aget v18, v17, v6

    goto :goto_133

    .line 1585
    .end local v17    # "animArray":[I
    :cond_1a6
    if-eqz p3, :cond_1ab

    .line 1586
    const/16 v18, 0x6

    goto :goto_133

    .line 1587
    :cond_1ab
    const/16 v18, 0x7

    goto :goto_133

    .line 1592
    :pswitch_1ae
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    const/4 v7, 0x2

    aget v6, v6, v7

    if-eqz v6, :cond_1d3

    .line 1593
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/server/wm/AppTransition;->mIsResId:Z

    .line 1594
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    const/4 v7, 0x2

    aget v6, v6, v7

    invoke-static {v6}, Lcom/android/internal/util/rr/AwesomeAnimationHelper;->getAnimations(I)[I

    move-result-object v17

    .line 1595
    .restart local v17    # "animArray":[I
    if-eqz p3, :cond_1ce

    .line 1596
    const/4 v6, 0x1

    aget v18, v17, v6

    goto/16 :goto_133

    .line 1597
    :cond_1ce
    const/4 v6, 0x0

    aget v18, v17, v6

    goto/16 :goto_133

    .line 1599
    .end local v17    # "animArray":[I
    :cond_1d3
    if-eqz p3, :cond_1d9

    .line 1600
    const/16 v18, 0x8

    goto/16 :goto_133

    .line 1601
    :cond_1d9
    const/16 v18, 0x9

    goto/16 :goto_133

    .line 1605
    :pswitch_1dd
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    const/4 v7, 0x3

    aget v6, v6, v7

    if-eqz v6, :cond_202

    .line 1606
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/server/wm/AppTransition;->mIsResId:Z

    .line 1607
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    const/4 v7, 0x3

    aget v6, v6, v7

    invoke-static {v6}, Lcom/android/internal/util/rr/AwesomeAnimationHelper;->getAnimations(I)[I

    move-result-object v17

    .line 1608
    .restart local v17    # "animArray":[I
    if-eqz p3, :cond_1fd

    .line 1609
    const/4 v6, 0x1

    aget v18, v17, v6

    goto/16 :goto_133

    .line 1610
    :cond_1fd
    const/4 v6, 0x0

    aget v18, v17, v6

    goto/16 :goto_133

    .line 1612
    .end local v17    # "animArray":[I
    :cond_202
    if-eqz p3, :cond_208

    .line 1613
    const/16 v18, 0xa

    goto/16 :goto_133

    .line 1614
    :cond_208
    const/16 v18, 0xb

    goto/16 :goto_133

    .line 1618
    :pswitch_20c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    const/4 v7, 0x4

    aget v6, v6, v7

    if-eqz v6, :cond_231

    .line 1619
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/server/wm/AppTransition;->mIsResId:Z

    .line 1620
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    const/4 v7, 0x4

    aget v6, v6, v7

    invoke-static {v6}, Lcom/android/internal/util/rr/AwesomeAnimationHelper;->getAnimations(I)[I

    move-result-object v17

    .line 1621
    .restart local v17    # "animArray":[I
    if-eqz p3, :cond_22c

    .line 1622
    const/4 v6, 0x1

    aget v18, v17, v6

    goto/16 :goto_133

    .line 1623
    :cond_22c
    const/4 v6, 0x0

    aget v18, v17, v6

    goto/16 :goto_133

    .line 1625
    .end local v17    # "animArray":[I
    :cond_231
    if-eqz p3, :cond_237

    .line 1626
    const/16 v18, 0xc

    goto/16 :goto_133

    .line 1627
    :cond_237
    const/16 v18, 0xd

    goto/16 :goto_133

    .line 1631
    :pswitch_23b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    const/4 v7, 0x5

    aget v6, v6, v7

    if-eqz v6, :cond_260

    .line 1632
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/server/wm/AppTransition;->mIsResId:Z

    .line 1633
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    const/4 v7, 0x5

    aget v6, v6, v7

    invoke-static {v6}, Lcom/android/internal/util/rr/AwesomeAnimationHelper;->getAnimations(I)[I

    move-result-object v17

    .line 1634
    .restart local v17    # "animArray":[I
    if-eqz p3, :cond_25b

    .line 1635
    const/4 v6, 0x1

    aget v18, v17, v6

    goto/16 :goto_133

    .line 1636
    :cond_25b
    const/4 v6, 0x0

    aget v18, v17, v6

    goto/16 :goto_133

    .line 1638
    .end local v17    # "animArray":[I
    :cond_260
    if-eqz p3, :cond_266

    .line 1639
    const/16 v18, 0xe

    goto/16 :goto_133

    .line 1640
    :cond_266
    const/16 v18, 0xf

    goto/16 :goto_133

    .line 1644
    :pswitch_26a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    const/4 v7, 0x6

    aget v6, v6, v7

    if-eqz v6, :cond_28f

    .line 1645
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/server/wm/AppTransition;->mIsResId:Z

    .line 1646
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    const/4 v7, 0x6

    aget v6, v6, v7

    invoke-static {v6}, Lcom/android/internal/util/rr/AwesomeAnimationHelper;->getAnimations(I)[I

    move-result-object v17

    .line 1647
    .restart local v17    # "animArray":[I
    if-eqz p3, :cond_28a

    .line 1648
    const/4 v6, 0x1

    aget v18, v17, v6

    goto/16 :goto_133

    .line 1649
    :cond_28a
    const/4 v6, 0x0

    aget v18, v17, v6

    goto/16 :goto_133

    .line 1651
    .end local v17    # "animArray":[I
    :cond_28f
    if-eqz p3, :cond_295

    .line 1652
    const/16 v18, 0x10

    goto/16 :goto_133

    .line 1653
    :cond_295
    const/16 v18, 0x11

    goto/16 :goto_133

    .line 1657
    :pswitch_299
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    const/4 v7, 0x7

    aget v6, v6, v7

    if-eqz v6, :cond_2be

    .line 1658
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/server/wm/AppTransition;->mIsResId:Z

    .line 1659
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    const/4 v7, 0x7

    aget v6, v6, v7

    invoke-static {v6}, Lcom/android/internal/util/rr/AwesomeAnimationHelper;->getAnimations(I)[I

    move-result-object v17

    .line 1660
    .restart local v17    # "animArray":[I
    if-eqz p3, :cond_2b9

    .line 1661
    const/4 v6, 0x1

    aget v18, v17, v6

    goto/16 :goto_133

    .line 1662
    :cond_2b9
    const/4 v6, 0x0

    aget v18, v17, v6

    goto/16 :goto_133

    .line 1664
    .end local v17    # "animArray":[I
    :cond_2be
    if-eqz p3, :cond_2c4

    .line 1665
    const/16 v18, 0x12

    goto/16 :goto_133

    .line 1666
    :cond_2c4
    const/16 v18, 0x13

    goto/16 :goto_133

    .line 1670
    :pswitch_2c8
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    const/16 v7, 0x8

    aget v6, v6, v7

    if-eqz v6, :cond_2ef

    .line 1671
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/server/wm/AppTransition;->mIsResId:Z

    .line 1672
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    const/16 v7, 0x8

    aget v6, v6, v7

    invoke-static {v6}, Lcom/android/internal/util/rr/AwesomeAnimationHelper;->getAnimations(I)[I

    move-result-object v17

    .line 1673
    .restart local v17    # "animArray":[I
    if-eqz p3, :cond_2ea

    .line 1674
    const/4 v6, 0x1

    aget v18, v17, v6

    goto/16 :goto_133

    .line 1675
    :cond_2ea
    const/4 v6, 0x0

    aget v18, v17, v6

    goto/16 :goto_133

    .line 1677
    .end local v17    # "animArray":[I
    :cond_2ef
    if-eqz p3, :cond_2f5

    .line 1678
    const/16 v18, 0x14

    goto/16 :goto_133

    .line 1679
    :cond_2f5
    const/16 v18, 0x15

    goto/16 :goto_133

    .line 1683
    :pswitch_2f9
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    const/16 v7, 0x9

    aget v6, v6, v7

    if-eqz v6, :cond_320

    .line 1684
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/server/wm/AppTransition;->mIsResId:Z

    .line 1685
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    const/16 v7, 0x9

    aget v6, v6, v7

    invoke-static {v6}, Lcom/android/internal/util/rr/AwesomeAnimationHelper;->getAnimations(I)[I

    move-result-object v17

    .line 1686
    .restart local v17    # "animArray":[I
    if-eqz p3, :cond_31b

    .line 1687
    const/4 v6, 0x1

    aget v18, v17, v6

    goto/16 :goto_133

    .line 1688
    :cond_31b
    const/4 v6, 0x0

    aget v18, v17, v6

    goto/16 :goto_133

    .line 1690
    .end local v17    # "animArray":[I
    :cond_320
    if-eqz p3, :cond_326

    .line 1691
    const/16 v18, 0x16

    goto/16 :goto_133

    .line 1692
    :cond_326
    const/16 v18, 0x17

    goto/16 :goto_133

    .line 1696
    :pswitch_32a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    const/16 v7, 0xa

    aget v6, v6, v7

    if-eqz v6, :cond_351

    .line 1697
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/server/wm/AppTransition;->mIsResId:Z

    .line 1698
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    const/16 v7, 0xa

    aget v6, v6, v7

    invoke-static {v6}, Lcom/android/internal/util/rr/AwesomeAnimationHelper;->getAnimations(I)[I

    move-result-object v17

    .line 1699
    .restart local v17    # "animArray":[I
    if-eqz p3, :cond_34c

    .line 1700
    const/4 v6, 0x1

    aget v18, v17, v6

    goto/16 :goto_133

    .line 1701
    :cond_34c
    const/4 v6, 0x0

    aget v18, v17, v6

    goto/16 :goto_133

    .line 1703
    .end local v17    # "animArray":[I
    :cond_351
    if-eqz p3, :cond_357

    .line 1704
    const/16 v18, 0x19

    goto/16 :goto_133

    .line 1705
    :cond_357
    const/16 v18, 0x18

    goto/16 :goto_133

    .line 1708
    :cond_35b
    const/16 v16, 0x0

    goto/16 :goto_13f

    .line 1563
    nop

    :pswitch_data_360
    .packed-switch 0x6
        :pswitch_158
        :pswitch_183
        :pswitch_1ae
        :pswitch_1dd
        :pswitch_20c
        :pswitch_23b
        :pswitch_299
        :pswitch_26a
        :pswitch_2c8
        :pswitch_2f9
        :pswitch_32a
        :pswitch_133
        :pswitch_133
        :pswitch_1ae
    .end packed-switch
.end method

.method loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;
    .registers 9
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "animAttr"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 508
    const/4 v0, 0x0

    .line 509
    .local v0, "anim":I
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 510
    .local v1, "context":Landroid/content/Context;
    if-ltz p2, :cond_c

    .line 511
    iget-boolean v3, p0, Lcom/android/server/wm/AppTransition;->mIsResId:Z

    if-eqz v3, :cond_13

    .line 512
    move v0, p2

    .line 521
    :cond_c
    :goto_c
    if-eqz v0, :cond_22

    .line 522
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    return-object v3

    .line 514
    :cond_13
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 515
    .local v2, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v2, :cond_c

    .line 516
    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 517
    iget-object v3, v2, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    invoke-virtual {v3, p2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    goto :goto_c

    .line 524
    .end local v2    # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_22
    return-object v5
.end method

.method loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;
    .registers 6
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "resId"    # I

    .prologue
    const/4 v2, 0x0

    .line 528
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 529
    .local v0, "context":Landroid/content/Context;
    if-ltz p2, :cond_12

    .line 530
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;

    move-result-object v1

    .line 531
    .local v1, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v1, :cond_d

    .line 532
    iget-object v0, v1, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 534
    :cond_d
    invoke-static {v0, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    return-object v2

    .line 536
    .end local v1    # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_12
    return-object v2
.end method

.method public notifyAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 446
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 447
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1, p1}, Landroid/view/WindowManagerInternal$AppTransitionListener;->onAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    .line 446
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 445
    :cond_17
    return-void
.end method

.method notifyProlongedAnimationsEnded()V
    .registers 2

    .prologue
    .line 421
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mProlongedAnimationsEnded:Z

    .line 420
    return-void
.end method

.method overrideInPlaceAppTransition(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "anim"    # I

    .prologue
    .line 1852
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1853
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1854
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1855
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 1856
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    .line 1851
    :goto_10
    return-void

    .line 1858
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    goto :goto_10
.end method

.method overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enterAnim"    # I
    .param p3, "exitAnim"    # I
    .param p4, "startedCallback"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 1743
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1744
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1745
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1746
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 1747
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    .line 1748
    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    .line 1749
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1750
    iput-object p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1742
    :goto_17
    return-void

    .line 1752
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    goto :goto_17
.end method

.method overridePendingAppTransitionAspectScaledThumb(Landroid/graphics/Bitmap;IIIILandroid/os/IRemoteCallback;Z)V
    .registers 14
    .param p1, "srcThumb"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "targetWidth"    # I
    .param p5, "targetHeight"    # I
    .param p6, "startedCallback"    # Landroid/os/IRemoteCallback;
    .param p7, "scaleUp"    # Z

    .prologue
    .line 1793
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1794
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1795
    if-eqz p7, :cond_1f

    const/4 v0, 0x5

    :goto_c
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1797
    iput-boolean p7, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p1

    .line 1798
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/Bitmap;)V

    .line 1800
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1801
    iput-object p6, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1792
    :goto_1e
    return-void

    .line 1796
    :cond_1f
    const/4 v0, 0x6

    goto :goto_c

    .line 1803
    :cond_21
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    goto :goto_1e
.end method

.method overridePendingAppTransitionClipReveal(IIII)V
    .registers 11
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "startWidth"    # I
    .param p4, "startHeight"    # I

    .prologue
    .line 1768
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1769
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1770
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1771
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/Bitmap;)V

    .line 1772
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1767
    :cond_19
    return-void
.end method

.method public overridePendingAppTransitionMultiThumb([Landroid/view/AppTransitionAnimationSpec;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V
    .registers 14
    .param p1, "specs"    # [Landroid/view/AppTransitionAnimationSpec;
    .param p2, "onAnimationStartedCallback"    # Landroid/os/IRemoteCallback;
    .param p3, "onAnimationFinishedCallback"    # Landroid/os/IRemoteCallback;
    .param p4, "scaleUp"    # Z

    .prologue
    .line 1810
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 1811
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1812
    if-eqz p4, :cond_3a

    const/4 v0, 0x5

    :goto_c
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1814
    iput-boolean p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1815
    if-eqz p1, :cond_3c

    .line 1816
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_13
    array-length v0, p1

    if-ge v6, v0, :cond_3c

    .line 1817
    aget-object v8, p1, v6

    .line 1818
    .local v8, "spec":Landroid/view/AppTransitionAnimationSpec;
    if-eqz v8, :cond_37

    .line 1819
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    iget v1, v8, Landroid/view/AppTransitionAnimationSpec;->taskId:I

    invoke-virtual {v0, v1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1820
    if-nez v6, :cond_37

    .line 1823
    iget-object v7, v8, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    .line 1824
    .local v7, "rect":Landroid/graphics/Rect;
    iget v1, v7, Landroid/graphics/Rect;->left:I

    iget v2, v7, Landroid/graphics/Rect;->top:I

    .line 1825
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v5, v8, Landroid/view/AppTransitionAnimationSpec;->bitmap:Landroid/graphics/Bitmap;

    move-object v0, p0

    .line 1824
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/Bitmap;)V

    .line 1816
    .end local v7    # "rect":Landroid/graphics/Rect;
    :cond_37
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    .line 1813
    .end local v6    # "i":I
    .end local v8    # "spec":Landroid/view/AppTransitionAnimationSpec;
    :cond_3a
    const/4 v0, 0x6

    goto :goto_c

    .line 1830
    :cond_3c
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1831
    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1832
    iput-object p3, p0, Lcom/android/server/wm/AppTransition;->mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

    .line 1809
    :goto_43
    return-void

    .line 1834
    :cond_44
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    goto :goto_43
.end method

.method overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;Z)V
    .registers 5
    .param p1, "specsFuture"    # Landroid/view/IAppTransitionAnimationSpecsFuture;
    .param p2, "callback"    # Landroid/os/IRemoteCallback;
    .param p3, "scaleUp"    # Z

    .prologue
    .line 1841
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1842
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1843
    if-eqz p3, :cond_15

    const/4 v0, 0x5

    :goto_c
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1845
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 1846
    iput-boolean p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1847
    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFutureCallback:Landroid/os/IRemoteCallback;

    .line 1840
    :cond_14
    return-void

    .line 1844
    :cond_15
    const/4 v0, 0x6

    goto :goto_c
.end method

.method overridePendingAppTransitionScaleUp(IIII)V
    .registers 11
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "startWidth"    # I
    .param p4, "startHeight"    # I

    .prologue
    .line 1758
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1759
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1760
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1761
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/Bitmap;)V

    .line 1762
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1757
    :cond_18
    return-void
.end method

.method overridePendingAppTransitionThumb(Landroid/graphics/Bitmap;IILandroid/os/IRemoteCallback;Z)V
    .registers 12
    .param p1, "srcThumb"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "startedCallback"    # Landroid/os/IRemoteCallback;
    .param p5, "scaleUp"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1778
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1779
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1780
    if-eqz p5, :cond_1f

    const/4 v0, 0x3

    :goto_d
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1782
    iput-boolean p5, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v4, v3

    move-object v5, p1

    .line 1783
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/Bitmap;)V

    .line 1784
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1785
    iput-object p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1777
    :goto_1e
    return-void

    .line 1781
    :cond_1f
    const/4 v0, 0x4

    goto :goto_d

    .line 1787
    :cond_21
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    goto :goto_1e
.end method

.method postAnimationCallback()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1734
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_1a

    .line 1735
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 1736
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1735
    const/16 v3, 0x1a

    invoke-virtual {v1, v3, v2}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1737
    iput-object v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1733
    :cond_1a
    return-void
.end method

.method prepareAppTransitionLocked(IZ)Z
    .registers 8
    .param p1, "transit"    # I
    .param p2, "alwaysKeepCurrent"    # Z

    .prologue
    const/16 v4, 0xd

    .line 2074
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v1

    if-eqz v1, :cond_c

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    if-nez v1, :cond_2a

    .line 2075
    :cond_c
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->setAppTransition(I)V

    .line 2086
    :cond_f
    :goto_f
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->prepare()Z

    move-result v0

    .line 2087
    .local v0, "prepared":Z
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 2088
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 2089
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 2091
    :cond_29
    return v0

    .line 2076
    .end local v0    # "prepared":Z
    :cond_2a
    if-nez p2, :cond_f

    .line 2077
    const/16 v1, 0x8

    if-ne p1, v1, :cond_3c

    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/android/server/wm/AppTransition;->isTransitionEqual(I)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 2079
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->setAppTransition(I)V

    goto :goto_f

    .line 2080
    :cond_3c
    const/4 v1, 0x6

    if-ne p1, v1, :cond_f

    .line 2081
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/server/wm/AppTransition;->isTransitionEqual(I)Z

    move-result v1

    .line 2080
    if-eqz v1, :cond_f

    .line 2083
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->setAppTransition(I)V

    goto :goto_f
.end method

.method prepareThumbnailAnimation(Landroid/view/animation/Animation;III)Landroid/view/animation/Animation;
    .registers 13
    .param p1, "a"    # Landroid/view/animation/Animation;
    .param p2, "appWidth"    # I
    .param p3, "appHeight"    # I
    .param p4, "transit"    # I

    .prologue
    .line 900
    packed-switch p4, :pswitch_data_14

    .line 906
    const/16 v7, 0x150

    .line 909
    .local v7, "duration":I
    :goto_5
    int-to-long v4, v7

    .line 910
    iget-object v6, p0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 909
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    .line 903
    .end local v7    # "duration":I
    :pswitch_11
    iget v7, p0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    .restart local v7    # "duration":I
    goto :goto_5

    .line 900
    :pswitch_data_14
    .packed-switch 0x6
        :pswitch_11
        :pswitch_11
    .end packed-switch
.end method

.method prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;
    .registers 9
    .param p1, "a"    # Landroid/view/animation/Animation;
    .param p2, "appWidth"    # I
    .param p3, "appHeight"    # I
    .param p4, "duration"    # J
    .param p6, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 881
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_9

    .line 882
    invoke-virtual {p1, p4, p5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 884
    :cond_9
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 885
    if-eqz p6, :cond_12

    .line 886
    invoke-virtual {p1, p6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 888
    :cond_12
    invoke-virtual {p1, p2, p3, p2, p3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 889
    return-object p1
.end method

.method registerListenerLocked(Landroid/view/WindowManagerInternal$AppTransitionListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/WindowManagerInternal$AppTransitionListener;

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    return-void
.end method

.method public setCurrentUser(I)V
    .registers 2
    .param p1, "newUserId"    # I

    .prologue
    .line 2061
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    .line 2060
    return-void
.end method

.method setIdle()V
    .registers 2

    .prologue
    .line 334
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 333
    return-void
.end method

.method setLastAppTransition(ILcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/AppWindowToken;)V
    .registers 6
    .param p1, "transit"    # I
    .param p2, "openingApp"    # Lcom/android/server/wm/AppWindowToken;
    .param p3, "closingApp"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    .line 314
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastOpeningApp:Ljava/lang/String;

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastClosingApp:Ljava/lang/String;

    .line 313
    return-void
.end method

.method setReady()V
    .registers 2

    .prologue
    .line 325
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 326
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->fetchAppTransitionSpecsFromFuture()V

    .line 324
    return-void
.end method

.method setTimeout()V
    .registers 2

    .prologue
    .line 342
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 341
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1898
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mNextAppTransition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    invoke-static {v1}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
