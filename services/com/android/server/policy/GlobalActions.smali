.class public Lcom/android/server/policy/GlobalActions;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/GlobalActions$1;,
        Lcom/android/server/policy/GlobalActions$2;,
        Lcom/android/server/policy/GlobalActions$3;,
        Lcom/android/server/policy/GlobalActions$4;,
        Lcom/android/server/policy/GlobalActions$5;,
        Lcom/android/server/policy/GlobalActions$6;,
        Lcom/android/server/policy/GlobalActions$7;,
        Lcom/android/server/policy/GlobalActions$Action;,
        Lcom/android/server/policy/GlobalActions$BugReportAction;,
        Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;,
        Lcom/android/server/policy/GlobalActions$LongPressAction;,
        Lcom/android/server/policy/GlobalActions$MyAdapter;,
        Lcom/android/server/policy/GlobalActions$PowerAction;,
        Lcom/android/server/policy/GlobalActions$RestartAction;,
        Lcom/android/server/policy/GlobalActions$ScreenshotRunnable;,
        Lcom/android/server/policy/GlobalActions$SilentModeToggleAction;,
        Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;,
        Lcom/android/server/policy/GlobalActions$SinglePressAction;,
        Lcom/android/server/policy/GlobalActions$ToggleAction;
    }
.end annotation


# static fields
.field private static final DIALOG_DISMISS_DELAY:I = 0x12c

.field private static final MESSAGE_DISMISS:I = 0x0

.field private static final MESSAGE_REFRESH:I = 0x1

.field private static final MESSAGE_SHOW:I = 0x2

.field private static final SHOW_SILENT_TOGGLE:Z = true

.field private static final TAG:Ljava/lang/String; = "GlobalActions"

.field private static sTheme:I


# instance fields
.field mActions:Ljava/lang/String;

.field private mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

.field private mAirplaneModeBits:Ljava/util/BitSet;

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

.field private mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mDeviceProvisioned:Z

.field private mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

.field private final mDreamManager:Landroid/service/dreams/IDreamManager;

.field private final mEmergencyAffordanceManager:Lcom/android/internal/policy/EmergencyAffordanceManager;

.field private mHandler:Landroid/os/Handler;

.field private mHasTelephony:Z

.field private mHasVibrator:Z

.field private mIsWaitingForEcmExit:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/policy/GlobalActions$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguardShowing:Z

.field private final mPhoneStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/PhoneStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRingerModeReceiver:Landroid/content/BroadcastReceiver;

.field mScreenrecordConnection:Landroid/content/ServiceConnection;

.field final mScreenrecordLock:Ljava/lang/Object;

.field final mScreenrecordTimeout:Ljava/lang/Runnable;

.field private mScreenshotConnection:Landroid/content/ServiceConnection;

.field private mScreenshotDelay:I

.field private mScreenshotFullscreen:I

.field private final mScreenshotLock:Ljava/lang/Object;

.field private final mScreenshotRunnable:Lcom/android/server/policy/GlobalActions$ScreenshotRunnable;

.field private mScreenshotSelectedRegion:I

.field final mScreenshotTimeout:Ljava/lang/Runnable;

.field private final mShowSilentToggle:Z

.field private mSilentModeAction:Lcom/android/server/policy/GlobalActions$Action;

.field private final mThemeCallback:Landroid/app/IThemeCallback;

.field private mThemeManager:Landroid/app/ThemeManager;

.field private mTorchEnabled:Z

.field private final mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/GlobalActions;)Ljava/util/BitSet;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeBits:Ljava/util/BitSet;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/policy/GlobalActions;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/server/policy/GlobalActions;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsWaitingForEcmExit:Z

    return v0
.end method

.method static synthetic -get12(Lcom/android/server/policy/GlobalActions;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/policy/GlobalActions;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic -get14(Lcom/android/server/policy/GlobalActions;)Landroid/content/ServiceConnection;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mScreenshotConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/server/policy/GlobalActions;)I
    .registers 2

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mScreenshotDelay:I

    return v0
.end method

.method static synthetic -get16(Lcom/android/server/policy/GlobalActions;)I
    .registers 2

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mScreenshotFullscreen:I

    return v0
.end method

.method static synthetic -get17(Lcom/android/server/policy/GlobalActions;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mScreenshotLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/server/policy/GlobalActions;)I
    .registers 2

    iget v0, p0, Lcom/android/server/policy/GlobalActions;->mScreenshotSelectedRegion:I

    return v0
.end method

.method static synthetic -get19(Lcom/android/server/policy/GlobalActions;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mTorchEnabled:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic -get20(Lcom/android/server/policy/GlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/policy/GlobalActions;)Landroid/media/AudioManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/policy/GlobalActions;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/policy/GlobalActions;)Lcom/android/internal/policy/EmergencyAffordanceManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyAffordanceManager:Lcom/android/internal/policy/EmergencyAffordanceManager;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$ToggleAction$State;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/policy/GlobalActions;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mIsWaitingForEcmExit:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/policy/GlobalActions;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mScreenshotConnection:Landroid/content/ServiceConnection;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/server/policy/GlobalActions;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mTorchEnabled:Z

    return p1
.end method

