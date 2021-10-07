.class public Lcom/android/server/input/InputManagerService;
.super Landroid/hardware/input/IInputManager$Stub;
.source "InputManagerService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;,
        Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;,
        Lcom/android/server/input/InputManagerService$InputFilterHost;,
        Lcom/android/server/input/InputManagerService$InputManagerHandler;,
        Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;,
        Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;,
        Lcom/android/server/input/InputManagerService$LocalService;,
        Lcom/android/server/input/InputManagerService$Shell;,
        Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;,
        Lcom/android/server/input/InputManagerService$VibratorToken;,
        Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;,
        Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;
    }
.end annotation


# static fields
.field public static final BTN_MOUSE:I = 0x110

.field static final DEBUG:Z = false

.field private static final EXCLUDED_DEVICES_PATH:Ljava/lang/String; = "etc/excluded-input-devices.xml"

.field private static final INJECTION_TIMEOUT_MILLIS:I = 0x7530

.field private static final INPUT_EVENT_INJECTION_FAILED:I = 0x2

.field private static final INPUT_EVENT_INJECTION_PERMISSION_DENIED:I = 0x1

.field private static final INPUT_EVENT_INJECTION_SUCCEEDED:I = 0x0

.field private static final INPUT_EVENT_INJECTION_TIMED_OUT:I = 0x3

.field public static final KEY_STATE_DOWN:I = 0x1

.field public static final KEY_STATE_UNKNOWN:I = -0x1

.field public static final KEY_STATE_UP:I = 0x0

.field public static final KEY_STATE_VIRTUAL:I = 0x2

.field private static final MSG_DELIVER_INPUT_DEVICES_CHANGED:I = 0x1

.field private static final MSG_DELIVER_TABLET_MODE_CHANGED:I = 0x6

.field private static final MSG_INPUT_METHOD_SUBTYPE_CHANGED:I = 0x7

.field private static final MSG_RELOAD_DEVICE_ALIASES:I = 0x5

.field private static final MSG_RELOAD_KEYBOARD_LAYOUTS:I = 0x3

.field private static final MSG_SWITCH_KEYBOARD_LAYOUT:I = 0x2

.field private static final MSG_UPDATE_KEYBOARD_LAYOUTS:I = 0x4

.field public static final SW_CAMERA_LENS_COVER:I = 0x9

.field public static final SW_CAMERA_LENS_COVER_BIT:I = 0x200

.field public static final SW_HEADPHONE_INSERT:I = 0x2

.field public static final SW_HEADPHONE_INSERT_BIT:I = 0x4

.field public static final SW_JACK_BITS:I = 0xd4

.field public static final SW_JACK_PHYSICAL_INSERT:I = 0x7

.field public static final SW_JACK_PHYSICAL_INSERT_BIT:I = 0x80

.field public static final SW_KEYPAD_SLIDE:I = 0xa

.field public static final SW_KEYPAD_SLIDE_BIT:I = 0x400

.field public static final SW_LID:I = 0x0

.field public static final SW_LID_BIT:I = 0x1

.field public static final SW_LINEOUT_INSERT:I = 0x6

.field public static final SW_LINEOUT_INSERT_BIT:I = 0x40

.field public static final SW_MICROPHONE_INSERT:I = 0x4

.field public static final SW_MICROPHONE_INSERT_BIT:I = 0x10

.field public static final SW_TABLET_MODE:I = 0x1

.field public static final SW_TABLET_MODE_BIT:I = 0x2

.field static final TAG:Ljava/lang/String; = "InputManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentImeHandle:Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

.field private final mDataStore:Lcom/android/server/input/PersistentDataStore;

.field private final mDoubleTouchGestureEnableFile:Ljava/io/File;

.field private final mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

.field private mInputDevices:[Landroid/view/InputDevice;

.field private final mInputDevicesChangedListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mInputDevicesChangedPending:Z

.field private mInputDevicesLock:Ljava/lang/Object;

.field mInputFilter:Landroid/view/IInputFilter;

.field mInputFilterChain:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;",
            ">;"
        }
    .end annotation
.end field

.field mInputFilterHost:Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

.field final mInputFilterLock:Ljava/lang/Object;

.field private mKeyboardLayoutNotificationShown:Z

.field private mNextVibratorTokenValue:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private final mPtr:J

.field private mSystemReady:Z

.field private final mTabletModeChangedListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTabletModeLock:Ljava/lang/Object;

.field private final mTempFullKeyboards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/InputDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempTabletModeChangedListenersToNotify:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mUseDevInputEventForAudioJack:Z

.field private mVibratorLock:Ljava/lang/Object;

.field private mVibratorTokens:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/input/InputManagerService$VibratorToken;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

.field private mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;


# direct methods
.method static synthetic -get0(Lcom/android/server/input/InputManagerService;)Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDoubleTouchGestureEnableFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/InputManagerService$InputManagerHandler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/input/InputManagerService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    return-wide v0
.end method

.method static synthetic -wrap0(Lcom/android/server/input/InputManagerService;Landroid/view/InputEvent;II)Z
    .registers 5
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "displayId"    # I
    .param p3, "mode"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->injectInputEventInternal(Landroid/view/InputEvent;II)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Ljava/util/Locale;Ljava/util/Locale;)Z
    .registers 3
    .param p0, "systemLocale"    # Ljava/util/Locale;
    .param p1, "keyboardLocale"    # Ljava/util/Locale;

    .prologue
    invoke-static {p0, p1}, Lcom/android/server/input/InputManagerService;->isCompatibleLocale(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/input/InputManagerService;I)V
    .registers 2
    .param p1, "pid"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->onTabletModeChangedListenerDied(I)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/input/InputManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->reloadDeviceAliases()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/input/InputManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->reloadKeyboardLayouts()V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/input/InputManagerService;Landroid/hardware/display/DisplayViewport;Landroid/hardware/display/DisplayViewport;)V
    .registers 3
    .param p1, "defaultViewport"    # Landroid/hardware/display/DisplayViewport;
    .param p2, "externalTouchViewport"    # Landroid/hardware/display/DisplayViewport;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->setDisplayViewportsInternal(Landroid/hardware/display/DisplayViewport;Landroid/hardware/display/DisplayViewport;)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/input/InputManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->updateKeyboardLayouts()V

    return-void
.end method

.method static synthetic -wrap2(JLandroid/view/InputEvent;IIIIII)I
    .registers 11
    .param p0, "ptr"    # J
    .param p2, "event"    # Landroid/view/InputEvent;
    .param p3, "displayId"    # I
    .param p4, "injectorPid"    # I
    .param p5, "injectorUid"    # I
    .param p6, "syncMode"    # I
    .param p7, "timeoutMillis"    # I
    .param p8, "policyFlags"    # I

    .prologue
    invoke-static/range {p0 .. p8}, Lcom/android/server/input/InputManagerService;->nativeInjectInputEvent(JLandroid/view/InputEvent;IIIIII)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/input/InputManagerService;[Landroid/view/InputDevice;)V
    .registers 2
    .param p1, "oldInputDevices"    # [Landroid/view/InputDevice;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->deliverInputDevicesChanged([Landroid/view/InputDevice;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/input/InputManagerService;JZ)V
    .registers 5
    .param p1, "whenNanos"    # J
    .param p3, "inTabletMode"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->deliverTabletModeChanged(JZ)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/input/InputManagerService;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "inputMethodInfo"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p3, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->handleSwitchInputMethodSubtype(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/input/InputManagerService;Landroid/hardware/input/InputDeviceIdentifier;Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;)V
    .registers 3
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "handle"    # Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->handleSwitchKeyboardLayout(Landroid/hardware/input/InputDeviceIdentifier;Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;)V

    return-void
.end method