.method static synthetic -set5(I)I
    .registers 1

    sput p0, Lcom/android/server/policy/GlobalActions;->sTheme:I

    return p0
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/GlobalActions;Z)V
    .registers 2
    .param p1, "on"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->changeAirplaneModeSystemSetting(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/policy/GlobalActions;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->handleShow()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/policy/GlobalActions;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->onAirplaneModeChanged()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/policy/GlobalActions;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->refreshSilentMode()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/policy/GlobalActions;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->setupAirplaneModeListeners()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/policy/GlobalActions;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->takeScreenrecord()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/policy/GlobalActions;I)V
    .registers 2
    .param p1, "screenshotType"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->takeScreenshot(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mScreenshotLock:Ljava/lang/Object;

    .line 130
    iput-object v6, p0, Lcom/android/server/policy/GlobalActions;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 131
    iput v5, p0, Lcom/android/server/policy/GlobalActions;->mScreenshotFullscreen:I

    .line 132
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/server/policy/GlobalActions;->mScreenshotSelectedRegion:I

    .line 147
    iput-boolean v4, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    .line 148
    iput-boolean v4, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    .line 149
    sget-object v3, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 150
    iput-boolean v4, p0, Lcom/android/server/policy/GlobalActions;->mIsWaitingForEcmExit:Z

    .line 154
    iput-boolean v4, p0, Lcom/android/server/policy/GlobalActions;->mTorchEnabled:Z

    .line 161
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mPhoneStateListeners:Ljava/util/List;

    .line 167
    new-instance v3, Lcom/android/server/policy/GlobalActions$1;

    invoke-direct {v3, p0}, Lcom/android/server/policy/GlobalActions$1;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mThemeCallback:Landroid/app/IThemeCallback;

    .line 1016
    new-instance v3, Lcom/android/server/policy/GlobalActions$ScreenshotRunnable;

    invoke-direct {v3, p0}, Lcom/android/server/policy/GlobalActions$ScreenshotRunnable;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mScreenshotRunnable:Lcom/android/server/policy/GlobalActions$ScreenshotRunnable;

    .line 1018
    new-instance v3, Lcom/android/server/policy/GlobalActions$2;

    invoke-direct {v3, p0}, Lcom/android/server/policy/GlobalActions$2;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mScreenshotTimeout:Ljava/lang/Runnable;

    .line 1092
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mScreenrecordLock:Ljava/lang/Object;

    .line 1093
    iput-object v6, p0, Lcom/android/server/policy/GlobalActions;->mScreenrecordConnection:Landroid/content/ServiceConnection;

    .line 1095
    new-instance v3, Lcom/android/server/policy/GlobalActions$3;

    invoke-direct {v3, p0}, Lcom/android/server/policy/GlobalActions$3;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mScreenrecordTimeout:Ljava/lang/Runnable;

    .line 1611
    new-instance v3, Lcom/android/server/policy/GlobalActions$4;

    invoke-direct {v3, p0}, Lcom/android/server/policy/GlobalActions$4;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1640
    new-instance v3, Lcom/android/server/policy/GlobalActions$5;

    invoke-direct {v3, p0}, Lcom/android/server/policy/GlobalActions$5;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    .line 1649
    new-instance v3, Lcom/android/server/policy/GlobalActions$6;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v6}, Lcom/android/server/policy/GlobalActions$6;-><init>(Lcom/android/server/policy/GlobalActions;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 1661
    new-instance v3, Lcom/android/server/policy/GlobalActions$7;

    invoke-direct {v3, p0}, Lcom/android/server/policy/GlobalActions$7;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    .line 184
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    .line 185
    iput-object p2, p0, Lcom/android/server/policy/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 186
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "audio"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    .line 188
    const-string/jumbo v3, "dreams"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 187
    invoke-static {v3}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 191
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 192
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    const-string/jumbo v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    const-string/jumbo v3, "android.intent.action.UPDATE_POWER_MENU"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    const-string/jumbo v3, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 196
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 199
    const-string/jumbo v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 198
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 200
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z

    .line 203
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    .line 204
    new-instance v6, Lcom/android/server/policy/GlobalActions$8;

    invoke-direct {v6, p0}, Lcom/android/server/policy/GlobalActions$8;-><init>(Lcom/android/server/policy/GlobalActions;)V

    .line 203
    invoke-virtual {v3, v6}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 211
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->setupAirplaneModeListeners()V

    .line 212
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 213
    const-string/jumbo v6, "airplane_mode_on"

    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 214
    iget-object v7, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 212
    invoke-virtual {v3, v6, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 215
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "vibrator"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    .line 216
    .local v2, "vibrator":Landroid/os/Vibrator;
    if-eqz v2, :cond_10e

    invoke-virtual {v2}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v3

    :goto_f0
    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mHasVibrator:Z

    .line 218
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 219
    const v6, 0x112008e

    .line 218
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_110

    :goto_101
    iput-boolean v4, p0, Lcom/android/server/policy/GlobalActions;->mShowSilentToggle:Z

    .line 221
    new-instance v3, Lcom/android/internal/policy/EmergencyAffordanceManager;

    invoke-direct {v3, p1}, Lcom/android/internal/policy/EmergencyAffordanceManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyAffordanceManager:Lcom/android/internal/policy/EmergencyAffordanceManager;

    .line 223
    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions;->updatePowerMenuActions()V

    .line 183
    return-void

    :cond_10e
    move v3, v4

    .line 216
    goto :goto_f0

    :cond_110
    move v4, v5

    .line 218
    goto :goto_101
.end method

.method private addUsersToMenu(Ljava/util/ArrayList;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/policy/GlobalActions$Action;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/policy/GlobalActions$Action;>;"
    const/4 v13, 0x0

    .line 931
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/UserManager;

    .line 932
    .local v10, "um":Landroid/os/UserManager;
    invoke-virtual {v10}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 933
    invoke-virtual {v10}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v12

    .line 934
    .local v12, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v7

    .line 935
    .local v7, "currentUser":Landroid/content/pm/UserInfo;
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 936
    const v2, 0x1050007

    .line 935
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 937
    .local v6, "avatarSize":I
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "user$iterator":Ljava/util/Iterator;
    :cond_2b
    :goto_2b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 938
    .local v5, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 939
    if-nez v7, :cond_8f

    .line 940
    iget v1, v5, Landroid/content/pm/UserInfo;->id:I

    if-nez v1, :cond_8d

    :goto_43
    const/4 v8, 0x1

    .line 941
    .local v8, "isCurrentUser":Z
    :goto_44
    const/4 v3, 0x0

    .line 942
    .local v3, "avatar":Landroid/graphics/drawable/Drawable;
    iget v1, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v1}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 943
    .local v9, "rawAvatar":Landroid/graphics/Bitmap;
    if-nez v9, :cond_5d

    .line 945
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_96

    const/16 v1, -0x2710

    .line 944
    :goto_55
    invoke-static {v1, v13}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 947
    :cond_5d
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .end local v3    # "avatar":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 948
    invoke-static {v9, v6, v6}, Lcom/android/server/policy/GlobalActions;->createCircularClip(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 947
    invoke-direct {v3, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 950
    .local v3, "avatar":Landroid/graphics/drawable/Drawable;
    new-instance v0, Lcom/android/server/policy/GlobalActions$21;

    .line 952
    iget-object v1, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_99

    iget-object v4, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 951
    :goto_74
    const v2, 0x10803b7

    move-object v1, p0

    .line 950
    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/GlobalActions$21;-><init>(Lcom/android/server/policy/GlobalActions;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/pm/UserInfo;)V

    .line 969
    .local v0, "switchToUser":Lcom/android/server/policy/GlobalActions$SinglePressAction;
    if-eqz v8, :cond_89

    .line 970
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    .line 971
    const v2, 0x104001d

    .line 970
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/GlobalActions$SinglePressAction;->setStatus(Ljava/lang/CharSequence;)V

    .line 973
    :cond_89
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 940
    .end local v0    # "switchToUser":Lcom/android/server/policy/GlobalActions$SinglePressAction;
    .end local v3    # "avatar":Landroid/graphics/drawable/Drawable;
    .end local v8    # "isCurrentUser":Z
    .end local v9    # "rawAvatar":Landroid/graphics/Bitmap;
    :cond_8d
    const/4 v8, 0x0

    .restart local v8    # "isCurrentUser":Z
    goto :goto_44

    .end local v8    # "isCurrentUser":Z
    :cond_8f
    iget v1, v7, Landroid/content/pm/UserInfo;->id:I

    iget v2, v5, Landroid/content/pm/UserInfo;->id:I

    if-ne v1, v2, :cond_8d

    goto :goto_43

    .line 945
    .local v3, "avatar":Landroid/graphics/drawable/Drawable;
    .restart local v8    # "isCurrentUser":Z
    .restart local v9    # "rawAvatar":Landroid/graphics/Bitmap;
    :cond_96
    iget v1, v5, Landroid/content/pm/UserInfo;->id:I

    goto :goto_55

    .line 952
    .local v3, "avatar":Landroid/graphics/drawable/Drawable;
    :cond_99
    const-string/jumbo v4, "Primary"

    goto :goto_74

    .line 930
    .end local v3    # "avatar":Landroid/graphics/drawable/Drawable;
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    .end local v6    # "avatarSize":I
    .end local v7    # "currentUser":Landroid/content/pm/UserInfo;
    .end local v8    # "isCurrentUser":Z
    .end local v9    # "rawAvatar":Landroid/graphics/Bitmap;
    .end local v11    # "user$iterator":Ljava/util/Iterator;
    .end local v12    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_9d
    return-void
.end method

.method private awakenIfNecessary()V
    .registers 3

    .prologue
    .line 303
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-eqz v1, :cond_11

    .line 305
    :try_start_4
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 306
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_12

    .line 302
    :cond_11
    :goto_11
    return-void

    .line 308
    :catch_12
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_11
.end method

.method private changeAirplaneModeSystemSetting(Z)V
    .registers 6
    .param p1, "on"    # Z

    .prologue
    .line 1700
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1701
    const-string/jumbo v3, "airplane_mode_on"

    .line 1702
    if-eqz p1, :cond_34

    const/4 v1, 0x1

    .line 1699
    :goto_c
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1703
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1704
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1705
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1706
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1707
    iget-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z

    if-nez v1, :cond_33

    .line 1708
    if-eqz p1, :cond_36

    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    :goto_31
    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 1698
    :cond_33
    return-void

    .line 1702
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_34
    const/4 v1, 0x0

    goto :goto_c

    .line 1708
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_36
    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_31
.end method

.method private checkSettings()V
    .registers 4

    .prologue
    .line 1880
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1881
    const-string/jumbo v1, "screenshot_delay"

    const/16 v2, 0x3e8

    .line 1880
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/GlobalActions;->mScreenshotDelay:I

    .line 1879
    return-void
.end method

.method private static createCircularClip(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 15
    .param p0, "input"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x0

    .line 1721
    if-nez p0, :cond_5

    return-object v8

    .line 1723
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1724
    .local v3, "inWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 1725
    .local v2, "inHeight":I
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1726
    .local v5, "output":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1727
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 1728
    .local v6, "paint":Landroid/graphics/Paint;
    new-instance v8, Landroid/graphics/BitmapShader;

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v8, p0, v9, v10}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1729
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1730
    new-instance v7, Landroid/graphics/RectF;

    int-to-float v8, v3

    int-to-float v9, v2

    invoke-direct {v7, v11, v11, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1731
    .local v7, "srcRect":Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v8, p1

    int-to-float v9, p2

    invoke-direct {v1, v11, v11, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1732
    .local v1, "dstRect":Landroid/graphics/RectF;
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 1733
    .local v4, "m":Landroid/graphics/Matrix;
    sget-object v8, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v4, v7, v1, v8}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 1734
    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 1735
    div-int/lit8 v8, v3, 0x2

    int-to-float v8, v8

    div-int/lit8 v9, v2, 0x2

    int-to-float v9, v9

    div-int/lit8 v10, v3, 0x2

    int-to-float v10, v10

    invoke-virtual {v0, v8, v9, v10, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1736
    return-object v5
.end method

.method private createDialog()Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    .registers 18

    .prologue
    .line 416
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/policy/GlobalActions;->mHasVibrator:Z

    if-nez v1, :cond_99

    .line 417
    new-instance v1, Lcom/android/server/policy/GlobalActions$SilentModeToggleAction;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/server/policy/GlobalActions$SilentModeToggleAction;-><init>(Lcom/android/server/policy/GlobalActions;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/policy/GlobalActions;->mSilentModeAction:Lcom/android/server/policy/GlobalActions$Action;

    .line 421
    :goto_11
    new-instance v1, Lcom/android/server/policy/GlobalActions$10;

    .line 422
    const v3, 0x108039e

    .line 423
    const v4, 0x10803a0

    .line 424
    const v5, 0x10401ce

    .line 425
    const v6, 0x10401cf

    .line 426
    const v7, 0x10401d0

    move-object/from16 v2, p0

    .line 421
    invoke-direct/range {v1 .. v7}, Lcom/android/server/policy/GlobalActions$10;-><init>(Lcom/android/server/policy/GlobalActions;IIIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    .line 462
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->onAirplaneModeChanged()V

    .line 464
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    .line 467
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 469
    .local v14, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "power_menu_onthego_enabled"

    const/4 v2, 0x0

    .line 468
    invoke-static {v14, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 469
    const/4 v2, 0x1

    .line 468
    if-ne v1, v2, :cond_b0

    const/4 v15, 0x1

    .line 470
    .local v15, "showOnTheGo":Z
    :goto_4b
    if-eqz v15, :cond_61

    .line 471
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    .line 472
    new-instance v2, Lcom/android/server/policy/GlobalActions$11;

    const v3, 0x10803a5

    .line 473
    const v4, 0x1040113

    .line 472
    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4}, Lcom/android/server/policy/GlobalActions$11;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    .line 471
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    :cond_61
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/GlobalActions;->mActions:Ljava/lang/String;

    if-nez v1, :cond_b2

    .line 497
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 498
    const v2, 0x1070049

    .line 497
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 504
    .local v9, "actionsArray":[Ljava/lang/String;
    :goto_76
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/policy/GlobalActions$PowerAction;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/server/policy/GlobalActions$PowerAction;-><init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$PowerAction;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 507
    .local v10, "addedKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_8b
    array-length v1, v9

    if-ge v12, v1, :cond_23a

    .line 508
    aget-object v8, v9, v12

    .line 509
    .local v8, "actionKey":Ljava/lang/String;
    invoke-virtual {v10, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_be

    .line 507
    :cond_96
    :goto_96
    add-int/lit8 v12, v12, 0x1

    goto :goto_8b

    .line 419
    .end local v8    # "actionKey":Ljava/lang/String;
    .end local v9    # "actionsArray":[Ljava/lang/String;
    .end local v10    # "addedKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v12    # "i":I
    .end local v14    # "resolver":Landroid/content/ContentResolver;
    .end local v15    # "showOnTheGo":Z
    :cond_99
    new-instance v1, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;-><init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/policy/GlobalActions;->mSilentModeAction:Lcom/android/server/policy/GlobalActions$Action;

    goto/16 :goto_11

    .line 468
    .restart local v14    # "resolver":Landroid/content/ContentResolver;
    :cond_b0
    const/4 v15, 0x0

    goto :goto_4b

    .line 500
    .restart local v15    # "showOnTheGo":Z
    :cond_b2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/GlobalActions;->mActions:Ljava/lang/String;

    const-string/jumbo v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "actionsArray":[Ljava/lang/String;
    goto :goto_76

    .line 513
    .restart local v8    # "actionKey":Ljava/lang/String;
    .restart local v10    # "addedKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v12    # "i":I
    :cond_be
    const-string/jumbo v1, "power"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_96

    .line 515
    const-string/jumbo v1, "restart"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e3

    .line 516
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/policy/GlobalActions$RestartAction;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/server/policy/GlobalActions$RestartAction;-><init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$RestartAction;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    :cond_df
    :goto_df
    invoke-virtual {v10, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_96

    .line 517
    :cond_e3
    const-string/jumbo v1, "screenshot"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f8

    .line 518
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->getScreenshotAction()Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_df

    .line 519
    :cond_f8
    const-string/jumbo v1, "screenrecord"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10d

    .line 520
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->getScreenrecordAction()Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_df

    .line 521
    :cond_10d
    const-string/jumbo v1, "airplane"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_122

    .line 522
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_df

    .line 523
    :cond_122
    const-string/jumbo v1, "torch"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_137

    .line 524
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->getTorchToggleAction()Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_df

    .line 525
    :cond_137
    const-string/jumbo v1, "bugreport"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_168

    .line 526
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 527
    const-string/jumbo v2, "bugreport_in_power_menu"

    const/4 v3, 0x0

    .line 526
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_df

    .line 527
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->isCurrentUserOwner()Z

    move-result v1

    .line 526
    if-eqz v1, :cond_df

    .line 528
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/policy/GlobalActions$BugReportAction;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/policy/GlobalActions$BugReportAction;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_df

    .line 530
    :cond_168
    const-string/jumbo v1, "settings"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17e

    .line 531
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->getSettingsAction()Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_df

    .line 532
    :cond_17e
    const-string/jumbo v1, "lockdown"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_194

    .line 533
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->getLockdownAction()Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_df

    .line 534
    :cond_194
    const-string/jumbo v1, "voiceassist"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1aa

    .line 535
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->getVoiceAssistAction()Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_df

    .line 536
    :cond_1aa
    const-string/jumbo v1, "assist"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c0

    .line 537
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->getAssistAction()Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_df

    .line 538
    :cond_1c0
    const-string/jumbo v1, "silent"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1dc

    .line 539
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/policy/GlobalActions;->mShowSilentToggle:Z

    if-eqz v1, :cond_df

    .line 540
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/GlobalActions;->mSilentModeAction:Lcom/android/server/policy/GlobalActions$Action;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_df

    .line 542
    :cond_1dc
    const-string/jumbo v1, "emergency"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f2

    .line 543
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/GlobalActions;->getEmergencyAction()Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_df

    .line 544
    :cond_1f2
    const-string/jumbo v1, "users"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21e

    .line 545
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    .line 546
    const-string/jumbo v2, "user"

    .line 545
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v16

    .line 547
    .local v16, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_df

    .line 548
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/policy/GlobalActions;->addUsersToMenu(Ljava/util/ArrayList;)V

    goto/16 :goto_df

    .line 551
    .end local v16    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_21e
    const-string/jumbo v1, "GlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid global action key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_df

    .line 557
    .end local v8    # "actionKey":Ljava/lang/String;
    :cond_23a
    new-instance v1, Lcom/android/server/policy/GlobalActions$MyAdapter;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lcom/android/server/policy/GlobalActions$MyAdapter;-><init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$MyAdapter;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    .line 559
    new-instance v13, Lcom/android/internal/app/AlertController$AlertParams;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v13, v1}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    .line 560
    .local v13, "params":Lcom/android/internal/app/AlertController$AlertParams;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    iput-object v1, v13, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 561
    move-object/from16 v0, p0

    iput-object v0, v13, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 562
    const/4 v1, 0x1

    iput-boolean v1, v13, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    .line 564
    new-instance v11, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v11, v1, v13}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;-><init>(Landroid/content/Context;Lcom/android/internal/app/AlertController$AlertParams;)V

    .line 565
    .local v11, "dialog":Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setCanceledOnTouchOutside(Z)V

    .line 567
    invoke-virtual {v11}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 568
    invoke-virtual {v11}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setLongClickable(Z)V

    .line 569
    invoke-virtual {v11}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 570
    new-instance v2, Lcom/android/server/policy/GlobalActions$12;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/policy/GlobalActions$12;-><init>(Lcom/android/server/policy/GlobalActions;)V

    .line 569
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 581
    invoke-virtual {v11}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 583
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 585
    return-object v11
.end method

.method private getAssistAction()Lcom/android/server/policy/GlobalActions$Action;
    .registers 4

    .prologue
    .line 848
    new-instance v0, Lcom/android/server/policy/GlobalActions$18;

    const v1, 0x1080317

    .line 849
    const v2, 0x10401d2

    .line 848
    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$18;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    return-object v0
.end method

.method public static getContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 396
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 397
    const-string/jumbo v3, "theme_primary_color"

    .line 396
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 398
    .local v1, "themeMode":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 399
    const-string/jumbo v3, "theme_accent_color"

    .line 398
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 401
    .local v0, "accentColor":I
    if-nez v1, :cond_1c

    if-nez v0, :cond_1c

    .line 403
    return-object p0

    .line 406
    :cond_1c
    new-instance v2, Landroid/view/ContextThemeWrapper;

    sget v3, Lcom/android/server/policy/GlobalActions;->sTheme:I

    invoke-direct {v2, p0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    return-object v2
.end method

.method private getCurrentUser()Landroid/content/pm/UserInfo;
    .registers 3

    .prologue
    .line 919
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    return-object v1

    .line 920
    :catch_9
    move-exception v0

    .line 921
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private getEmergencyAction()Lcom/android/server/policy/GlobalActions$Action;
    .registers 4

    .prologue
    .line 828
    new-instance v0, Lcom/android/server/policy/GlobalActions$17;

    const v1, 0x10802b0

    .line 829
    const v2, 0x10401c2

    .line 828
    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$17;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    return-object v0
.end method

.method private getLockdownAction()Lcom/android/server/policy/GlobalActions$Action;
    .registers 4

    .prologue
    .line 892
    new-instance v0, Lcom/android/server/policy/GlobalActions$20;

    const v1, 0x108002f

    .line 893
    const v2, 0x10401d4

    .line 892
    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$20;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    return-object v0
.end method

.method private getPowermenuAnimations()I
    .registers 4

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 376
    const-string/jumbo v1, "power_menu_animations"

    const/4 v2, 0x0

    .line 375
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getScreenrecordAction()Lcom/android/server/policy/GlobalActions$Action;
    .registers 4

    .prologue
    .line 690
    new-instance v0, Lcom/android/server/policy/GlobalActions$14;

    const v1, 0x10803b1

    .line 691
    const v2, 0x1040101

    .line 690
    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$14;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    return-object v0
.end method

.method private getScreenshotAction()Lcom/android/server/policy/GlobalActions$Action;
    .registers 4

    .prologue
    .line 667
    new-instance v0, Lcom/android/server/policy/GlobalActions$13;

    const v1, 0x10803b3

    .line 668
    const v2, 0x104001b

    .line 667
    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$13;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    return-object v0
.end method

.method private getSettingsAction()Lcom/android/server/policy/GlobalActions$Action;
    .registers 4

    .prologue
    .line 805
    new-instance v0, Lcom/android/server/policy/GlobalActions$16;

    const v1, 0x10803b4

    .line 806
    const v2, 0x10401d1

    .line 805
    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$16;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    return-object v0
.end method

.method private getTorchToggleAction()Lcom/android/server/policy/GlobalActions$Action;
    .registers 4

    .prologue
    .line 708
    new-instance v0, Lcom/android/server/policy/GlobalActions$15;

    const v1, 0x10803b6

    .line 709
    const v2, 0x1040111

    .line 708
    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$15;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    return-object v0
.end method

.method private getUpdatedAirplaneToggleState()Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .registers 4

    .prologue
    .line 1682
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1683
    const-string/jumbo v1, "airplane_mode_on"

    const/4 v2, 0x0

    .line 1682
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1683
    const/4 v1, 0x1

    .line 1682
    if-ne v0, v1, :cond_14

    .line 1684
    sget-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 1682
    :goto_13
    return-object v0

    .line 1684
    :cond_14
    sget-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_13
.end method

.method private getVoiceAssistAction()Lcom/android/server/policy/GlobalActions$Action;
    .registers 4

    .prologue
    .line 870
    new-instance v0, Lcom/android/server/policy/GlobalActions$19;

    const v1, 0x10804d7

    .line 871
    const v2, 0x10401d3

    .line 870
    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$19;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    return-object v0
.end method

.method private handleShow()V
    .registers 9

    .prologue
    const/16 v7, 0x31

    const/4 v3, 0x1

    const v6, 0x10302e5

    const/4 v2, 0x0

    const/16 v5, 0x11

    .line 315
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->awakenIfNecessary()V

    .line 316
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->checkSettings()V

    .line 317
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->prepareDialog()V

    .line 318
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v4}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 319
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    const-string/jumbo v4, "GlobalActions"

    invoke-virtual {v0, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 321
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    if-nez v4, :cond_c3

    move v1, v3

    .line 322
    .local v1, "isPrimary":Z
    :goto_29
    if-eqz v1, :cond_2f

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getPowermenuAnimations()I

    move-result v2

    .line 324
    .local v2, "powermenuAnimations":I
    :cond_2f
    if-nez v2, :cond_31

    .line 327
    :cond_31
    if-ne v2, v3, :cond_3c

    .line 328
    const v3, 0x10302e0

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 329
    const/16 v3, 0x51

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 331
    :cond_3c
    const/4 v3, 0x2

    if-ne v2, v3, :cond_46

    .line 332
    const v3, 0x10302e1

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 333
    iput v7, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 335
    :cond_46
    const/4 v3, 0x3

    if-ne v2, v3, :cond_50

    .line 336
    const v3, 0x10302e2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 337
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 339
    :cond_50
    const/4 v3, 0x4

    if-ne v2, v3, :cond_5a

    .line 340
    const v3, 0x10302e6

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 341
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 343
    :cond_5a
    const/4 v3, 0x5

    if-ne v2, v3, :cond_61

    .line 344
    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 345
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 347
    :cond_61
    const/4 v3, 0x6

    if-ne v2, v3, :cond_6b

    .line 348
    const v3, 0x10302e4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 349
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 351
    :cond_6b
    const/4 v3, 0x7

    if-ne v2, v3, :cond_75

    .line 352
    const v3, 0x10302e3

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 353
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 355
    :cond_75
    const/16 v3, 0x8

    if-ne v2, v3, :cond_80

    .line 356
    const v3, 0x10302e7

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 357
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 359
    :cond_80
    const/16 v3, 0x9

    if-ne v2, v3, :cond_88

    .line 360
    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 361
    iput v7, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 363
    :cond_88
    const/16 v3, 0xa

    if-ne v2, v3, :cond_92

    .line 364
    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 365
    const/16 v3, 0x51

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 367
    :cond_92
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->setPowerMenuAlpha()F

    move-result v3

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 368
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 369
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->setPowerMenuDialogDim()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/Window;->setDimAmount(F)V

    .line 370
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->show()V

    .line 371
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 314
    return-void

    .end local v1    # "isPrimary":Z
    .end local v2    # "powermenuAnimations":I
    :cond_c3
    move v1, v2

    .line 321
    goto/16 :goto_29
.end method

.method private isCurrentUserOwner()Z
    .registers 3

    .prologue
    .line 926
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 927
    .local v0, "currentUser":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v1

    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x1

    goto :goto_a
.end method

.method private onAirplaneModeChanged()V
    .registers 3

    .prologue
    .line 1689
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z

    if-eqz v0, :cond_5

    return-void

    .line 1691
    :cond_5
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getUpdatedAirplaneToggleState()Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 1692
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 1687
    return-void
.end method

.method private prepareDialog()V
    .registers 4

    .prologue
    .line 1154
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->refreshSilentMode()V

    .line 1155
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v1, v2}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 1156
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    .line 1157
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 1158
    iget-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mShowSilentToggle:Z

    if-eqz v1, :cond_2d

    .line 1159
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1160
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1153
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_2d
    return-void
.end method

.method private refreshSilentMode()V
    .registers 4

    .prologue
    .line 1165
    iget-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mHasVibrator:Z

    if-nez v1, :cond_19

    .line 1167
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1a

    const/4 v0, 0x1

    .line 1168
    .local v0, "silentModeOn":Z
    :goto_e
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mSilentModeAction:Lcom/android/server/policy/GlobalActions$Action;

    check-cast v1, Lcom/android/server/policy/GlobalActions$ToggleAction;

    .line 1169
    if-eqz v0, :cond_1c

    sget-object v2, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 1168
    :goto_16
    invoke-virtual {v1, v2}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 1164
    .end local v0    # "silentModeOn":Z
    :cond_19
    return-void

    .line 1167
    :cond_1a
    const/4 v0, 0x0

    .restart local v0    # "silentModeOn":Z
    goto :goto_e

    .line 1169
    :cond_1c
    sget-object v2, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_16
.end method

.method private setPowerMenuAlpha()F
    .registers 9

    .prologue
    .line 380
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 381
    const-string/jumbo v5, "transparent_power_menu"

    const/16 v6, 0x64

    .line 380
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 382
    .local v1, "mPowerMenuAlpha":I
    int-to-double v4, v1

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double v2, v4, v6

    .line 383
    .local v2, "dAlpha":D
    double-to-float v0, v2

    .line 384
    .local v0, "alpha":F
    return v0
.end method

.method private setPowerMenuDialogDim()F
    .registers 9

    .prologue
    .line 388
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 389
    const-string/jumbo v5, "transparent_power_dialog_dim"

    const/16 v6, 0x32

    .line 388
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 390
    .local v3, "mPowerMenuDialogDim":I
    int-to-double v4, v3

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double v0, v4, v6

    .line 391
    .local v0, "dDim":D
    double-to-float v2, v0

    .line 392
    .local v2, "dim":F
    return v2
.end method

.method private setupAirplaneModeListeners()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 236
    iget-object v7, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "phone"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 238
    .local v6, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v7, p0, Lcom/android/server/policy/GlobalActions;->mPhoneStateListeners:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "listener$iterator":Ljava/util/Iterator;
    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_23

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/PhoneStateListener;

    .line 239
    .local v2, "listener":Landroid/telephony/PhoneStateListener;
    invoke-virtual {v6, v2, v9}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_13

    .line 241
    .end local v2    # "listener":Landroid/telephony/PhoneStateListener;
    :cond_23
    iget-object v7, p0, Lcom/android/server/policy/GlobalActions;->mPhoneStateListeners:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 243
    iget-object v7, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v4

    .line 245
    .local v4, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v4, :cond_63

    .line 246
    iput-boolean v10, p0, Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z

    .line 247
    new-instance v7, Ljava/util/BitSet;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/BitSet;-><init>(I)V

    iput-object v7, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeBits:Ljava/util/BitSet;

    .line 248
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_42
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_65

    .line 249
    move v0, v1

    .line 250
    .local v0, "finalI":I
    new-instance v5, Lcom/android/server/policy/GlobalActions$9;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    invoke-direct {v5, p0, v7, v0}, Lcom/android/server/policy/GlobalActions$9;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    .line 268
    .local v5, "subListener":Landroid/telephony/PhoneStateListener;
    iget-object v7, p0, Lcom/android/server/policy/GlobalActions;->mPhoneStateListeners:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    invoke-virtual {v6, v5, v10}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 248
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    .line 272
    .end local v0    # "finalI":I
    .end local v1    # "i":I
    .end local v5    # "subListener":Landroid/telephony/PhoneStateListener;
    :cond_63
    iput-boolean v9, p0, Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z

    .line 275
    :cond_65
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getUpdatedAirplaneToggleState()Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 277
    iget-object v7, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "theme"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ThemeManager;

    iput-object v7, p0, Lcom/android/server/policy/GlobalActions;->mThemeManager:Landroid/app/ThemeManager;

    .line 278
    iget-object v7, p0, Lcom/android/server/policy/GlobalActions;->mThemeManager:Landroid/app/ThemeManager;

    if-eqz v7, :cond_83

    .line 279
    iget-object v7, p0, Lcom/android/server/policy/GlobalActions;->mThemeManager:Landroid/app/ThemeManager;

    iget-object v8, p0, Lcom/android/server/policy/GlobalActions;->mThemeCallback:Landroid/app/IThemeCallback;

    invoke-virtual {v7, v8}, Landroid/app/ThemeManager;->addCallback(Landroid/app/IThemeCallback;)V

    .line 234
    :cond_83
    return-void
.end method

.method private startOnTheGo()V
    .registers 5

    .prologue
    .line 980
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.systemui"

    .line 981
    const-string/jumbo v3, "com.android.systemui.rr.onthego.OnTheGoService"

    .line 980
    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 983
    .local v1, "startIntent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 984
    const-string/jumbo v2, "start"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 985
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 979
    return-void
.end method

.method private takeScreenrecord()V
    .registers 9

    .prologue
    .line 1107
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mScreenrecordLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1108
    :try_start_3
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mScreenrecordConnection:Landroid/content/ServiceConnection;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_3a

    if-eqz v3, :cond_9

    monitor-exit v4

    .line 1109
    return-void

    .line 1111
    :cond_9
    :try_start_9
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.android.systemui"

    .line 1112
    const-string/jumbo v5, "com.android.systemui.omni.screenrecord.TakeScreenrecordService"

    .line 1111
    invoke-direct {v0, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1114
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1115
    new-instance v1, Lcom/android/server/policy/GlobalActions$23;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$23;-><init>(Lcom/android/server/policy/GlobalActions;)V

    .line 1145
    .local v1, "conn":Landroid/content/ServiceConnection;
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    .line 1146
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v6, 0x1

    .line 1145
    invoke-virtual {v3, v2, v1, v6, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 1147
    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mScreenrecordConnection:Landroid/content/ServiceConnection;

    .line 1148
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions;->mScreenrecordTimeout:Ljava/lang/Runnable;

    const-wide/32 v6, 0x1c61a0

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_38
    .catchall {:try_start_9 .. :try_end_38} :catchall_3a

    :cond_38
    monitor-exit v4

    .line 1106
    return-void

    .line 1107
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "conn":Landroid/content/ServiceConnection;
    .end local v2    # "intent":Landroid/content/Intent;
    :catchall_3a
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private takeScreenshot(I)V
    .registers 10
    .param p1, "screenshotType"    # I

    .prologue
    .line 1030
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1031
    :try_start_3
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mScreenshotConnection:Landroid/content/ServiceConnection;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_39

    if-eqz v3, :cond_9

    monitor-exit v4

    .line 1032
    return-void

    .line 1034
    :cond_9
    :try_start_9
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.android.systemui"

    .line 1035
    const-string/jumbo v5, "com.android.systemui.screenshot.TakeScreenshotService"

    .line 1034
    invoke-direct {v0, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1037
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1038
    new-instance v1, Lcom/android/server/policy/GlobalActions$22;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/GlobalActions$22;-><init>(Lcom/android/server/policy/GlobalActions;I)V

    .line 1081
    .local v1, "conn":Landroid/content/ServiceConnection;
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    .line 1082
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v6, 0x1

    .line 1081
    invoke-virtual {v3, v2, v1, v6, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 1083
    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 1084
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions;->mScreenshotTimeout:Ljava/lang/Runnable;

    const-wide/16 v6, 0x2710

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_37
    .catchall {:try_start_9 .. :try_end_37} :catchall_39

    :cond_37
    monitor-exit v4

    .line 1029
    return-void

    .line 1030
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "conn":Landroid/content/ServiceConnection;
    .end local v2    # "intent":Landroid/content/Intent;
    :catchall_39
    move-exception v3

    monitor-exit v4

    throw v3
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v0

    instance-of v0, v0, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;

    if-nez v0, :cond_d

    .line 1188
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1190
    :cond_d
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/policy/GlobalActions$Action;->onPress()V

    .line 1186
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1175
    iget-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mShowSilentToggle:Z

    if-eqz v1, :cond_b

    .line 1177
    :try_start_4
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_b} :catch_c

    .line 1174
    :cond_b
    :goto_b
    return-void

    .line 1178
    :catch_c
    move-exception v0

    .line 1180
    .local v0, "ie":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v1, "GlobalActions"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method public showDialog(ZZ)V
    .registers 5
    .param p1, "keyguardShowing"    # Z
    .param p2, "isDeviceProvisioned"    # Z

    .prologue
    const/4 v1, 0x0

    .line 288
    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    .line 289
    iput-boolean p2, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    .line 290
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v0, :cond_1d

    .line 291
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->dismiss()V

    .line 292
    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    .line 293
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->createDialog()Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    .line 295
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 287
    :goto_1c
    return-void

    .line 297
    :cond_1d
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->createDialog()Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    .line 298
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->handleShow()V

    goto :goto_1c
.end method

.method protected updatePowerMenuActions()V
    .registers 4

    .prologue
    .line 1635
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1637
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "power_menu_actions"

    const/4 v2, -0x2

    .line 1636
    invoke-static {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mActions:Ljava/lang/String;

    .line 1634
    return-void
.end method