.method static synthetic -wrap7(JZ)V
    .registers 3
    .param p0, "ptr"    # J
    .param p2, "interactive"    # Z

    .prologue
    invoke-static {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeSetInteractive(JZ)V

    return-void
.end method

.method static synthetic -wrap8(JI)V
    .registers 3
    .param p0, "ptr"    # J
    .param p2, "deviceId"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeToggleCapsLock(JI)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/input/InputManagerService;I)V
    .registers 2
    .param p1, "pid"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->onInputDevicesChangedListenerDied(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 309
    invoke-direct {p0}, Landroid/hardware/input/IInputManager$Stub;-><init>()V

    .line 155
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mTabletModeLock:Ljava/lang/Object;

    .line 158
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 157
    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    .line 160
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 159
    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mTempTabletModeChangedListenersToNotify:Ljava/util/List;

    .line 163
    new-instance v1, Lcom/android/server/input/PersistentDataStore;

    invoke-direct {v1}, Lcom/android/server/input/PersistentDataStore;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 166
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    .line 168
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/view/InputDevice;

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    .line 170
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 169
    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    .line 173
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 172
    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    .line 175
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    .line 180
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    .line 182
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 181
    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/HashMap;

    .line 186
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    .line 190
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 189
    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilterChain:Ljava/util/ArrayList;

    .line 310
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 311
    new-instance v1, Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/DisplayThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/android/server/input/InputManagerService$InputManagerHandler;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    .line 314
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1120086

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 313
    iput-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mUseDevInputEventForAudioJack:Z

    .line 315
    const-string/jumbo v1, "InputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Initializing input manager, mUseDevInputEventForAudioJack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 316
    iget-boolean v4, p0, Lcom/android/server/input/InputManagerService;->mUseDevInputEventForAudioJack:Z

    .line 315
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-virtual {v3}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v3

    invoke-static {p0, v1, v3}, Lcom/android/server/input/InputManagerService;->nativeInit(Lcom/android/server/input/InputManagerService;Landroid/content/Context;Landroid/os/MessageQueue;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    .line 319
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 320
    const v3, 0x10400d6

    .line 319
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "doubleTouchGestureEnablePath":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c8

    move-object v1, v2

    :goto_bb
    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mDoubleTouchGestureEnableFile:Ljava/io/File;

    .line 324
    const-class v1, Landroid/hardware/input/InputManagerInternal;

    new-instance v3, Lcom/android/server/input/InputManagerService$LocalService;

    invoke-direct {v3, p0, v2}, Lcom/android/server/input/InputManagerService$LocalService;-><init>(Lcom/android/server/input/InputManagerService;Lcom/android/server/input/InputManagerService$LocalService;)V

    invoke-static {v1, v3}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 309
    return-void

    .line 322
    :cond_c8
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_bb
.end method

.method private cancelVibrateIfNeeded(Lcom/android/server/input/InputManagerService$VibratorToken;)V
    .registers 6
    .param p1, "v"    # Lcom/android/server/input/InputManagerService$VibratorToken;

    .prologue
    .line 1799
    monitor-enter p1

    .line 1800
    :try_start_1
    iget-boolean v0, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mVibrating:Z

    if-eqz v0, :cond_11

    .line 1801
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    iget v2, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mDeviceId:I

    iget v3, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mTokenValue:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/input/InputManagerService;->nativeCancelVibrate(JII)V

    .line 1802
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mVibrating:Z
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    :cond_11
    monitor-exit p1

    .line 1798
    return-void

    .line 1799
    :catchall_13
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method private checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "func"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1879
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v1, v2, :cond_d

    .line 1880
    return v4

    .line 1883
    :cond_d
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_16

    .line 1884
    return v4

    .line 1886
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1887
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1886
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1888
    const-string/jumbo v2, ", uid="

    .line 1886
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1888
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1886
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1889
    const-string/jumbo v2, " requires "

    .line 1886
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1890
    .local v0, "msg":Ljava/lang/String;
    const-string/jumbo v1, "InputManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1891
    return v3
.end method

.method private checkInjectEventsPermission(II)Z
    .registers 6
    .param p1, "injectorPid"    # I
    .param p2, "injectorUid"    # I

    .prologue
    const/4 v0, 0x0

    .line 2012
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.INJECT_EVENTS"

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_d

    const/4 v0, 0x1

    :cond_d
    return v0
.end method

.method private static containsInputDeviceWithDescriptor([Landroid/view/InputDevice;Ljava/lang/String;)Z
    .registers 6
    .param p0, "inputDevices"    # [Landroid/view/InputDevice;
    .param p1, "descriptor"    # Ljava/lang/String;

    .prologue
    .line 1084
    array-length v2, p0

    .line 1085
    .local v2, "numDevices":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v2, :cond_15

    .line 1086
    aget-object v1, p0, v0

    .line 1087
    .local v1, "inputDevice":Landroid/view/InputDevice;
    invoke-virtual {v1}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1088
    const/4 v3, 0x1

    return v3

    .line 1085
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1091
    .end local v1    # "inputDevice":Landroid/view/InputDevice;
    :cond_15
    const/4 v3, 0x0

    return v3
.end method

.method private deliverInputDevicesChanged([Landroid/view/InputDevice;)V
    .registers 15
    .param p1, "oldInputDevices"    # [Landroid/view/InputDevice;

    .prologue
    .line 756
    const/4 v7, 0x0

    .line 757
    .local v7, "numFullKeyboardsAdded":I
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 758
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 761
    iget-object v11, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v11

    .line 762
    :try_start_e
    iget-boolean v10, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_8d

    if-nez v10, :cond_14

    monitor-exit v11

    .line 763
    return-void

    .line 765
    :cond_14
    const/4 v10, 0x0

    :try_start_15
    iput-boolean v10, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    .line 767
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v9

    .line 768
    .local v9, "numListeners":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1e
    if-ge v1, v9, :cond_30

    .line 769
    iget-object v12, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    .line 770
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v10, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;

    .line 769
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 768
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 773
    :cond_30
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    array-length v5, v10

    .line 774
    .local v5, "numDevices":I
    mul-int/lit8 v10, v5, 0x2

    new-array v0, v10, [I
    :try_end_37
    .catchall {:try_start_15 .. :try_end_37} :catchall_8d

    .line 775
    .local v0, "deviceIdAndGeneration":[I
    const/4 v1, 0x0

    move v8, v7

    .end local v7    # "numFullKeyboardsAdded":I
    .local v8, "numFullKeyboardsAdded":I
    :goto_39
    if-ge v1, v5, :cond_7b

    .line 776
    :try_start_3b
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    aget-object v2, v10, v1

    .line 777
    .local v2, "inputDevice":Landroid/view/InputDevice;
    mul-int/lit8 v10, v1, 0x2

    invoke-virtual {v2}, Landroid/view/InputDevice;->getId()I

    move-result v12

    aput v12, v0, v10

    .line 778
    mul-int/lit8 v10, v1, 0x2

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v2}, Landroid/view/InputDevice;->getGeneration()I

    move-result v12

    aput v12, v0, v10

    .line 780
    invoke-virtual {v2}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v10

    if-nez v10, :cond_72

    invoke-virtual {v2}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v10

    if-eqz v10, :cond_102

    .line 782
    invoke-virtual {v2}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v10

    .line 781
    invoke-static {p1, v10}, Lcom/android/server/input/InputManagerService;->containsInputDeviceWithDescriptor([Landroid/view/InputDevice;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_74

    .line 783
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;
    :try_end_69
    .catchall {:try_start_3b .. :try_end_69} :catchall_ff

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "numFullKeyboardsAdded":I
    .restart local v7    # "numFullKeyboardsAdded":I
    :try_start_6b
    invoke-virtual {v10, v8, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_8d

    .line 775
    :goto_6e
    add-int/lit8 v1, v1, 0x1

    move v8, v7

    .end local v7    # "numFullKeyboardsAdded":I
    .restart local v8    # "numFullKeyboardsAdded":I
    goto :goto_39

    :cond_72
    move v7, v8

    .line 780
    .end local v8    # "numFullKeyboardsAdded":I
    .restart local v7    # "numFullKeyboardsAdded":I
    goto :goto_6e

    .line 785
    .end local v7    # "numFullKeyboardsAdded":I
    .restart local v8    # "numFullKeyboardsAdded":I
    :cond_74
    :try_start_74
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_79
    .catchall {:try_start_74 .. :try_end_79} :catchall_ff

    move v7, v8

    .end local v8    # "numFullKeyboardsAdded":I
    .restart local v7    # "numFullKeyboardsAdded":I
    goto :goto_6e

    .end local v2    # "inputDevice":Landroid/view/InputDevice;
    .end local v7    # "numFullKeyboardsAdded":I
    .restart local v8    # "numFullKeyboardsAdded":I
    :cond_7b
    monitor-exit v11

    .line 792
    const/4 v1, 0x0

    :goto_7d
    if-ge v1, v9, :cond_90

    .line 793
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;

    invoke-virtual {v10, v0}, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;->notifyInputDevicesChanged([I)V

    .line 792
    add-int/lit8 v1, v1, 0x1

    goto :goto_7d

    .line 761
    .end local v0    # "deviceIdAndGeneration":[I
    .end local v1    # "i":I
    .end local v5    # "numDevices":I
    .end local v8    # "numFullKeyboardsAdded":I
    .end local v9    # "numListeners":I
    .restart local v7    # "numFullKeyboardsAdded":I
    :catchall_8d
    move-exception v10

    :goto_8e
    monitor-exit v11

    throw v10

    .line 796
    .end local v7    # "numFullKeyboardsAdded":I
    .restart local v0    # "deviceIdAndGeneration":[I
    .restart local v1    # "i":I
    .restart local v5    # "numDevices":I
    .restart local v8    # "numFullKeyboardsAdded":I
    .restart local v9    # "numListeners":I
    :cond_90
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 799
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 800
    .local v3, "keyboardsMissingLayout":Ljava/util/List;, "Ljava/util/List<Landroid/view/InputDevice;>;"
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 801
    .local v6, "numFullKeyboards":I
    iget-object v11, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v11

    .line 802
    const/4 v1, 0x0

    :goto_a4
    if-ge v1, v6, :cond_cd

    .line 803
    :try_start_a6
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputDevice;

    .line 805
    .restart local v2    # "inputDevice":Landroid/view/InputDevice;
    invoke-virtual {v2}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/server/input/InputManagerService;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v4

    .line 806
    .local v4, "layout":Ljava/lang/String;
    if-nez v4, :cond_c5

    .line 807
    invoke-direct {p0, v2}, Lcom/android/server/input/InputManagerService;->getDefaultKeyboardLayout(Landroid/view/InputDevice;)Ljava/lang/String;

    move-result-object v4

    .line 808
    if-eqz v4, :cond_c5

    .line 810
    invoke-virtual {v2}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v10

    .line 809
    invoke-virtual {p0, v10, v4}, Lcom/android/server/input/InputManagerService;->setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    .line 813
    :cond_c5
    if-nez v4, :cond_ca

    .line 814
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_ca
    .catchall {:try_start_a6 .. :try_end_ca} :catchall_e9

    .line 802
    :cond_ca
    add-int/lit8 v1, v1, 0x1

    goto :goto_a4

    .end local v2    # "inputDevice":Landroid/view/InputDevice;
    .end local v4    # "layout":Ljava/lang/String;
    :cond_cd
    monitor-exit v11

    .line 819
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v10, :cond_e3

    .line 820
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_f7

    .line 821
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_ec

    .line 825
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/server/input/InputManagerService;->showMissingKeyboardLayoutNotification(Landroid/view/InputDevice;)V

    .line 833
    :cond_e3
    :goto_e3
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 754
    return-void

    .line 801
    :catchall_e9
    move-exception v10

    monitor-exit v11

    throw v10

    .line 827
    :cond_ec
    const/4 v10, 0x0

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/InputDevice;

    invoke-direct {p0, v10}, Lcom/android/server/input/InputManagerService;->showMissingKeyboardLayoutNotification(Landroid/view/InputDevice;)V

    goto :goto_e3

    .line 829
    :cond_f7
    iget-boolean v10, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    if-eqz v10, :cond_e3

    .line 830
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->hideMissingKeyboardLayoutNotification()V

    goto :goto_e3

    .line 761
    .end local v3    # "keyboardsMissingLayout":Ljava/util/List;, "Ljava/util/List<Landroid/view/InputDevice;>;"
    .end local v6    # "numFullKeyboards":I
    :catchall_ff
    move-exception v10

    move v7, v8

    .end local v8    # "numFullKeyboardsAdded":I
    .restart local v7    # "numFullKeyboardsAdded":I
    goto :goto_8e

    .end local v7    # "numFullKeyboardsAdded":I
    .restart local v2    # "inputDevice":Landroid/view/InputDevice;
    .restart local v8    # "numFullKeyboardsAdded":I
    :cond_102
    move v7, v8

    .end local v8    # "numFullKeyboardsAdded":I
    .restart local v7    # "numFullKeyboardsAdded":I
    goto/16 :goto_6e
.end method

.method private deliverTabletModeChanged(JZ)V
    .registers 9
    .param p1, "whenNanos"    # J
    .param p3, "inTabletMode"    # Z

    .prologue
    .line 1002
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mTempTabletModeChangedListenersToNotify:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1004
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mTabletModeLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1005
    :try_start_8
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1006
    .local v1, "numListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    if-ge v0, v1, :cond_21

    .line 1007
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mTempTabletModeChangedListenersToNotify:Ljava/util/List;

    .line 1008
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;

    .line 1007
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_33

    .line 1006
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_21
    monitor-exit v3

    .line 1011
    const/4 v0, 0x0

    :goto_23
    if-ge v0, v1, :cond_36

    .line 1012
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mTempTabletModeChangedListenersToNotify:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;->notifyTabletModeChanged(JZ)V

    .line 1011
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 1004
    .end local v0    # "i":I
    .end local v1    # "numListeners":I
    :catchall_33
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1001
    .restart local v0    # "i":I
    .restart local v1    # "numListeners":I
    :cond_36
    return-void
.end method

.method private dispatchUnhandledKey(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .registers 5
    .param p1, "focus"    # Lcom/android/server/input/InputWindowHandle;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 2007
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->dispatchUnhandledKey(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    return-object v0
.end method

.method private findInputFilterIndexLocked(Landroid/view/IInputFilter;)I
    .registers 4
    .param p1, "filter"    # Landroid/view/IInputFilter;

    .prologue
    .line 625
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilterChain:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 626
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilterChain:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

    invoke-static {v1}, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->-get0(Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;)Landroid/view/IInputFilter;

    move-result-object v1

    if-ne v1, p1, :cond_18

    .line 627
    return v0

    .line 625
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 630
    :cond_1b
    const/4 v1, -0x1

    return v1
.end method

.method private getDefaultKeyboardLayout(Landroid/view/InputDevice;)Ljava/lang/String;
    .registers 13
    .param p1, "d"    # Landroid/view/InputDevice;

    .prologue
    const/4 v10, 0x0

    .line 837
    iget-object v9, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget-object v8, v9, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 840
    .local v8, "systemLocale":Ljava/util/Locale;
    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 841
    return-object v10

    .line 843
    :cond_18
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 844
    .local v3, "layouts":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/input/KeyboardLayout;>;"
    new-instance v9, Lcom/android/server/input/InputManagerService$4;

    invoke-direct {v9, p0, p1, v8, v3}, Lcom/android/server/input/InputManagerService$4;-><init>(Lcom/android/server/input/InputManagerService;Landroid/view/InputDevice;Ljava/util/Locale;Ljava/util/List;)V

    invoke-direct {p0, v9}, Lcom/android/server/input/InputManagerService;->visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 865
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2c

    .line 866
    return-object v10

    .line 870
    :cond_2c
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 872
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 873
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_34
    if-ge v1, v0, :cond_72

    .line 874
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/KeyboardLayout;

    .line 875
    .local v2, "layout":Landroid/hardware/input/KeyboardLayout;
    invoke-virtual {v2}, Landroid/hardware/input/KeyboardLayout;->getLocales()Landroid/os/LocaleList;

    move-result-object v6

    .line 876
    .local v6, "locales":Landroid/os/LocaleList;
    invoke-virtual {v6}, Landroid/os/LocaleList;->size()I

    move-result v7

    .line 877
    .local v7, "numLocales":I
    const/4 v5, 0x0

    .local v5, "localeIndex":I
    :goto_45
    if-ge v5, v7, :cond_6f

    .line 878
    invoke-virtual {v6, v5}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v4

    .line 879
    .local v4, "locale":Ljava/util/Locale;
    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6c

    .line 880
    invoke-virtual {v4}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 879
    if-eqz v9, :cond_6c

    .line 881
    invoke-virtual {v2}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 877
    :cond_6c
    add-int/lit8 v5, v5, 0x1

    goto :goto_45

    .line 873
    .end local v4    # "locale":Ljava/util/Locale;
    :cond_6f
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 886
    .end local v2    # "layout":Landroid/hardware/input/KeyboardLayout;
    .end local v5    # "localeIndex":I
    .end local v6    # "locales":Landroid/os/LocaleList;
    .end local v7    # "numLocales":I
    :cond_72
    const/4 v1, 0x0

    :goto_73
    if-ge v1, v0, :cond_a3

    .line 887
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/KeyboardLayout;

    .line 888
    .restart local v2    # "layout":Landroid/hardware/input/KeyboardLayout;
    invoke-virtual {v2}, Landroid/hardware/input/KeyboardLayout;->getLocales()Landroid/os/LocaleList;

    move-result-object v6

    .line 889
    .restart local v6    # "locales":Landroid/os/LocaleList;
    invoke-virtual {v6}, Landroid/os/LocaleList;->size()I

    move-result v7

    .line 890
    .restart local v7    # "numLocales":I
    const/4 v5, 0x0

    .restart local v5    # "localeIndex":I
    :goto_84
    if-ge v5, v7, :cond_a0

    .line 891
    invoke-virtual {v6, v5}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v4

    .line 892
    .restart local v4    # "locale":Ljava/util/Locale;
    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9d

    .line 893
    invoke-virtual {v2}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 890
    :cond_9d
    add-int/lit8 v5, v5, 0x1

    goto :goto_84

    .line 886
    .end local v4    # "locale":Ljava/util/Locale;
    :cond_a0
    add-int/lit8 v1, v1, 0x1

    goto :goto_73

    .line 899
    .end local v2    # "layout":Landroid/hardware/input/KeyboardLayout;
    .end local v5    # "localeIndex":I
    .end local v6    # "locales":Landroid/os/LocaleList;
    .end local v7    # "numLocales":I
    :cond_a3
    const/4 v9, 0x0

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/input/KeyboardLayout;

    invoke-virtual {v9}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method private getDeviceAlias(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "uniqueId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 2133
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2135
    return-object v1

    .line 2137
    :cond_8
    return-object v1
.end method

.method private getDoubleTapTimeout()I
    .registers 2

    .prologue
    .line 2080
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    return v0
.end method

.method private getExcludedDeviceNames()[Ljava/lang/String;
    .registers 13

    .prologue
    .line 2024
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2027
    .local v7, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 2029
    .local v8, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v9

    const-string/jumbo v10, "etc/excluded-input-devices.xml"

    invoke-direct {v0, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2030
    .local v0, "confFile":Ljava/io/File;
    const/4 v1, 0x0

    .line 2032
    .local v1, "confreader":Ljava/io/FileReader;
    :try_start_13
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_18} :catch_9c
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_18} :catch_62
    .catchall {:try_start_13 .. :try_end_18} :catchall_90

    .line 2033
    .end local v1    # "confreader":Ljava/io/FileReader;
    .local v2, "confreader":Ljava/io/FileReader;
    :try_start_18
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 2034
    .local v8, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v8, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 2035
    const-string/jumbo v9, "devices"

    invoke-static {v8, v9}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 2038
    :cond_25
    :goto_25
    invoke-static {v8}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2039
    const-string/jumbo v9, "device"

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_32
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_32} :catch_56
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_32} :catch_9e
    .catchall {:try_start_18 .. :try_end_32} :catchall_99

    move-result v9

    if-nez v9, :cond_48

    .line 2052
    if-eqz v2, :cond_3a

    :try_start_37
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_60

    :cond_3a
    :goto_3a
    move-object v1, v2

    .line 2055
    .end local v2    # "confreader":Ljava/io/FileReader;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_3b
    :goto_3b
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    return-object v9

    .line 2042
    .restart local v2    # "confreader":Ljava/io/FileReader;
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_48
    :try_start_48
    const-string/jumbo v9, "name"

    const/4 v10, 0x0

    invoke-interface {v8, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2043
    .local v6, "name":Ljava/lang/String;
    if-eqz v6, :cond_25

    .line 2044
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_55
    .catch Ljava/io/FileNotFoundException; {:try_start_48 .. :try_end_55} :catch_56
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_55} :catch_9e
    .catchall {:try_start_48 .. :try_end_55} :catchall_99

    goto :goto_25

    .line 2047
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_56
    move-exception v3

    .local v3, "e":Ljava/io/FileNotFoundException;
    move-object v1, v2

    .line 2052
    .end local v2    # "confreader":Ljava/io/FileReader;
    :goto_58
    if-eqz v1, :cond_3b

    :try_start_5a
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5e

    goto :goto_3b

    :catch_5e
    move-exception v4

    .local v4, "e":Ljava/io/IOException;
    goto :goto_3b

    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v2    # "confreader":Ljava/io/FileReader;
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_60
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_3a

    .line 2049
    .end local v2    # "confreader":Ljava/io/FileReader;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v1    # "confreader":Ljava/io/FileReader;
    .local v8, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_62
    move-exception v5

    .line 2050
    .end local v1    # "confreader":Ljava/io/FileReader;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v5, "e":Ljava/lang/Exception;
    :goto_63
    :try_start_63
    const-string/jumbo v9, "InputManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Exception while parsing \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_88
    .catchall {:try_start_63 .. :try_end_88} :catchall_90

    .line 2052
    if-eqz v1, :cond_3b

    :try_start_8a
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_8e

    goto :goto_3b

    :catch_8e
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_3b

    .line 2051
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_90
    move-exception v9

    .line 2052
    :goto_91
    if-eqz v1, :cond_96

    :try_start_93
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_96} :catch_97

    .line 2051
    :cond_96
    :goto_96
    throw v9

    .line 2052
    :catch_97
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_96

    .line 2051
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v2    # "confreader":Ljava/io/FileReader;
    :catchall_99
    move-exception v9

    move-object v1, v2

    .end local v2    # "confreader":Ljava/io/FileReader;
    .local v1, "confreader":Ljava/io/FileReader;
    goto :goto_91

    .line 2047
    .local v1, "confreader":Ljava/io/FileReader;
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_9c
    move-exception v3

    .restart local v3    # "e":Ljava/io/FileNotFoundException;
    goto :goto_58

    .line 2049
    .end local v1    # "confreader":Ljava/io/FileReader;
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2    # "confreader":Ljava/io/FileReader;
    :catch_9e
    move-exception v5

    .restart local v5    # "e":Ljava/lang/Exception;
    move-object v1, v2

    .end local v2    # "confreader":Ljava/io/FileReader;
    .local v1, "confreader":Ljava/io/FileReader;
    goto :goto_63
.end method

.method private getHoverTapSlop()I
    .registers 2

    .prologue
    .line 2075
    invoke-static {}, Landroid/view/ViewConfiguration;->getHoverTapSlop()I

    move-result v0

    return v0
.end method

.method private getHoverTapTimeout()I
    .registers 2

    .prologue
    .line 2070
    invoke-static {}, Landroid/view/ViewConfiguration;->getHoverTapTimeout()I

    move-result v0

    return v0
.end method

.method private getKeyRepeatDelay()I
    .registers 2

    .prologue
    .line 2065
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v0

    return v0
.end method

.method private getKeyRepeatTimeout()I
    .registers 2

    .prologue
    .line 2060
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v0

    return v0
.end method

.method private getKeyboardLayoutOverlay(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;
    .registers 8
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .prologue
    const/4 v5, 0x0

    .line 2100
    iget-boolean v2, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    if-nez v2, :cond_6

    .line 2101
    return-object v5

    .line 2104
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 2105
    .local v0, "keyboardLayoutDescriptor":Ljava/lang/String;
    if-nez v0, :cond_d

    .line 2106
    return-object v5

    .line 2109
    :cond_d
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    .line 2110
    .local v1, "result":[Ljava/lang/String;
    new-instance v2, Lcom/android/server/input/InputManagerService$16;

    invoke-direct {v2, p0, v1}, Lcom/android/server/input/InputManagerService$16;-><init>(Lcom/android/server/input/InputManagerService;[Ljava/lang/String;)V

    invoke-direct {p0, v0, v2}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 2123
    const/4 v2, 0x0

    aget-object v2, v1, v2

    if-nez v2, :cond_3f

    .line 2124
    const-string/jumbo v2, "InputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not get keyboard layout with descriptor \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2125
    const-string/jumbo v4, "\'."

    .line 2124
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2126
    return-object v5

    .line 2128
    :cond_3f
    return-object v1
.end method

.method private getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;
    .registers 5
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .prologue
    .line 1307
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_11

    .line 1308
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "identifier and descriptor must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1311
    :cond_11
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getVendorId()I

    move-result v1

    if-nez v1, :cond_22

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getProductId()I

    move-result v1

    if-nez v1, :cond_22

    .line 1312
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1314
    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1315
    .local v0, "bob":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "vendor:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getVendorId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1316
    const-string/jumbo v1, ",product:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getProductId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1317
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getLocalesFromLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;
    .registers 3
    .param p0, "languageTags"    # Ljava/lang/String;

    .prologue
    .line 1296
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1297
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    return-object v0

    .line 1299
    :cond_b
    const/16 v0, 0x7c

    const/16 v1, 0x2c

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v0

    return-object v0
.end method

.method private getLongPressTimeout()I
    .registers 2

    .prologue
    .line 2085
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    return v0
.end method

.method private getPointerIcon()Landroid/view/PointerIcon;
    .registers 2

    .prologue
    .line 2095
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/PointerIcon;->getDefaultIcon(Landroid/content/Context;)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method private getPointerLayer()I
    .registers 2

    .prologue
    .line 2090
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->getPointerLayer()I

    move-result v0

    return v0
.end method

.method private getPointerSpeedSetting()I
    .registers 6

    .prologue
    .line 1642
    const/4 v1, 0x0

    .line 1644
    .local v1, "speed":I
    :try_start_1
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1645
    const-string/jumbo v3, "pointer_speed"

    const/4 v4, -0x2

    .line 1644
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_e
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_e} :catch_10

    move-result v1

    .line 1648
    :goto_f
    return v1

    .line 1646
    :catch_10
    move-exception v0

    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_f
.end method

.method private getShowTouchesSetting(I)I
    .registers 7
    .param p1, "defaultValue"    # I

    .prologue
    .line 1687
    move v0, p1

    .line 1689
    .local v0, "result":I
    :try_start_1
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1690
    const-string/jumbo v3, "show_touches"

    const/4 v4, -0x2

    .line 1689
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_e
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_e} :catch_10

    move-result v0

    .line 1693
    :goto_f
    return v0

    .line 1691
    :catch_10
    move-exception v1

    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_f
.end method

.method private getStylusIconEnabled(I)I
    .registers 6
    .param p1, "defaultValue"    # I

    .prologue
    .line 1713
    move v0, p1

    .line 1715
    .local v0, "result":I
    :try_start_1
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1716
    const-string/jumbo v3, "stylus_icon_enabled"

    .line 1715
    invoke-static {v2, v3}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_d
    .catch Lcyanogenmod/providers/CMSettings$CMSettingNotFoundException; {:try_start_1 .. :try_end_d} :catch_f

    move-result v0

    .line 1719
    :goto_e
    return v0

    .line 1717
    :catch_f
    move-exception v1

    .local v1, "snfe":Lcyanogenmod/providers/CMSettings$CMSettingNotFoundException;
    goto :goto_e
.end method

.method private getVirtualKeyQuietTimeMillis()I
    .registers 3

    .prologue
    .line 2018
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2019
    const v1, 0x10e007c

    .line 2018
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method private getVolumeKeysRotationSetting(I)I
    .registers 7
    .param p1, "defaultValue"    # I

    .prologue
    .line 1739
    move v0, p1

    .line 1741
    .local v0, "result":I
    :try_start_1
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1742
    const-string/jumbo v3, "swap_volume_keys_on_rotation"

    const/4 v4, -0x2

    .line 1741
    invoke-static {v2, v3, v4}, Lcyanogenmod/providers/CMSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_e
    .catch Lcyanogenmod/providers/CMSettings$CMSettingNotFoundException; {:try_start_1 .. :try_end_e} :catch_10

    move-result v0

    .line 1745
    :goto_f
    return v0

    .line 1743
    :catch_10
    move-exception v1

    .local v1, "snfe":Lcyanogenmod/providers/CMSettings$CMSettingNotFoundException;
    goto :goto_f
.end method

.method private handleSwitchInputMethodSubtype(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "inputMethodInfo"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p3, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    const/4 v3, 0x0

    .line 1524
    if-nez p2, :cond_d

    .line 1525
    const-string/jumbo v1, "InputManager"

    const-string/jumbo v2, "No InputMethod is running, ignoring change"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    return-void

    .line 1528
    :cond_d
    if-eqz p3, :cond_1c

    const-string/jumbo v1, "keyboard"

    invoke-virtual {p3}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1532
    :cond_1c
    new-instance v0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    invoke-direct {v0, p2, p3}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;-><init>(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 1533
    .local v0, "handle":Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mCurrentImeHandle:Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 1534
    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mCurrentImeHandle:Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    .line 1535
    invoke-direct {p0, v3, v0}, Lcom/android/server/input/InputManagerService;->handleSwitchKeyboardLayout(Landroid/hardware/input/InputDeviceIdentifier;Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;)V

    .line 1519
    :cond_2e
    return-void

    .line 1529
    .end local v0    # "handle":Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;
    :cond_2f
    const-string/jumbo v1, "InputManager"

    const-string/jumbo v2, "InputMethodSubtype changed to non-keyboard subtype, ignoring change"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    return-void
.end method

.method private handleSwitchKeyboardLayout(Landroid/hardware/input/InputDeviceIdentifier;Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;)V
    .registers 12
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "handle"    # Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    .prologue
    .line 1542
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1543
    :try_start_3
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    const/4 v3, 0x0

    array-length v6, v5

    :goto_7
    if-ge v3, v6, :cond_4d

    aget-object v1, v5, v3

    .line 1544
    .local v1, "device":Landroid/view/InputDevice;
    if-eqz p1, :cond_17

    invoke-virtual {v1}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/hardware/input/InputDeviceIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3d

    .line 1545
    :cond_17
    invoke-virtual {v1}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v7

    if-eqz v7, :cond_3d

    .line 1548
    invoke-virtual {v1}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v2

    .line 1549
    .local v2, "key":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1550
    .local v0, "changed":Z
    iget-object v7, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v7
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_4a

    .line 1552
    :try_start_29
    iget-object v8, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v8, v2, p2}, Lcom/android/server/input/PersistentDataStore;->switchKeyboardLayout(Ljava/lang/String;Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;)Z
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_40

    move-result v8

    if-eqz v8, :cond_32

    .line 1553
    const/4 v0, 0x1

    .line 1556
    :cond_32
    :try_start_32
    iget-object v8, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v8}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_47

    :try_start_37
    monitor-exit v7

    .line 1559
    if-eqz v0, :cond_3d

    .line 1560
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->reloadKeyboardLayouts()V
    :try_end_3d
    .catchall {:try_start_37 .. :try_end_3d} :catchall_4a

    .line 1543
    .end local v0    # "changed":Z
    .end local v2    # "key":Ljava/lang/String;
    :cond_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 1555
    .restart local v0    # "changed":Z
    .restart local v2    # "key":Ljava/lang/String;
    :catchall_40
    move-exception v3

    .line 1556
    :try_start_41
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v5}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1555
    throw v3
    :try_end_47
    .catchall {:try_start_41 .. :try_end_47} :catchall_47

    .line 1550
    :catchall_47
    move-exception v3

    :try_start_48
    monitor-exit v7

    throw v3
    :try_end_4a
    .catchall {:try_start_48 .. :try_end_4a} :catchall_4a

    .line 1542
    .end local v0    # "changed":Z
    .end local v1    # "device":Landroid/view/InputDevice;
    .end local v2    # "key":Ljava/lang/String;
    :catchall_4a
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_4d
    monitor-exit v4

    .line 1541
    return-void
.end method

.method private hideMissingKeyboardLayoutNotification()V
    .registers 5

    .prologue
    .line 1051
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    if-eqz v0, :cond_12

    .line 1052
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    .line 1053
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 1055
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1053
    const/4 v2, 0x0

    .line 1054
    const v3, 0x10404c6

    .line 1053
    invoke-virtual {v0, v2, v3, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1050
    :cond_12
    return-void
.end method

.method private injectInputEventInternal(Landroid/view/InputEvent;II)Z
    .registers 16
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "displayId"    # I
    .param p3, "mode"    # I

    .prologue
    .line 639
    if-nez p1, :cond_b

    .line 640
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "event must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 642
    :cond_b
    if-eqz p3, :cond_1c

    .line 643
    const/4 v0, 0x2

    if-eq p3, v0, :cond_1c

    .line 644
    const/4 v0, 0x1

    if-eq p3, v0, :cond_1c

    .line 645
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "mode is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 648
    :cond_1c
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 649
    .local v4, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 650
    .local v5, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 653
    .local v10, "ident":J
    :try_start_28
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    .line 654
    const/16 v7, 0x7530

    const/high16 v8, 0x8000000

    move-object v2, p1

    move v3, p2

    move v6, p3

    .line 653
    invoke-static/range {v0 .. v8}, Lcom/android/server/input/InputManagerService;->nativeInjectInputEvent(JLandroid/view/InputEvent;IIIIII)I
    :try_end_34
    .catchall {:try_start_28 .. :try_end_34} :catchall_5e

    move-result v9

    .line 656
    .local v9, "result":I
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 658
    packed-switch v9, :pswitch_data_b2

    .line 670
    :pswitch_3b
    const-string/jumbo v0, "InputManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Input event injection from pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    const/4 v0, 0x0

    return v0

    .line 655
    .end local v9    # "result":I
    :catchall_5e
    move-exception v0

    .line 656
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 655
    throw v0

    .line 660
    .restart local v9    # "result":I
    :pswitch_63
    const-string/jumbo v0, "InputManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Input event injection from pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " permission denied."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    new-instance v0, Ljava/lang/SecurityException;

    .line 662
    const-string/jumbo v1, "Injecting to another application requires INJECT_EVENTS permission"

    .line 661
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 664
    :pswitch_8d
    const/4 v0, 0x1

    return v0

    .line 666
    :pswitch_8f
    const-string/jumbo v0, "InputManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Input event injection from pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " timed out."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    const/4 v0, 0x0

    return v0

    .line 658
    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_8d
        :pswitch_63
        :pswitch_3b
        :pswitch_8f
    .end packed-switch
.end method

.method private interceptKeyBeforeDispatching(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)J
    .registers 6
    .param p1, "focus"    # Lcom/android/server/input/InputWindowHandle;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 2001
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->interceptKeyBeforeDispatching(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)J

    move-result-wide v0

    return-wide v0
.end method

.method private interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 1989
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v0

    return v0
.end method

.method private interceptMotionBeforeQueueingNonInteractive(JI)I
    .registers 5
    .param p1, "whenNanos"    # J
    .param p3, "policyFlags"    # I

    .prologue
    .line 1994
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->interceptMotionBeforeQueueingNonInteractive(JI)I

    move-result v0

    return v0
.end method

.method private static isCompatibleLocale(Ljava/util/Locale;Ljava/util/Locale;)Z
    .registers 5
    .param p0, "systemLocale"    # Ljava/util/Locale;
    .param p1, "keyboardLocale"    # Ljava/util/Locale;

    .prologue
    const/4 v2, 0x0

    .line 904
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 905
    return v2

    .line 908
    :cond_10
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 909
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 913
    :cond_24
    const/4 v0, 0x1

    return v0

    .line 910
    :cond_26
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 911
    return v2
.end method

.method private static native nativeCancelVibrate(JII)V
.end method

.method private static native nativeDump(J)Ljava/lang/String;
.end method

.method private static native nativeGetKeyCodeState(JIII)I
.end method

.method private static native nativeGetScanCodeState(JIII)I
.end method

.method private static native nativeGetSwitchState(JIII)I
.end method

.method private static native nativeHasKeys(JII[I[Z)Z
.end method

.method private static native nativeInit(Lcom/android/server/input/InputManagerService;Landroid/content/Context;Landroid/os/MessageQueue;)J
.end method

.method private static native nativeInjectInputEvent(JLandroid/view/InputEvent;IIIIII)I
.end method

.method private static native nativeMonitor(J)V
.end method

.method private static native nativeRegisterInputChannel(JLandroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;Z)V
.end method

.method private static native nativeReloadCalibration(J)V
.end method

.method private static native nativeReloadDeviceAliases(J)V
.end method

.method private static native nativeReloadKeyboardLayouts(J)V
.end method

.method private static native nativeReloadPointerIcons(J)V
.end method

.method private static native nativeSetCustomPointerIcon(JLandroid/view/PointerIcon;)V
.end method

.method private static native nativeSetDisplayViewport(JZIIIIIIIIIIII)V
.end method

.method private static native nativeSetFocusedApplication(JLcom/android/server/input/InputApplicationHandle;)V
.end method

.method private static native nativeSetInputDispatchMode(JZZ)V
.end method

.method private static native nativeSetInputFilterEnabled(JZ)V
.end method

.method private static native nativeSetInputWindows(J[Lcom/android/server/input/InputWindowHandle;)V
.end method

.method private static native nativeSetInteractive(JZ)V
.end method

.method private static native nativeSetPointerIconType(JI)V
.end method

.method private static native nativeSetPointerSpeed(JI)V
.end method

.method private static native nativeSetShowTouches(JZ)V
.end method

.method private static native nativeSetStylusIconEnabled(JZ)V
.end method

.method private static native nativeSetSystemUiVisibility(JI)V
.end method

.method private static native nativeSetVolumeKeysRotation(JI)V
.end method

.method private static native nativeStart(J)V
.end method

.method private static native nativeToggleCapsLock(JI)V
.end method

.method private static native nativeTransferTouchFocus(JLandroid/view/InputChannel;Landroid/view/InputChannel;)Z
.end method

.method private static native nativeUnregisterInputChannel(JLandroid/view/InputChannel;)V
.end method

.method private static native nativeVibrate(JI[JII)V
.end method

.method private notifyANR(Lcom/android/server/input/InputApplicationHandle;Lcom/android/server/input/InputWindowHandle;Ljava/lang/String;)J
    .registers 6
    .param p1, "inputApplicationHandle"    # Lcom/android/server/input/InputApplicationHandle;
    .param p2, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 1959
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyANR(Lcom/android/server/input/InputApplicationHandle;Lcom/android/server/input/InputWindowHandle;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private notifyConfigurationChanged(J)V
    .registers 4
    .param p1, "whenNanos"    # J

    .prologue
    .line 1903
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyConfigurationChanged()V

    .line 1902
    return-void
.end method

.method private notifyInputChannelBroken(Lcom/android/server/input/InputWindowHandle;)V
    .registers 3
    .param p1, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;

    .prologue
    .line 1953
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyInputChannelBroken(Lcom/android/server/input/InputWindowHandle;)V

    .line 1952
    return-void
.end method

.method private notifyInputDevicesChanged([Landroid/view/InputDevice;)V
    .registers 6
    .param p1, "inputDevices"    # [Landroid/view/InputDevice;

    .prologue
    .line 1908
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1909
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    if-nez v0, :cond_16

    .line 1910
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    .line 1911
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    .line 1912
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    .line 1911
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1915
    :cond_16
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1a

    monitor-exit v1

    .line 1907
    return-void

    .line 1908
    :catchall_1a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private notifySwitch(JII)V
    .registers 12
    .param p1, "whenNanos"    # J
    .param p3, "switchValues"    # I
    .param p4, "switchMask"    # I

    .prologue
    const/4 v3, 0x0

    .line 1926
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_f

    .line 1927
    and-int/lit8 v4, p3, 0x1

    if-nez v4, :cond_55

    const/4 v2, 0x1

    .line 1928
    .local v2, "lidOpen":Z
    :goto_a
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v4, p1, p2, v2}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyLidSwitchChanged(JZ)V

    .line 1931
    .end local v2    # "lidOpen":Z
    :cond_f
    and-int/lit16 v4, p4, 0x200

    if-eqz v4, :cond_1d

    .line 1932
    and-int/lit16 v4, p3, 0x200

    if-eqz v4, :cond_57

    const/4 v1, 0x1

    .line 1933
    .local v1, "lensCovered":Z
    :goto_18
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v4, p1, p2, v1}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyCameraLensCoverSwitchChanged(JZ)V

    .line 1936
    .end local v1    # "lensCovered":Z
    :cond_1d
    iget-boolean v4, p0, Lcom/android/server/input/InputManagerService;->mUseDevInputEventForAudioJack:Z

    if-eqz v4, :cond_2a

    and-int/lit16 v4, p4, 0xd4

    if-eqz v4, :cond_2a

    .line 1937
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    invoke-interface {v4, p1, p2, p3, p4}, Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;->notifyWiredAccessoryChanged(JII)V

    .line 1941
    :cond_2a
    and-int/lit8 v4, p4, 0x2

    if-eqz v4, :cond_54

    .line 1942
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1943
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    const-wide/16 v4, -0x1

    and-long/2addr v4, p1

    long-to-int v4, v4

    iput v4, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1944
    const/16 v4, 0x20

    shr-long v4, p1, v4

    long-to-int v4, v4

    iput v4, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 1945
    and-int/lit8 v4, p3, 0x2

    if-eqz v4, :cond_44

    const/4 v3, 0x1

    :cond_44
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1946
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v4, 0x6

    invoke-virtual {v3, v4, v0}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1920
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_54
    return-void

    .line 1927
    :cond_55
    const/4 v2, 0x0

    .restart local v2    # "lidOpen":Z
    goto :goto_a

    .line 1932
    .end local v2    # "lidOpen":Z
    :cond_57
    const/4 v1, 0x0

    .restart local v1    # "lensCovered":Z
    goto :goto_18
.end method

.method private onInputDevicesChangedListenerDied(I)V
    .registers 4
    .param p1, "pid"    # I

    .prologue
    .line 748
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 749
    :try_start_3
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    .line 747
    return-void

    .line 748
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private onTabletModeChangedListenerDied(I)V
    .registers 4
    .param p1, "pid"    # I

    .prologue
    .line 995
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mTabletModeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 996
    :try_start_3
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    .line 994
    return-void

    .line 995
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private registerAccessibilityLargePointerSettingObserver()V
    .registers 6

    .prologue
    .line 1676
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1677
    const-string/jumbo v1, "accessibility_large_pointer_icon"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1678
    new-instance v2, Lcom/android/server/input/InputManagerService$12;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$12;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    .line 1677
    const/4 v3, 0x1

    .line 1683
    const/4 v4, -0x1

    .line 1676
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1675
    return-void
.end method

.method private registerPointerSpeedSettingObserver()V
    .registers 6

    .prologue
    .line 1631
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1632
    const-string/jumbo v1, "pointer_speed"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1633
    new-instance v2, Lcom/android/server/input/InputManagerService$10;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$10;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    .line 1632
    const/4 v3, 0x1

    .line 1638
    const/4 v4, -0x1

    .line 1631
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1630
    return-void
.end method

.method private registerShowTouchesSettingObserver()V
    .registers 6

    .prologue
    .line 1657
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1658
    const-string/jumbo v1, "show_touches"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1659
    new-instance v2, Lcom/android/server/input/InputManagerService$11;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$11;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    .line 1658
    const/4 v3, 0x1

    .line 1664
    const/4 v4, -0x1

    .line 1657
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1656
    return-void
.end method

.method private reloadDeviceAliases()V
    .registers 3

    .prologue
    .line 414
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->nativeReloadDeviceAliases(J)V

    .line 410
    return-void
.end method

.method private reloadKeyboardLayouts()V
    .registers 3

    .prologue
    .line 407
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->nativeReloadKeyboardLayouts(J)V

    .line 403
    return-void
.end method

.method private setDisplayViewport(ZLandroid/hardware/display/DisplayViewport;)V
    .registers 20
    .param p1, "external"    # Z
    .param p2, "viewport"    # Landroid/hardware/display/DisplayViewport;

    .prologue
    .line 431
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/input/InputManagerService;->mPtr:J

    .line 432
    move-object/from16 v0, p2

    iget v5, v0, Landroid/hardware/display/DisplayViewport;->displayId:I

    move-object/from16 v0, p2

    iget v6, v0, Landroid/hardware/display/DisplayViewport;->orientation:I

    .line 433
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    iget v7, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    iget v8, v4, Landroid/graphics/Rect;->top:I

    .line 434
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    iget v9, v4, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    iget v10, v4, Landroid/graphics/Rect;->bottom:I

    .line 435
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    iget v11, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    iget v12, v4, Landroid/graphics/Rect;->top:I

    .line 436
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    iget v13, v4, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    iget v14, v4, Landroid/graphics/Rect;->bottom:I

    .line 437
    move-object/from16 v0, p2

    iget v15, v0, Landroid/hardware/display/DisplayViewport;->deviceWidth:I

    move-object/from16 v0, p2

    iget v0, v0, Landroid/hardware/display/DisplayViewport;->deviceHeight:I

    move/from16 v16, v0

    move/from16 v4, p1

    .line 431
    invoke-static/range {v2 .. v16}, Lcom/android/server/input/InputManagerService;->nativeSetDisplayViewport(JZIIIIIIIIIIII)V

    .line 430
    return-void
.end method

.method private setDisplayViewportsInternal(Landroid/hardware/display/DisplayViewport;Landroid/hardware/display/DisplayViewport;)V
    .registers 5
    .param p1, "defaultViewport"    # Landroid/hardware/display/DisplayViewport;
    .param p2, "externalTouchViewport"    # Landroid/hardware/display/DisplayViewport;

    .prologue
    const/4 v1, 0x1

    .line 419
    iget-boolean v0, p1, Landroid/hardware/display/DisplayViewport;->valid:Z

    if-eqz v0, :cond_9

    .line 420
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/input/InputManagerService;->setDisplayViewport(ZLandroid/hardware/display/DisplayViewport;)V

    .line 423
    :cond_9
    iget-boolean v0, p2, Landroid/hardware/display/DisplayViewport;->valid:Z

    if-eqz v0, :cond_11

    .line 424
    invoke-direct {p0, v1, p2}, Lcom/android/server/input/InputManagerService;->setDisplayViewport(ZLandroid/hardware/display/DisplayViewport;)V

    .line 418
    :cond_10
    :goto_10
    return-void

    .line 425
    :cond_11
    iget-boolean v0, p1, Landroid/hardware/display/DisplayViewport;->valid:Z

    if-eqz v0, :cond_10

    .line 426
    invoke-direct {p0, v1, p1}, Lcom/android/server/input/InputManagerService;->setDisplayViewport(ZLandroid/hardware/display/DisplayViewport;)V

    goto :goto_10
.end method

.method private setKeyboardLayoutForInputDeviceInner(Landroid/hardware/input/InputDeviceIdentifier;Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;Ljava/lang/String;)V
    .registers 9
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "imeHandle"    # Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;
    .param p3, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .prologue
    .line 1429
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v1

    .line 1430
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v3

    .line 1432
    :try_start_7
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2, v1, p2, p3}, Lcom/android/server/input/PersistentDataStore;->setKeyboardLayout(Ljava/lang/String;Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1438
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mCurrentImeHandle:Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    invoke-virtual {p2, v2}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1442
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1443
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1444
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1445
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v0}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1447
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_29
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_36

    .line 1450
    :cond_2f
    :try_start_2f
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_3d

    monitor-exit v3

    .line 1428
    return-void

    .line 1449
    :catchall_36
    move-exception v2

    .line 1450
    :try_start_37
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v4}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1449
    throw v2
    :try_end_3d
    .catchall {:try_start_37 .. :try_end_3d} :catchall_3d

    .line 1430
    :catchall_3d
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private setPointerSpeedUnchecked(I)V
    .registers 4
    .param p1, "speed"    # I

    .prologue
    .line 1625
    const/4 v0, -0x7

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1626
    const/4 v1, 0x7

    .line 1625
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1627
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeSetPointerSpeed(JI)V

    .line 1624
    return-void
.end method

.method private showMissingKeyboardLayoutNotification(Landroid/view/InputDevice;)V
    .registers 12
    .param p1, "device"    # Landroid/view/InputDevice;

    .prologue
    const v9, 0x10404c6

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 1019
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    if-nez v0, :cond_76

    .line 1020
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v0, "android.settings.HARD_KEYBOARD_SETTINGS"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1021
    .local v2, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_1d

    .line 1022
    const-string/jumbo v0, "input_device_identifier"

    invoke-virtual {p1}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1024
    :cond_1d
    const/high16 v0, 0x14200000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1027
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 1028
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move v3, v1

    .line 1027
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 1030
    .local v6, "keyboardLayoutIntent":Landroid/app/PendingIntent;
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 1031
    .local v8, "r":Landroid/content/res/Resources;
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1032
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1031
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1035
    const v1, 0x10404c7

    .line 1034
    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1031
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1037
    const v1, 0x1080478

    .line 1031
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1038
    const/4 v1, -0x1

    .line 1031
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1039
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 1040
    const v3, 0x106005c

    .line 1039
    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 1031
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    .line 1042
    .local v7, "notification":Landroid/app/Notification;
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 1044
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1042
    invoke-virtual {v0, v4, v9, v7, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1045
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    .line 1018
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v6    # "keyboardLayoutIntent":Landroid/app/PendingIntent;
    .end local v7    # "notification":Landroid/app/Notification;
    .end local v8    # "r":Landroid/content/res/Resources;
    :cond_76
    return-void
.end method

.method private updateKeyboardLayouts()V
    .registers 5

    .prologue
    .line 1062
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1063
    .local v0, "availableKeyboardLayouts":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v1, Lcom/android/server/input/InputManagerService$5;

    invoke-direct {v1, p0, v0}, Lcom/android/server/input/InputManagerService$5;-><init>(Lcom/android/server/input/InputManagerService;Ljava/util/HashSet;)V

    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 1070
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v2

    .line 1072
    :try_start_10
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1, v0}, Lcom/android/server/input/PersistentDataStore;->removeUninstalledKeyboardLayouts(Ljava/util/Set;)Z
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_1f

    .line 1074
    :try_start_15
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_26

    monitor-exit v2

    .line 1079
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->reloadKeyboardLayouts()V

    .line 1060
    return-void

    .line 1073
    :catchall_1f
    move-exception v1

    .line 1074
    :try_start_20
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1073
    throw v1
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_26

    .line 1070
    :catchall_26
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V
    .registers 11
    .param p1, "visitor"    # Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1179
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v0, "android.hardware.input.action.QUERY_KEYBOARD_LAYOUTS"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1181
    .local v6, "intent":Landroid/content/Intent;
    const v0, 0xc0080

    .line 1180
    invoke-virtual {v1, v6, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "resolveInfo$iterator":Ljava/util/Iterator;
    :goto_19
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 1183
    .local v7, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v2, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1184
    .local v2, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget v4, v7, Landroid/content/pm/ResolveInfo;->priority:I

    .line 1185
    .local v4, "priority":I
    const/4 v3, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayoutsInPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    goto :goto_19

    .line 1177
    .end local v2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v4    # "priority":I
    .end local v7    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_30
    return-void
.end method

.method private visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V
    .registers 11
    .param p1, "keyboardLayoutDescriptor"    # Ljava/lang/String;
    .param p2, "visitor"    # Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;

    .prologue
    .line 1191
    invoke-static {p1}, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->parse(Ljava/lang/String;)Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;

    move-result-object v6

    .line 1192
    .local v6, "d":Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;
    if-eqz v6, :cond_24

    .line 1193
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1196
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_c
    new-instance v0, Landroid/content/ComponentName;

    iget-object v3, v6, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->packageName:Ljava/lang/String;

    iget-object v4, v6, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->receiverName:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    const v3, 0xc0080

    .line 1195
    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 1200
    .local v2, "receiver":Landroid/content/pm/ActivityInfo;
    iget-object v3, v6, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->keyboardLayoutName:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayoutsInPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V
    :try_end_24
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_24} :catch_25

    .line 1190
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "receiver":Landroid/content/pm/ActivityInfo;
    :cond_24
    :goto_24
    return-void

    .line 1201
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    :catch_25
    move-exception v7

    .local v7, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_24
.end method

.method private visitKeyboardLayoutsInPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V
    .registers 31
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "receiver"    # Landroid/content/pm/ActivityInfo;
    .param p3, "keyboardName"    # Ljava/lang/String;
    .param p4, "requestedPriority"    # I
    .param p5, "visitor"    # Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;

    .prologue
    .line 1208
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v17, v0

    .line 1209
    .local v17, "metaData":Landroid/os/Bundle;
    if-nez v17, :cond_9

    .line 1210
    return-void

    .line 1213
    :cond_9
    const-string/jumbo v22, "android.hardware.input.metadata.KEYBOARD_LAYOUTS"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 1214
    .local v12, "configResId":I
    if-nez v12, :cond_48

    .line 1215
    const-string/jumbo v22, "InputManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Missing meta-data \'android.hardware.input.metadata.KEYBOARD_LAYOUTS\' on receiver "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 1216
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 1215
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 1216
    const-string/jumbo v24, "/"

    .line 1215
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 1216
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 1215
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    return-void

    .line 1220
    :cond_48
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v20

    .line 1221
    .local v20, "receiverLabel":Ljava/lang/CharSequence;
    if-eqz v20, :cond_93

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1223
    .local v6, "collection":Ljava/lang/String;
    :goto_56
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x1

    if-eqz v22, :cond_97

    .line 1224
    move/from16 v7, p4

    .line 1230
    .local v7, "priority":I
    :goto_68
    :try_start_68
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v21

    .line 1231
    .local v21, "resources":Landroid/content/res/Resources;
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_7b} :catch_12f

    move-result-object v19

    .line 1233
    .local v19, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_7c
    const-string/jumbo v22, "keyboard-layouts"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1236
    :goto_86
    invoke-static/range {v19 .. v19}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1237
    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_8c
    .catchall {:try_start_7c .. :try_end_8c} :catchall_12a

    move-result-object v13

    .line 1238
    .local v13, "element":Ljava/lang/String;
    if-nez v13, :cond_99

    .line 1286
    :try_start_8f
    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_92} :catch_12f

    .line 1207
    .end local v13    # "element":Ljava/lang/String;
    .end local v19    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v21    # "resources":Landroid/content/res/Resources;
    :goto_92
    return-void

    .line 1221
    .end local v6    # "collection":Ljava/lang/String;
    .end local v7    # "priority":I
    :cond_93
    const-string/jumbo v6, ""

    .restart local v6    # "collection":Ljava/lang/String;
    goto :goto_56

    .line 1226
    :cond_97
    const/4 v7, 0x0

    .restart local v7    # "priority":I
    goto :goto_68

    .line 1241
    .restart local v13    # "element":Ljava/lang/String;
    .restart local v19    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v21    # "resources":Landroid/content/res/Resources;
    :cond_99
    :try_start_99
    const-string/jumbo v22, "keyboard-layout"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_19d

    .line 1243
    sget-object v22, Lcom/android/internal/R$styleable;->KeyboardLayout:[I

    .line 1242
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    :try_end_af
    .catchall {:try_start_99 .. :try_end_af} :catchall_12a

    move-result-object v11

    .line 1246
    .local v11, "a":Landroid/content/res/TypedArray;
    const/16 v22, 0x1

    .line 1245
    :try_start_b2
    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1248
    .local v18, "name":Ljava/lang/String;
    const/16 v22, 0x0

    .line 1247
    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1250
    .local v5, "label":Ljava/lang/String;
    const/16 v22, 0x2

    .line 1251
    const/16 v23, 0x0

    .line 1249
    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    .line 1253
    .local v15, "keyboardLayoutResId":I
    const/16 v22, 0x3

    .line 1252
    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1254
    .local v16, "languageTags":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/android/server/input/InputManagerService;->getLocalesFromLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v8

    .line 1256
    .local v8, "locales":Landroid/os/LocaleList;
    const/16 v22, 0x4

    const/16 v23, -0x1

    .line 1255
    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 1258
    .local v9, "vid":I
    const/16 v22, 0x5

    const/16 v23, -0x1

    .line 1257
    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    .line 1260
    .local v10, "pid":I
    if-eqz v18, :cond_f4

    if-nez v5, :cond_167

    .line 1261
    :cond_f4
    const-string/jumbo v22, "InputManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Missing required \'name\', \'label\' or \'keyboardLayout\' attributes in keyboard layout resource from receiver "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 1264
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 1261
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 1264
    const-string/jumbo v24, "/"

    .line 1261
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 1264
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 1261
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_125
    .catchall {:try_start_b2 .. :try_end_125} :catchall_198

    .line 1277
    :cond_125
    :goto_125
    :try_start_125
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_128
    .catchall {:try_start_125 .. :try_end_128} :catchall_12a

    goto/16 :goto_86

    .line 1285
    .end local v5    # "label":Ljava/lang/String;
    .end local v8    # "locales":Landroid/os/LocaleList;
    .end local v9    # "vid":I
    .end local v10    # "pid":I
    .end local v11    # "a":Landroid/content/res/TypedArray;
    .end local v13    # "element":Ljava/lang/String;
    .end local v15    # "keyboardLayoutResId":I
    .end local v16    # "languageTags":Ljava/lang/String;
    .end local v18    # "name":Ljava/lang/String;
    :catchall_12a
    move-exception v22

    .line 1286
    :try_start_12b
    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1285
    throw v22
    :try_end_12f
    .catch Ljava/lang/Exception; {:try_start_12b .. :try_end_12f} :catch_12f

    .line 1288
    .end local v19    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v21    # "resources":Landroid/content/res/Resources;
    :catch_12f
    move-exception v14

    .line 1289
    .local v14, "ex":Ljava/lang/Exception;
    const-string/jumbo v22, "InputManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Could not parse keyboard layout resource from receiver "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 1290
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 1289
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 1290
    const-string/jumbo v24, "/"

    .line 1289
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 1290
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 1289
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_92

    .line 1260
    .end local v14    # "ex":Ljava/lang/Exception;
    .restart local v5    # "label":Ljava/lang/String;
    .restart local v8    # "locales":Landroid/os/LocaleList;
    .restart local v9    # "vid":I
    .restart local v10    # "pid":I
    .restart local v11    # "a":Landroid/content/res/TypedArray;
    .restart local v13    # "element":Ljava/lang/String;
    .restart local v15    # "keyboardLayoutResId":I
    .restart local v16    # "languageTags":Ljava/lang/String;
    .restart local v18    # "name":Ljava/lang/String;
    .restart local v19    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v21    # "resources":Landroid/content/res/Resources;
    :cond_167
    if-eqz v15, :cond_f4

    .line 1267
    :try_start_169
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 1266
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1268
    .local v4, "descriptor":Ljava/lang/String;
    if-eqz p3, :cond_18b

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_125

    .line 1269
    :cond_18b
    new-instance v3, Landroid/hardware/input/KeyboardLayout;

    invoke-direct/range {v3 .. v10}, Landroid/hardware/input/KeyboardLayout;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/LocaleList;II)V

    .line 1272
    .local v3, "layout":Landroid/hardware/input/KeyboardLayout;
    move-object/from16 v0, p5

    move-object/from16 v1, v21

    invoke-interface {v0, v1, v15, v3}, Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;->visitKeyboardLayout(Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V
    :try_end_197
    .catchall {:try_start_169 .. :try_end_197} :catchall_198

    goto :goto_125

    .line 1276
    .end local v3    # "layout":Landroid/hardware/input/KeyboardLayout;
    .end local v4    # "descriptor":Ljava/lang/String;
    .end local v5    # "label":Ljava/lang/String;
    .end local v8    # "locales":Landroid/os/LocaleList;
    .end local v9    # "vid":I
    .end local v10    # "pid":I
    .end local v15    # "keyboardLayoutResId":I
    .end local v16    # "languageTags":Ljava/lang/String;
    .end local v18    # "name":Ljava/lang/String;
    :catchall_198
    move-exception v22

    .line 1277
    :try_start_199
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 1276
    throw v22

    .line 1280
    .end local v11    # "a":Landroid/content/res/TypedArray;
    :cond_19d
    const-string/jumbo v22, "InputManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Skipping unrecognized element \'"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 1281
    const-string/jumbo v24, "\' in keyboard layout resource from receiver "

    .line 1280
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 1282
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 1280
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 1282
    const-string/jumbo v24, "/"

    .line 1280
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 1282
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 1280
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1db
    .catchall {:try_start_199 .. :try_end_1db} :catchall_12a

    goto/16 :goto_86
.end method


# virtual methods
.method public addKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .registers 8
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .prologue
    .line 1458
    const-string/jumbo v2, "android.permission.SET_KEYBOARD_LAYOUT"

    .line 1459
    const-string/jumbo v3, "addKeyboardLayoutForInputDevice()"

    .line 1458
    invoke-direct {p0, v2, v3}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 1460
    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Requires SET_KEYBOARD_LAYOUT permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1462
    :cond_15
    if-nez p2, :cond_20

    .line 1463
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1466
    :cond_20
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 1467
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v3

    .line 1469
    :try_start_27
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2, v0}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1470
    .local v1, "oldLayout":Ljava/lang/String;
    if-nez v1, :cond_39

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 1473
    :cond_39
    :goto_39
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2, v0, p2}, Lcom/android/server/input/PersistentDataStore;->addKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 1474
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2, v0}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_4a
    .catchall {:try_start_27 .. :try_end_4a} :catchall_66

    move-result v2

    if-eqz v2, :cond_5f

    .line 1478
    :cond_4d
    :goto_4d
    :try_start_4d
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V
    :try_end_52
    .catchall {:try_start_4d .. :try_end_52} :catchall_6d

    monitor-exit v3

    .line 1457
    return-void

    .line 1471
    :cond_54
    :try_start_54
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_39

    .line 1475
    :cond_5f
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z
    :try_end_65
    .catchall {:try_start_54 .. :try_end_65} :catchall_66

    goto :goto_4d

    .line 1477
    .end local v1    # "oldLayout":Ljava/lang/String;
    :catchall_66
    move-exception v2

    .line 1478
    :try_start_67
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v4}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1477
    throw v2
    :try_end_6d
    .catchall {:try_start_67 .. :try_end_6d} :catchall_6d

    .line 1467
    :catchall_6d
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public cancelVibrate(ILandroid/os/IBinder;)V
    .registers 6
    .param p1, "deviceId"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1780
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1781
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/InputManagerService$VibratorToken;

    .line 1782
    .local v0, "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    if-eqz v0, :cond_11

    iget v1, v0, Lcom/android/server/input/InputManagerService$VibratorToken;->mDeviceId:I
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_18

    if-eq v1, p1, :cond_13

    :cond_11
    monitor-exit v2

    .line 1783
    return-void

    :cond_13
    monitor-exit v2

    .line 1787
    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService;->cancelVibrateIfNeeded(Lcom/android/server/input/InputManagerService$VibratorToken;)V

    .line 1778
    return-void

    .line 1780
    .end local v0    # "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    :catchall_18
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1822
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.DUMP"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_36

    .line 1824
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Permission Denial: can\'t dump InputManager from from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1825
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1824
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1826
    const-string/jumbo v2, ", uid="

    .line 1824
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1826
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1824
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1827
    return-void

    .line 1830
    :cond_36
    const-string/jumbo v1, "INPUT MANAGER (dumpsys input)\n"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1831
    iget-wide v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v2, v3}, Lcom/android/server/input/InputManagerService;->nativeDump(J)Ljava/lang/String;

    move-result-object v0

    .line 1832
    .local v0, "dumpStr":Ljava/lang/String;
    if-eqz v0, :cond_47

    .line 1833
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1835
    :cond_47
    const-string/jumbo v1, "  Keyboard Layouts:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1836
    new-instance v1, Lcom/android/server/input/InputManagerService$15;

    invoke-direct {v1, p0, p2}, Lcom/android/server/input/InputManagerService$15;-><init>(Lcom/android/server/input/InputManagerService;Ljava/io/PrintWriter;)V

    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 1843
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1844
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v2

    .line 1845
    :try_start_5b
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    const-string/jumbo v3, "  "

    invoke-virtual {v1, p2, v3}, Lcom/android/server/input/PersistentDataStore;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    :try_end_63
    .catchall {:try_start_5b .. :try_end_63} :catchall_65

    monitor-exit v2

    .line 1821
    return-void

    .line 1844
    :catchall_65
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method final filterInputEvent(Landroid/view/InputEvent;I)Z
    .registers 9
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const/4 v5, 0x0

    .line 1966
    const/4 v1, 0x0

    .line 1967
    .local v1, "head":Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1968
    :try_start_5
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputFilterChain:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_16

    .line 1969
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputFilterChain:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "head":Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;
    check-cast v1, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_21

    :cond_16
    monitor-exit v3

    .line 1975
    if-eqz v1, :cond_24

    .line 1977
    :try_start_19
    invoke-static {v1}, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->-get0(Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;)Landroid/view/IInputFilter;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/view/IInputFilter;->filterInputEvent(Landroid/view/InputEvent;I)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_20} :catch_29

    .line 1981
    :goto_20
    return v5

    .line 1967
    :catchall_21
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1983
    :cond_24
    invoke-virtual {p1}, Landroid/view/InputEvent;->recycle()V

    .line 1984
    const/4 v2, 0x1

    return v2

    .line 1978
    :catch_29
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_20
.end method

.method public getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;
    .registers 7
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .prologue
    .line 1323
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 1324
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v3

    .line 1325
    const/4 v1, 0x0

    .line 1327
    .local v1, "layout":Ljava/lang/String;
    :try_start_8
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2, v0}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1328
    .local v1, "layout":Ljava/lang/String;
    if-nez v1, :cond_1a

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_27

    move-result v2

    if-eqz v2, :cond_1c

    :cond_1a
    :goto_1a
    monitor-exit v3

    .line 1336
    return-object v1

    .line 1330
    :cond_1c
    :try_start_1c
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_27

    move-result-object v1

    goto :goto_1a

    .line 1324
    .end local v1    # "layout":Ljava/lang/String;
    :catchall_27
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getEnabledKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;
    .registers 7
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .prologue
    .line 1368
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 1369
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v3

    .line 1370
    :try_start_7
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2, v0}, Lcom/android/server/input/PersistentDataStore;->getKeyboardLayouts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1371
    .local v1, "layouts":[Ljava/lang/String;
    if-eqz v1, :cond_12

    array-length v2, v1

    if-nez v2, :cond_1c

    .line 1372
    :cond_12
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_29

    move-result v2

    if-eqz v2, :cond_1e

    :cond_1c
    :goto_1c
    monitor-exit v3

    .line 1375
    return-object v1

    .line 1373
    :cond_1e
    :try_start_1e
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/input/PersistentDataStore;->getKeyboardLayouts(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_29

    move-result-object v1

    goto :goto_1c

    .line 1369
    .end local v1    # "layouts":[Ljava/lang/String;
    :catchall_29
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getInputDevice(I)Landroid/view/InputDevice;
    .registers 7
    .param p1, "deviceId"    # I

    .prologue
    .line 682
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 683
    :try_start_3
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    array-length v0, v3

    .line 684
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_18

    .line 685
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    aget-object v2, v3, v1

    .line 686
    .local v2, "inputDevice":Landroid/view/InputDevice;
    invoke-virtual {v2}, Landroid/view/InputDevice;->getId()I
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_1b

    move-result v3

    if-ne v3, p1, :cond_15

    monitor-exit v4

    .line 687
    return-object v2

    .line 684
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .end local v2    # "inputDevice":Landroid/view/InputDevice;
    :cond_18
    monitor-exit v4

    .line 691
    const/4 v3, 0x0

    return-object v3

    .line 682
    .end local v0    # "count":I
    .end local v1    # "i":I
    :catchall_1b
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getInputDeviceIds()[I
    .registers 6

    .prologue
    .line 700
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 701
    :try_start_3
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    array-length v0, v3

    .line 702
    .local v0, "count":I
    new-array v2, v0, [I

    .line 703
    .local v2, "ids":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_18

    .line 704
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/view/InputDevice;->getId()I

    move-result v3

    aput v3, v2, v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_1a

    .line 703
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_18
    monitor-exit v4

    .line 706
    return-object v2

    .line 700
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "ids":[I
    :catchall_1a
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getInputDevices()[Landroid/view/InputDevice;
    .registers 3

    .prologue
    .line 715
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 716
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    .line 715
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getKeyCodeState(III)I
    .registers 6
    .param p1, "deviceId"    # I
    .param p2, "sourceMask"    # I
    .param p3, "keyCode"    # I

    .prologue
    .line 450
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->nativeGetKeyCodeState(JIII)I

    move-result v0

    return v0
.end method

.method public getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;
    .registers 7
    .param p1, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1158
    if-nez p1, :cond_c

    .line 1159
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1162
    :cond_c
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/hardware/input/KeyboardLayout;

    .line 1163
    .local v0, "result":[Landroid/hardware/input/KeyboardLayout;
    new-instance v1, Lcom/android/server/input/InputManagerService$8;

    invoke-direct {v1, p0, v0}, Lcom/android/server/input/InputManagerService$8;-><init>(Lcom/android/server/input/InputManagerService;[Landroid/hardware/input/KeyboardLayout;)V

    invoke-direct {p0, p1, v1}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 1170
    aget-object v1, v0, v4

    if-nez v1, :cond_3c

    .line 1171
    const-string/jumbo v1, "InputManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Could not get keyboard layout with descriptor \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1172
    const-string/jumbo v3, "\'."

    .line 1171
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    :cond_3c
    aget-object v1, v0, v4

    return-object v1
.end method

.method public getKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/hardware/input/KeyboardLayout;
    .registers 12
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "imeInfo"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p3, "imeSubtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1383
    new-instance v0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    invoke-direct {v0, p2, p3}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;-><init>(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 1384
    .local v0, "handle":Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v1

    .line 1386
    .local v1, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v5

    .line 1387
    :try_start_e
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v4, v1, v0}, Lcom/android/server/input/PersistentDataStore;->getKeyboardLayout(Ljava/lang/String;Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;)Ljava/lang/String;
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_18

    move-result-object v2

    .local v2, "keyboardLayoutDescriptor":Ljava/lang/String;
    monitor-exit v5

    .line 1390
    if-nez v2, :cond_1b

    .line 1391
    return-object v6

    .line 1386
    .end local v2    # "keyboardLayoutDescriptor":Ljava/lang/String;
    :catchall_18
    move-exception v4

    monitor-exit v5

    throw v4

    .line 1394
    .restart local v2    # "keyboardLayoutDescriptor":Ljava/lang/String;
    :cond_1b
    const/4 v4, 0x1

    new-array v3, v4, [Landroid/hardware/input/KeyboardLayout;

    .line 1395
    .local v3, "result":[Landroid/hardware/input/KeyboardLayout;
    new-instance v4, Lcom/android/server/input/InputManagerService$9;

    invoke-direct {v4, p0, v3}, Lcom/android/server/input/InputManagerService$9;-><init>(Lcom/android/server/input/InputManagerService;[Landroid/hardware/input/KeyboardLayout;)V

    invoke-direct {p0, v2, v4}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 1402
    aget-object v4, v3, v7

    if-nez v4, :cond_4b

    .line 1403
    const-string/jumbo v4, "InputManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Could not get keyboard layout with descriptor \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1404
    const-string/jumbo v6, "\'."

    .line 1403
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    :cond_4b
    aget-object v4, v3, v7

    return-object v4
.end method

.method public getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;
    .registers 3

    .prologue
    .line 1096
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1097
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/input/KeyboardLayout;>;"
    new-instance v1, Lcom/android/server/input/InputManagerService$6;

    invoke-direct {v1, p0, v0}, Lcom/android/server/input/InputManagerService$6;-><init>(Lcom/android/server/input/InputManagerService;Ljava/util/ArrayList;)V

    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 1104
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/hardware/input/KeyboardLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/input/KeyboardLayout;

    return-object v1
.end method

.method public getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Landroid/hardware/input/KeyboardLayout;
    .registers 12
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .prologue
    .line 1111
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->getEnabledKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;

    move-result-object v2

    .line 1113
    .local v2, "enabledLayoutDescriptors":[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    array-length v0, v2

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1114
    .local v3, "enabledLayouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/input/KeyboardLayout;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1115
    .local v5, "potentialLayouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/input/KeyboardLayout;>;"
    new-instance v0, Lcom/android/server/input/InputManagerService$7;

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/input/InputManagerService$7;-><init>(Lcom/android/server/input/InputManagerService;[Ljava/lang/String;Ljava/util/ArrayList;Landroid/hardware/input/InputDeviceIdentifier;Ljava/util/ArrayList;)V

    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService;->visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 1146
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1147
    .local v6, "enabledLayoutSize":I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1148
    .local v9, "potentialLayoutSize":I
    add-int v0, v6, v9

    new-array v8, v0, [Landroid/hardware/input/KeyboardLayout;

    .line 1149
    .local v8, "layouts":[Landroid/hardware/input/KeyboardLayout;
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1150
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_29
    if-ge v7, v9, :cond_38

    .line 1151
    add-int v1, v6, v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/KeyboardLayout;

    aput-object v0, v8, v1

    .line 1150
    add-int/lit8 v7, v7, 0x1

    goto :goto_29

    .line 1153
    :cond_38
    return-object v8
.end method

.method public getScanCodeState(III)I
    .registers 6
    .param p1, "deviceId"    # I
    .param p2, "sourceMask"    # I
    .param p3, "scanCode"    # I

    .prologue
    .line 463
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->nativeGetScanCodeState(JIII)I

    move-result v0

    return v0
.end method

.method public getSwitchState(III)I
    .registers 6
    .param p1, "deviceId"    # I
    .param p2, "sourceMask"    # I
    .param p3, "switchCode"    # I

    .prologue
    .line 476
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->nativeGetSwitchState(JIII)I

    move-result v0

    return v0
.end method

.method public getTouchCalibrationForInputDevice(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;
    .registers 5
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "surfaceRotation"    # I

    .prologue
    .line 919
    if-nez p1, :cond_b

    .line 920
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "inputDeviceDescriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 923
    :cond_b
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    .line 924
    :try_start_e
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/input/PersistentDataStore;->getTouchCalibration(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_16

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 923
    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public hasKeys(II[I[Z)Z
    .registers 11
    .param p1, "deviceId"    # I
    .param p2, "sourceMask"    # I
    .param p3, "keyCodes"    # [I
    .param p4, "keyExists"    # [Z

    .prologue
    .line 493
    if-nez p3, :cond_b

    .line 494
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "keyCodes must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 496
    :cond_b
    if-eqz p4, :cond_11

    array-length v0, p4

    array-length v1, p3

    if-ge v0, v1, :cond_1a

    .line 497
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "keyExists must not be null and must be at least as large as keyCodes."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 501
    :cond_1a
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/input/InputManagerService;->nativeHasKeys(JII[I[Z)Z

    move-result v0

    return v0
.end method

.method public injectInputEvent(Landroid/view/InputEvent;I)Z
    .registers 4
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "mode"    # I

    .prologue
    .line 635
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/input/InputManagerService;->injectInputEventInternal(Landroid/view/InputEvent;II)Z

    move-result v0

    return v0
.end method

.method public isInTabletMode()I
    .registers 4

    .prologue
    .line 959
    const-string/jumbo v0, "android.permission.TABLET_MODE"

    .line 960
    const-string/jumbo v1, "isInTabletMode()"

    .line 959
    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 961
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Requires TABLET_MODE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 963
    :cond_15
    const/4 v0, -0x1

    const/16 v1, -0x100

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v0

    return v0
.end method

.method public monitor()V
    .registers 3

    .prologue
    .line 1897
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v0

    monitor-exit v0

    .line 1898
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->nativeMonitor(J)V

    .line 1896
    return-void
.end method

.method public monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;
    .registers 9
    .param p1, "inputChannelName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 510
    if-nez p1, :cond_e

    .line 511
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "inputChannelName must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 514
    :cond_e
    invoke-static {p1}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v0

    .line 515
    .local v0, "inputChannels":[Landroid/view/InputChannel;
    iget-wide v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    aget-object v1, v0, v4

    invoke-static {v2, v3, v1, v6, v5}, Lcom/android/server/input/InputManagerService;->nativeRegisterInputChannel(JLandroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;Z)V

    .line 516
    aget-object v1, v0, v4

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 517
    aget-object v1, v0, v5

    return-object v1
.end method

.method public onShellCommand(Lcom/android/server/input/InputManagerService$Shell;Ljava/lang/String;)I
    .registers 10
    .param p1, "shell"    # Lcom/android/server/input/InputManagerService$Shell;
    .param p2, "cmd"    # Ljava/lang/String;

    .prologue
    .line 1856
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1857
    invoke-virtual {p1}, Lcom/android/server/input/InputManagerService$Shell;->onHelp()V

    .line 1858
    const/4 v5, 0x1

    return v5

    .line 1860
    :cond_b
    const-string/jumbo v5, "setlayout"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_62

    .line 1861
    const-string/jumbo v5, "android.permission.SET_KEYBOARD_LAYOUT"

    .line 1862
    const-string/jumbo v6, "onShellCommand()"

    .line 1861
    invoke-direct {p0, v5, v6}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_29

    .line 1863
    new-instance v5, Ljava/lang/SecurityException;

    const-string/jumbo v6, "Requires SET_KEYBOARD_LAYOUT permission"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1865
    :cond_29
    new-instance v1, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    .line 1866
    invoke-virtual {p1}, Lcom/android/server/input/InputManagerService$Shell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/server/input/InputManagerService$Shell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1865
    invoke-direct {v1, v5, v6}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;-><init>(Ljava/lang/String;I)V

    .line 1867
    .local v1, "handle":Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;
    invoke-virtual {p1}, Lcom/android/server/input/InputManagerService$Shell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 1868
    .local v0, "descriptor":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/input/InputManagerService$Shell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1869
    .local v4, "vid":I
    invoke-virtual {p1}, Lcom/android/server/input/InputManagerService$Shell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1870
    .local v3, "pid":I
    new-instance v2, Landroid/hardware/input/InputDeviceIdentifier;

    invoke-direct {v2, v0, v4, v3}, Landroid/hardware/input/InputDeviceIdentifier;-><init>(Ljava/lang/String;II)V

    .line 1871
    .local v2, "id":Landroid/hardware/input/InputDeviceIdentifier;
    invoke-virtual {p1}, Lcom/android/server/input/InputManagerService$Shell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v1, v5}, Lcom/android/server/input/InputManagerService;->setKeyboardLayoutForInputDeviceInner(Landroid/hardware/input/InputDeviceIdentifier;Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;Ljava/lang/String;)V

    .line 1873
    .end local v0    # "descriptor":Ljava/lang/String;
    .end local v1    # "handle":Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;
    .end local v2    # "id":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v3    # "pid":I
    .end local v4    # "vid":I
    :cond_62
    const/4 v5, 0x0

    return v5
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .registers 13
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 1852
    new-instance v0, Lcom/android/server/input/InputManagerService$Shell;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/input/InputManagerService$Shell;-><init>(Lcom/android/server/input/InputManagerService;Lcom/android/server/input/InputManagerService$Shell;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/input/InputManagerService$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ResultReceiver;)I

    .line 1851
    return-void
.end method

.method onVibratorTokenDied(Lcom/android/server/input/InputManagerService$VibratorToken;)V
    .registers 5
    .param p1, "v"    # Lcom/android/server/input/InputManagerService$VibratorToken;

    .prologue
    .line 1791
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1792
    :try_start_3
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_f

    monitor-exit v1

    .line 1795
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->cancelVibrateIfNeeded(Lcom/android/server/input/InputManagerService$VibratorToken;)V

    .line 1790
    return-void

    .line 1791
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public registerInputChannel(Landroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;)V
    .registers 6
    .param p1, "inputChannel"    # Landroid/view/InputChannel;
    .param p2, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;

    .prologue
    .line 528
    if-nez p1, :cond_b

    .line 529
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "inputChannel must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 532
    :cond_b
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/server/input/InputManagerService;->nativeRegisterInputChannel(JLandroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;Z)V

    .line 527
    return-void
.end method

.method public registerInputDevicesChangedListener(Landroid/hardware/input/IInputDevicesChangedListener;)V
    .registers 9
    .param p1, "listener"    # Landroid/hardware/input/IInputDevicesChangedListener;

    .prologue
    .line 722
    if-nez p1, :cond_b

    .line 723
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "listener must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 726
    :cond_b
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 727
    :try_start_e
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 728
    .local v1, "callingPid":I
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_26

    .line 729
    new-instance v4, Ljava/lang/SecurityException;

    const-string/jumbo v6, "The calling process has already registered an InputDevicesChangedListener."

    invoke-direct {v4, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_23
    .catchall {:try_start_e .. :try_end_23} :catchall_23

    .line 726
    .end local v1    # "callingPid":I
    :catchall_23
    move-exception v4

    monitor-exit v5

    throw v4

    .line 734
    .restart local v1    # "callingPid":I
    :cond_26
    :try_start_26
    new-instance v3, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;

    invoke-direct {v3, p0, v1, p1}, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/IInputDevicesChangedListener;)V
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_23

    .line 736
    .local v3, "record":Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;
    :try_start_2b
    invoke-interface {p1}, Landroid/hardware/input/IInputDevicesChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 737
    .local v0, "binder":Landroid/os/IBinder;
    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_33} :catch_3a
    .catchall {:try_start_2b .. :try_end_33} :catchall_23

    .line 743
    :try_start_33
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_38
    .catchall {:try_start_33 .. :try_end_38} :catchall_23

    monitor-exit v5

    .line 721
    return-void

    .line 738
    .end local v0    # "binder":Landroid/os/IBinder;
    :catch_3a
    move-exception v2

    .line 740
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_3b
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_41
    .catchall {:try_start_3b .. :try_end_41} :catchall_23
.end method

.method public registerSecondaryInputFilter(Landroid/view/IInputFilter;)V
    .registers 8
    .param p1, "filter"    # Landroid/view/IInputFilter;

    .prologue
    .line 596
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v2

    .line 597
    :try_start_3
    new-instance v0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, v1, v3}, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;-><init>(Lcom/android/server/input/InputManagerService;Landroid/view/IInputFilter;Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;)V

    .line 598
    .local v0, "host":Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilterChain:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_25

    .line 599
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilterChain:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputFilterChain:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

    invoke-static {v1, v0}, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->-set0(Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;)Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

    .line 601
    :cond_25
    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->connectLocked()V

    .line 602
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilterChain:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 604
    iget-wide v4, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilterChain:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3d

    const/4 v1, 0x0

    :goto_38
    invoke-static {v4, v5, v1}, Lcom/android/server/input/InputManagerService;->nativeSetInputFilterEnabled(JZ)V
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_3f

    monitor-exit v2

    .line 595
    return-void

    .line 604
    :cond_3d
    const/4 v1, 0x1

    goto :goto_38

    .line 596
    .end local v0    # "host":Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;
    :catchall_3f
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public registerStylusIconEnabledSettingObserver()V
    .registers 5

    .prologue
    .line 1702
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1703
    const-string/jumbo v1, "stylus_icon_enabled"

    invoke-static {v1}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1704
    new-instance v2, Lcom/android/server/input/InputManagerService$13;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$13;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    .line 1703
    const/4 v3, 0x0

    .line 1702
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1701
    return-void
.end method

.method public registerTabletModeChangedListener(Landroid/hardware/input/ITabletModeChangedListener;)V
    .registers 9
    .param p1, "listener"    # Landroid/hardware/input/ITabletModeChangedListener;

    .prologue
    .line 968
    const-string/jumbo v4, "android.permission.TABLET_MODE"

    .line 969
    const-string/jumbo v5, "registerTabletModeChangedListener()"

    .line 968
    invoke-direct {p0, v4, v5}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 970
    new-instance v4, Ljava/lang/SecurityException;

    const-string/jumbo v5, "Requires TABLET_MODE_LISTENER permission"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 972
    :cond_15
    if-nez p1, :cond_20

    .line 973
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "listener must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 976
    :cond_20
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mTabletModeLock:Ljava/lang/Object;

    monitor-enter v5

    .line 977
    :try_start_23
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 978
    .local v1, "callingPid":I
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3b

    .line 979
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "The calling process has already registered a TabletModeChangedListener."

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_38
    .catchall {:try_start_23 .. :try_end_38} :catchall_38

    .line 976
    .end local v1    # "callingPid":I
    :catchall_38
    move-exception v4

    monitor-exit v5

    throw v4

    .line 983
    .restart local v1    # "callingPid":I
    :cond_3b
    :try_start_3b
    new-instance v3, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;

    invoke-direct {v3, p0, v1, p1}, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/ITabletModeChangedListener;)V
    :try_end_40
    .catchall {:try_start_3b .. :try_end_40} :catchall_38

    .line 985
    .local v3, "record":Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;
    :try_start_40
    invoke-interface {p1}, Landroid/hardware/input/ITabletModeChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 986
    .local v0, "binder":Landroid/os/IBinder;
    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_48} :catch_4f
    .catchall {:try_start_40 .. :try_end_48} :catchall_38

    .line 990
    :try_start_48
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_4d
    .catchall {:try_start_48 .. :try_end_4d} :catchall_38

    monitor-exit v5

    .line 967
    return-void

    .line 987
    .end local v0    # "binder":Landroid/os/IBinder;
    :catch_4f
    move-exception v2

    .line 988
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_50
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_56
    .catchall {:try_start_50 .. :try_end_56} :catchall_38
.end method

.method public registerVolumeKeysRotationSettingObserver()V
    .registers 5

    .prologue
    .line 1728
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1729
    const-string/jumbo v1, "swap_volume_keys_on_rotation"

    invoke-static {v1}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1730
    new-instance v2, Lcom/android/server/input/InputManagerService$14;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$14;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    .line 1729
    const/4 v3, 0x0

    .line 1728
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1727
    return-void
.end method

.method public removeKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .registers 9
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .prologue
    .line 1486
    const-string/jumbo v3, "android.permission.SET_KEYBOARD_LAYOUT"

    .line 1487
    const-string/jumbo v4, "removeKeyboardLayoutForInputDevice()"

    .line 1486
    invoke-direct {p0, v3, v4}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 1488
    new-instance v3, Ljava/lang/SecurityException;

    const-string/jumbo v4, "Requires SET_KEYBOARD_LAYOUT permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1490
    :cond_15
    if-nez p2, :cond_20

    .line 1491
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1494
    :cond_20
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 1495
    .local v0, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v4

    .line 1497
    :try_start_27
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3, v0}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1498
    .local v1, "oldLayout":Ljava/lang/String;
    if-nez v1, :cond_39

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 1501
    :cond_39
    :goto_39
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3, v0, p2}, Lcom/android/server/input/PersistentDataStore;->removeKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 1502
    .local v2, "removed":Z
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_54

    .line 1504
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, p2}, Lcom/android/server/input/PersistentDataStore;->removeKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 1507
    :cond_54
    if-eqz v2, :cond_62

    .line 1508
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3, v0}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1507
    invoke-static {v1, v3}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_5f
    .catchall {:try_start_27 .. :try_end_5f} :catchall_7b

    move-result v3

    if-eqz v3, :cond_74

    .line 1512
    :cond_62
    :goto_62
    :try_start_62
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V
    :try_end_67
    .catchall {:try_start_62 .. :try_end_67} :catchall_82

    monitor-exit v4

    .line 1485
    return-void

    .line 1499
    .end local v2    # "removed":Z
    :cond_69
    :try_start_69
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_39

    .line 1509
    .restart local v2    # "removed":Z
    :cond_74
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z
    :try_end_7a
    .catchall {:try_start_69 .. :try_end_7a} :catchall_7b

    goto :goto_62

    .line 1511
    .end local v1    # "oldLayout":Ljava/lang/String;
    .end local v2    # "removed":Z
    :catchall_7b
    move-exception v3

    .line 1512
    :try_start_7c
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v5}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1511
    throw v3
    :try_end_82
    .catchall {:try_start_7c .. :try_end_82} :catchall_82

    .line 1495
    :catchall_82
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .registers 7
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .prologue
    .line 1343
    const-string/jumbo v1, "android.permission.SET_KEYBOARD_LAYOUT"

    .line 1344
    const-string/jumbo v2, "setCurrentKeyboardLayoutForInputDevice()"

    .line 1343
    invoke-direct {p0, v1, v2}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 1345
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "Requires SET_KEYBOARD_LAYOUT permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1347
    :cond_15
    if-nez p2, :cond_20

    .line 1348
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1351
    :cond_20
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 1352
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v2

    .line 1354
    :try_start_27
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/input/PersistentDataStore;->setCurrentKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 1358
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z
    :try_end_35
    .catchall {:try_start_27 .. :try_end_35} :catchall_3c

    .line 1361
    :cond_35
    :try_start_35
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V
    :try_end_3a
    .catchall {:try_start_35 .. :try_end_3a} :catchall_43

    monitor-exit v2

    .line 1342
    return-void

    .line 1360
    :catchall_3c
    move-exception v1

    .line 1361
    :try_start_3d
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1360
    throw v1
    :try_end_43
    .catchall {:try_start_3d .. :try_end_43} :catchall_43

    .line 1352
    :catchall_43
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setCustomPointerIcon(Landroid/view/PointerIcon;)V
    .registers 4
    .param p1, "icon"    # Landroid/view/PointerIcon;

    .prologue
    .line 1816
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1817
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeSetCustomPointerIcon(JLandroid/view/PointerIcon;)V

    .line 1815
    return-void
.end method

.method public setFocusedApplication(Lcom/android/server/input/InputApplicationHandle;)V
    .registers 4
    .param p1, "application"    # Lcom/android/server/input/InputApplicationHandle;

    .prologue
    .line 1571
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeSetFocusedApplication(JLcom/android/server/input/InputApplicationHandle;)V

    .line 1570
    return-void
.end method

.method public setInputDispatchMode(ZZ)V
    .registers 5
    .param p1, "enabled"    # Z
    .param p2, "frozen"    # Z

    .prologue
    .line 1575
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeSetInputDispatchMode(JZZ)V

    .line 1574
    return-void
.end method

.method public setInputFilter(Landroid/view/IInputFilter;)V
    .registers 9
    .param p1, "filter"    # Landroid/view/IInputFilter;

    .prologue
    const/4 v2, 0x0

    .line 559
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v3

    .line 561
    :try_start_4
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_58

    .line 562
    .local v1, "oldFilter":Landroid/view/IInputFilter;
    if-ne v1, p1, :cond_a

    monitor-exit v3

    .line 563
    return-void

    .line 566
    :cond_a
    :try_start_a
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

    if-eqz v4, :cond_1d

    .line 567
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

    invoke-virtual {v4}, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->disconnectLocked()V

    .line 568
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputFilterChain:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 569
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

    .line 572
    :cond_1d
    if-eqz p1, :cond_3d

    .line 573
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputFilterChain:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4c

    const/4 v0, 0x0

    .line 575
    :goto_28
    new-instance v4, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

    const/4 v5, 0x0

    invoke-direct {v4, p0, p1, v0, v5}, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;-><init>(Lcom/android/server/input/InputManagerService;Landroid/view/IInputFilter;Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;)V

    iput-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

    .line 576
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

    invoke-virtual {v4}, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->connectLocked()V

    .line 577
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputFilterChain:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 580
    :cond_3d
    iget-wide v4, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    iget-object v6, p0, Lcom/android/server/input/InputManagerService;->mInputFilterChain:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_56

    :goto_47
    invoke-static {v4, v5, v2}, Lcom/android/server/input/InputManagerService;->nativeSetInputFilterEnabled(JZ)V
    :try_end_4a
    .catchall {:try_start_a .. :try_end_4a} :catchall_58

    monitor-exit v3

    .line 558
    return-void

    .line 574
    :cond_4c
    :try_start_4c
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputFilterChain:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;
    :try_end_55
    .catchall {:try_start_4c .. :try_end_55} :catchall_58

    .local v0, "head":Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;
    goto :goto_28

    .line 580
    .end local v0    # "head":Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;
    :cond_56
    const/4 v2, 0x1

    goto :goto_47

    .line 559
    .end local v1    # "oldFilter":Landroid/view/IInputFilter;
    :catchall_58
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public setInputWindows([Lcom/android/server/input/InputWindowHandle;)V
    .registers 4
    .param p1, "windowHandles"    # [Lcom/android/server/input/InputWindowHandle;

    .prologue
    .line 1567
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeSetInputWindows(J[Lcom/android/server/input/InputWindowHandle;)V

    .line 1566
    return-void
.end method

.method public setKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Ljava/lang/String;)V
    .registers 8
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "imeInfo"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p3, "imeSubtype"    # Landroid/view/inputmethod/InputMethodSubtype;
    .param p4, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .prologue
    .line 1413
    const-string/jumbo v1, "android.permission.SET_KEYBOARD_LAYOUT"

    .line 1414
    const-string/jumbo v2, "setKeyboardLayoutForInputDevice()"

    .line 1413
    invoke-direct {p0, v1, v2}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 1415
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "Requires SET_KEYBOARD_LAYOUT permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1417
    :cond_15
    if-nez p4, :cond_20

    .line 1418
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1420
    :cond_20
    if-nez p2, :cond_2b

    .line 1421
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "imeInfo must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1423
    :cond_2b
    new-instance v0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    invoke-direct {v0, p2, p3}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;-><init>(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 1424
    .local v0, "handle":Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;
    invoke-direct {p0, p1, v0, p4}, Lcom/android/server/input/InputManagerService;->setKeyboardLayoutForInputDeviceInner(Landroid/hardware/input/InputDeviceIdentifier;Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;Ljava/lang/String;)V

    .line 1412
    return-void
.end method

.method public setPointerIconType(I)V
    .registers 4
    .param p1, "iconId"    # I

    .prologue
    .line 1810
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeSetPointerIconType(JI)V

    .line 1809
    return-void
.end method

.method public setSystemUiVisibility(I)V
    .registers 4
    .param p1, "visibility"    # I

    .prologue
    .line 1579
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeSetSystemUiVisibility(JI)V

    .line 1578
    return-void
.end method

.method public setTouchCalibrationForInputDevice(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)V
    .registers 8
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "surfaceRotation"    # I
    .param p3, "calibration"    # Landroid/hardware/input/TouchCalibration;

    .prologue
    .line 931
    const-string/jumbo v0, "android.permission.SET_INPUT_CALIBRATION"

    .line 932
    const-string/jumbo v1, "setTouchCalibrationForInputDevice()"

    .line 931
    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 933
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Requires SET_INPUT_CALIBRATION permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 935
    :cond_15
    if-nez p1, :cond_20

    .line 936
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "inputDeviceDescriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 938
    :cond_20
    if-nez p3, :cond_2b

    .line 939
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "calibration must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 941
    :cond_2b
    if-ltz p2, :cond_30

    const/4 v0, 0x3

    if-le p2, v0, :cond_39

    .line 942
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "surfaceRotation value out of bounds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 945
    :cond_39
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    .line 947
    :try_start_3c
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/input/PersistentDataStore;->setTouchCalibration(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 949
    iget-wide v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v2, v3}, Lcom/android/server/input/InputManagerService;->nativeReloadCalibration(J)V
    :try_end_49
    .catchall {:try_start_3c .. :try_end_49} :catchall_50

    .line 952
    :cond_49
    :try_start_49
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V
    :try_end_4e
    .catchall {:try_start_49 .. :try_end_4e} :catchall_57

    monitor-exit v1

    .line 930
    return-void

    .line 951
    :catchall_50
    move-exception v0

    .line 952
    :try_start_51
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 951
    throw v0
    :try_end_57
    .catchall {:try_start_51 .. :try_end_57} :catchall_57

    .line 945
    :catchall_57
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V
    .registers 2
    .param p1, "callbacks"    # Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    .line 327
    return-void
.end method

.method public setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    .registers 2
    .param p1, "callbacks"    # Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    .line 331
    return-void
.end method

.method public start()V
    .registers 6

    .prologue
    .line 336
    const-string/jumbo v0, "InputManager"

    const-string/jumbo v1, "Starting input manager"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->nativeStart(J)V

    .line 340
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 342
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerPointerSpeedSettingObserver()V

    .line 343
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerShowTouchesSettingObserver()V

    .line 344
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerAccessibilityLargePointerSettingObserver()V

    .line 345
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->registerStylusIconEnabledSettingObserver()V

    .line 346
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->registerVolumeKeysRotationSettingObserver()V

    .line 348
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/input/InputManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/input/InputManagerService$1;-><init>(Lcom/android/server/input/InputManagerService;)V

    .line 357
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.USER_SWITCHED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v4, 0x0

    .line 348
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 359
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updatePointerSpeedFromSettings()V

    .line 360
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateShowTouchesFromSettings()V

    .line 361
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateAccessibilityLargePointerFromSettings()V

    .line 362
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateStylusIconEnabledFromSettings()V

    .line 363
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateVolumeKeysRotationFromSettings()V

    .line 335
    return-void
.end method

.method public systemRunning()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 371
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 372
    const-string/jumbo v2, "notification"

    .line 371
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 373
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    .line 375
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 376
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 377
    const-string/jumbo v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 378
    const-string/jumbo v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 379
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 380
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/input/InputManagerService$2;

    invoke-direct {v2, p0}, Lcom/android/server/input/InputManagerService$2;-><init>(Lcom/android/server/input/InputManagerService;)V

    .line 385
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    .line 380
    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 387
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.bluetooth.device.action.ALIAS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 388
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/input/InputManagerService$3;

    invoke-direct {v2, p0}, Lcom/android/server/input/InputManagerService$3;-><init>(Lcom/android/server/input/InputManagerService;)V

    .line 393
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    .line 388
    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 395
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z

    .line 396
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z

    .line 398
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    if-eqz v1, :cond_66

    .line 399
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    invoke-interface {v1}, Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;->systemReady()V

    .line 367
    :cond_66
    return-void
.end method

.method public transferTouchFocus(Landroid/view/InputChannel;Landroid/view/InputChannel;)Z
    .registers 5
    .param p1, "fromChannel"    # Landroid/view/InputChannel;
    .param p2, "toChannel"    # Landroid/view/InputChannel;

    .prologue
    .line 1596
    if-nez p1, :cond_b

    .line 1597
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "fromChannel must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1599
    :cond_b
    if-nez p2, :cond_16

    .line 1600
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "toChannel must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1602
    :cond_16
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeTransferTouchFocus(JLandroid/view/InputChannel;Landroid/view/InputChannel;)Z

    move-result v0

    return v0
.end method

.method public tryPointerSpeed(I)V
    .registers 4
    .param p1, "speed"    # I

    .prologue
    .line 1607
    const-string/jumbo v0, "android.permission.SET_POINTER_SPEED"

    .line 1608
    const-string/jumbo v1, "tryPointerSpeed()"

    .line 1607
    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1609
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Requires SET_POINTER_SPEED permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1612
    :cond_15
    const/4 v0, -0x7

    if-lt p1, v0, :cond_1b

    const/4 v0, 0x7

    if-le p1, v0, :cond_24

    .line 1613
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "speed out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1616
    :cond_24
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->setPointerSpeedUnchecked(I)V

    .line 1606
    return-void
.end method

.method public unregisterInputChannel(Landroid/view/InputChannel;)V
    .registers 4
    .param p1, "inputChannel"    # Landroid/view/InputChannel;

    .prologue
    .line 540
    if-nez p1, :cond_b

    .line 541
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "inputChannel must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 544
    :cond_b
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeUnregisterInputChannel(JLandroid/view/InputChannel;)V

    .line 539
    return-void
.end method

.method public unregisterSecondaryInputFilter(Landroid/view/IInputFilter;)V
    .registers 10
    .param p1, "filter"    # Landroid/view/IInputFilter;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 609
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v5

    .line 610
    :try_start_5
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->findInputFilterIndexLocked(Landroid/view/IInputFilter;)I

    move-result v1

    .line 611
    .local v1, "index":I
    if-ltz v1, :cond_2e

    .line 612
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputFilterChain:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

    .line 613
    .local v0, "host":Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;
    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->disconnectLocked()V

    .line 614
    if-lt v1, v4, :cond_29

    .line 615
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputFilterChain:Ljava/util/ArrayList;

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->-get1(Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;)Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->-set0(Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;)Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

    .line 617
    :cond_29
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputFilterChain:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 620
    .end local v0    # "host":Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;
    :cond_2e
    iget-wide v6, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputFilterChain:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3e

    move v2, v3

    :goto_39
    invoke-static {v6, v7, v2}, Lcom/android/server/input/InputManagerService;->nativeSetInputFilterEnabled(JZ)V
    :try_end_3c
    .catchall {:try_start_5 .. :try_end_3c} :catchall_40

    monitor-exit v5

    .line 608
    return-void

    :cond_3e
    move v2, v4

    .line 620
    goto :goto_39

    .line 609
    .end local v1    # "index":I
    :catchall_40
    move-exception v2

    monitor-exit v5

    throw v2
.end method

.method public updateAccessibilityLargePointerFromSettings()V
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1669
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "accessibility_large_pointer_icon"

    .line 1670
    const/4 v5, -0x2

    .line 1668
    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1671
    .local v0, "accessibilityConfig":I
    if-ne v0, v1, :cond_1b

    :goto_12
    invoke-static {v1}, Landroid/view/PointerIcon;->setUseLargeIcons(Z)V

    .line 1672
    iget-wide v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v2, v3}, Lcom/android/server/input/InputManagerService;->nativeReloadPointerIcons(J)V

    .line 1667
    return-void

    :cond_1b
    move v1, v2

    .line 1671
    goto :goto_12
.end method

.method public updatePointerSpeedFromSettings()V
    .registers 2

    .prologue
    .line 1620
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->getPointerSpeedSetting()I

    move-result v0

    .line 1621
    .local v0, "speed":I
    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService;->setPointerSpeedUnchecked(I)V

    .line 1619
    return-void
.end method

.method public updateShowTouchesFromSettings()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1652
    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->getShowTouchesSetting(I)I

    move-result v0

    .line 1653
    .local v0, "setting":I
    iget-wide v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    :cond_a
    invoke-static {v2, v3, v1}, Lcom/android/server/input/InputManagerService;->nativeSetShowTouches(JZ)V

    .line 1651
    return-void
.end method

.method public updateStylusIconEnabledFromSettings()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1697
    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->getStylusIconEnabled(I)I

    move-result v0

    .line 1698
    .local v0, "enabled":I
    iget-wide v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    :cond_a
    invoke-static {v2, v3, v1}, Lcom/android/server/input/InputManagerService;->nativeSetStylusIconEnabled(JZ)V

    .line 1696
    return-void
.end method

.method public updateVolumeKeysRotationFromSettings()V
    .registers 5

    .prologue
    .line 1723
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->getVolumeKeysRotationSetting(I)I

    move-result v0

    .line 1724
    .local v0, "mode":I
    iget-wide v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v2, v3, v0}, Lcom/android/server/input/InputManagerService;->nativeSetVolumeKeysRotation(JI)V

    .line 1722
    return-void
.end method

.method public vibrate(I[JILandroid/os/IBinder;)V
    .registers 13
    .param p1, "deviceId"    # I
    .param p2, "pattern"    # [J
    .param p3, "repeat"    # I
    .param p4, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1751
    array-length v0, p2

    if-lt p3, v0, :cond_9

    .line 1752
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1756
    :cond_9
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1757
    :try_start_c
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/HashMap;

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/input/InputManagerService$VibratorToken;

    .line 1758
    .local v7, "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    if-nez v7, :cond_2a

    .line 1759
    new-instance v7, Lcom/android/server/input/InputManagerService$VibratorToken;

    .end local v7    # "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mNextVibratorTokenValue:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/android/server/input/InputManagerService;->mNextVibratorTokenValue:I

    invoke-direct {v7, p0, p1, p4, v0}, Lcom/android/server/input/InputManagerService$VibratorToken;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/os/IBinder;I)V
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_42

    .line 1761
    .restart local v7    # "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    const/4 v0, 0x0

    :try_start_22
    invoke-interface {p4, v7, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_25} :catch_3b
    .catchall {:try_start_22 .. :try_end_25} :catchall_42

    .line 1766
    :try_start_25
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/HashMap;

    invoke-virtual {v0, p4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_42

    :cond_2a
    monitor-exit v1

    .line 1770
    monitor-enter v7

    .line 1771
    const/4 v0, 0x1

    :try_start_2d
    iput-boolean v0, v7, Lcom/android/server/input/InputManagerService$VibratorToken;->mVibrating:Z

    .line 1772
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    iget v5, v7, Lcom/android/server/input/InputManagerService$VibratorToken;->mTokenValue:I

    move v2, p1

    move-object v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/input/InputManagerService;->nativeVibrate(JI[JII)V
    :try_end_39
    .catchall {:try_start_2d .. :try_end_39} :catchall_45

    monitor-exit v7

    .line 1750
    return-void

    .line 1762
    :catch_3b
    move-exception v6

    .line 1764
    .local v6, "ex":Landroid/os/RemoteException;
    :try_start_3c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_42
    .catchall {:try_start_3c .. :try_end_42} :catchall_42

    .line 1756
    .end local v6    # "ex":Landroid/os/RemoteException;
    .end local v7    # "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    :catchall_42
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1770
    .restart local v7    # "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    :catchall_45
    move-exception v0

    monitor-exit v7

    throw v0
.end method
