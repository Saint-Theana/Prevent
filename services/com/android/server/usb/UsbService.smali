.class public Lcom/android/server/usb/UsbService;
.super Landroid/hardware/usb/IUsbManager$Stub;
.source "UsbService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbService$1;,
        Lcom/android/server/usb/UsbService$Lifecycle;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbService"


# instance fields
.field private final mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

.field private final mContext:Landroid/content/Context;

.field private mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

.field private mHostManager:Lcom/android/server/usb/UsbHostManager;

.field private final mLock:Ljava/lang/Object;

.field private mPortManager:Lcom/android/server/usb/UsbPortManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSettingsByUser:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/usb/UsbSettingsManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/usb/UsbService;)Lcom/android/server/usb/UsbDeviceManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/usb/UsbService;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/usb/UsbService;)Landroid/util/SparseArray;
    .registers 2

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mSettingsByUser:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/usb/UsbService;I)V
    .registers 2
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbService;->setCurrentUser(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 106
    invoke-direct {p0}, Landroid/hardware/usb/IUsbManager$Stub;-><init>()V

    .line 88
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    .line 93
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/usb/UsbService;->mSettingsByUser:Landroid/util/SparseArray;

    .line 132
    new-instance v2, Lcom/android/server/usb/UsbService$1;

    invoke-direct {v2, p0}, Lcom/android/server/usb/UsbService$1;-><init>(Lcom/android/server/usb/UsbService;)V

    iput-object v2, p0, Lcom/android/server/usb/UsbService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 107
    iput-object p1, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    .line 109
    new-instance v2, Lcom/android/server/usb/UsbAlsaManager;

    invoke-direct {v2, p1}, Lcom/android/server/usb/UsbAlsaManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    .line 111
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 112
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v2, "android.hardware.usb.host"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 113
    new-instance v2, Lcom/android/server/usb/UsbHostManager;

    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    invoke-direct {v2, p1, v3}, Lcom/android/server/usb/UsbHostManager;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbAlsaManager;)V

    iput-object v2, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    .line 115
    :cond_3a
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "/sys/class/android_usb"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 116
    new-instance v2, Lcom/android/server/usb/UsbDeviceManager;

    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    invoke-direct {v2, p1, v3}, Lcom/android/server/usb/UsbDeviceManager;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbAlsaManager;)V

    iput-object v2, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 118
    :cond_51
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-nez v2, :cond_59

    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v2, :cond_60

    .line 119
    :cond_59
    new-instance v2, Lcom/android/server/usb/UsbPortManager;

    invoke-direct {v2, p1}, Lcom/android/server/usb/UsbPortManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 122
    :cond_60
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/usb/UsbService;->setCurrentUser(I)V

    .line 124
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 125
    .local v0, "filter":Landroid/content/IntentFilter;
    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 126
    const-string/jumbo v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    const-string/jumbo v2, "android.intent.action.USER_STOPPED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    const-string/jumbo v2, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 106
    return-void
.end method

.method private getSettingsForUser(I)Lcom/android/server/usb/UsbSettingsManager;
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 96
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 97
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mSettingsByUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbSettingsManager;

    .line 98
    .local v0, "settings":Lcom/android/server/usb/UsbSettingsManager;
    if-nez v0, :cond_1e

    .line 99
    new-instance v0, Lcom/android/server/usb/UsbSettingsManager;

    .end local v0    # "settings":Lcom/android/server/usb/UsbSettingsManager;
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {v0, v1, v3}, Lcom/android/server/usb/UsbSettingsManager;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    .line 100
    .restart local v0    # "settings":Lcom/android/server/usb/UsbSettingsManager;
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mSettingsByUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_20

    :cond_1e
    monitor-exit v2

    .line 102
    return-object v0

    .line 96
    .end local v0    # "settings":Lcom/android/server/usb/UsbSettingsManager;
    :catchall_20
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static isSupportedCurrentFunction(Ljava/lang/String;)Z
    .registers 3
    .param p0, "function"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 307
    if-nez p0, :cond_4

    return v1

    .line 309
    :cond_4
    const-string/jumbo v0, "none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 316
    :cond_d
    return v1

    .line 309
    :cond_e
    const-string/jumbo v0, "audio_source"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string/jumbo v0, "midi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string/jumbo v0, "mtp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string/jumbo v0, "ptp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string/jumbo v0, "rndis"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 319
    const/4 v0, 0x0

    return v0
.end method

.method private static final removeLastChar(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 593
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setCurrentUser(I)V
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v0

    .line 154
    .local v0, "userSettings":Lcom/android/server/usb/UsbSettingsManager;
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v1, :cond_d

    .line 155
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbHostManager;->setCurrentSettings(Lcom/android/server/usb/UsbSettingsManager;)V

    .line 157
    :cond_d
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v1, :cond_16

    .line 158
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentUser(ILcom/android/server/usb/UsbSettingsManager;)V

    .line 152
    :cond_16
    return-void
.end method


# virtual methods
.method public allowUsbDebugging(ZLjava/lang/String;)V
    .registers 6
    .param p1, "alwaysAllow"    # Z
    .param p2, "publicKey"    # Ljava/lang/String;

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager;->allowUsbDebugging(ZLjava/lang/String;)V

    .line 323
    return-void
.end method

.method public bootCompleted()V
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_9

    .line 178
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->bootCompleted()V

    .line 176
    :cond_9
    return-void
.end method

.method public clearDefaults(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-direct {p0, p2}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbSettingsManager;->clearDefaults(Ljava/lang/String;)V

    .line 278
    return-void
.end method

.method public clearUsbDebuggingKeys()V
    .registers 4

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->clearUsbDebuggingKeys()V

    .line 335
    return-void
.end method

.method public denyUsbDebugging()V
    .registers 4

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->denyUsbDebugging()V

    .line 329
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 23
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 383
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string/jumbo v17, "android.permission.DUMP"

    const-string/jumbo v18, "UsbService"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    new-instance v10, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v2, "  "

    move-object/from16 v0, p2

    invoke-direct {v10, v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 386
    .local v10, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 388
    .local v12, "ident":J
    if-eqz p3, :cond_26

    :try_start_21
    move-object/from16 v0, p3

    array-length v2, v0

    if-nez v2, :cond_b1

    .line 389
    :cond_26
    const-string/jumbo v2, "USB Manager State:"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 390
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 391
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v2, :cond_3c

    .line 392
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v2, v10}, Lcom/android/server/usb/UsbDeviceManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 394
    :cond_3c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v2, :cond_49

    .line 395
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v2, v10}, Lcom/android/server/usb/UsbHostManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 397
    :cond_49
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v2, :cond_56

    .line 398
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v2, v10}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 400
    :cond_56
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    invoke-virtual {v2, v10}, Lcom/android/server/usb/UsbAlsaManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17
    :try_end_64
    .catchall {:try_start_21 .. :try_end_64} :catchall_116

    .line 403
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_65
    :try_start_65
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mSettingsByUser:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v11, v2, :cond_114

    .line 404
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mSettingsByUser:Landroid/util/SparseArray;

    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v16

    .line 405
    .local v16, "userId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mSettingsByUser:Landroid/util/SparseArray;

    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/usb/UsbSettingsManager;

    .line 406
    .local v14, "settings":Lcom/android/server/usb/UsbSettingsManager;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Settings for user "

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v18, ":"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 407
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 408
    invoke-virtual {v14, v10}, Lcom/android/server/usb/UsbSettingsManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 409
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_ae
    .catchall {:try_start_65 .. :try_end_ae} :catchall_11b

    .line 403
    add-int/lit8 v11, v11, 0x1

    goto :goto_65

    .line 388
    .end local v11    # "i":I
    .end local v14    # "settings":Lcom/android/server/usb/UsbSettingsManager;
    .end local v16    # "userId":I
    :cond_b1
    :try_start_b1
    const-string/jumbo v2, "-a"

    const/16 v17, 0x0

    aget-object v17, p3, v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 412
    move-object/from16 v0, p3

    array-length v2, v0

    const/16 v17, 0x4

    move/from16 v0, v17

    if-ne v2, v0, :cond_198

    const-string/jumbo v2, "set-port-roles"

    const/16 v17, 0x0

    aget-object v17, p3, v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_198

    .line 413
    const/4 v2, 0x1

    aget-object v3, p3, v2

    .line 415
    .local v3, "portId":Ljava/lang/String;
    const/4 v2, 0x2

    aget-object v2, p3, v2

    const-string/jumbo v17, "source"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_11e

    .line 417
    const/4 v6, 0x1

    .line 430
    .local v6, "powerRole":I
    :goto_ea
    const/4 v2, 0x3

    aget-object v2, p3, v2

    const-string/jumbo v17, "host"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_15b

    .line 432
    const/4 v8, 0x1

    .line 444
    .local v8, "dataRole":I
    :goto_f9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v2, :cond_110

    .line 445
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v2, v3, v6, v8, v10}, Lcom/android/server/usb/UsbPortManager;->setPortRoles(Ljava/lang/String;IILcom/android/internal/util/IndentingPrintWriter;)V

    .line 451
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 452
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v2, v10}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    :try_end_110
    .catchall {:try_start_b1 .. :try_end_110} :catchall_116

    .line 588
    .end local v3    # "portId":Ljava/lang/String;
    .end local v6    # "powerRole":I
    .end local v8    # "dataRole":I
    :cond_110
    :goto_110
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 382
    return-void

    .restart local v11    # "i":I
    :cond_114
    :try_start_114
    monitor-exit v17
    :try_end_115
    .catchall {:try_start_114 .. :try_end_115} :catchall_116

    goto :goto_110

    .line 587
    .end local v11    # "i":I
    :catchall_116
    move-exception v2

    .line 588
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 587
    throw v2

    .line 402
    .restart local v11    # "i":I
    :catchall_11b
    move-exception v2

    :try_start_11c
    monitor-exit v17

    throw v2

    .line 415
    .end local v11    # "i":I
    .restart local v3    # "portId":Ljava/lang/String;
    :cond_11e
    const-string/jumbo v17, "sink"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12b

    .line 420
    const/4 v6, 0x2

    .line 421
    .restart local v6    # "powerRole":I
    goto :goto_ea

    .line 415
    .end local v6    # "powerRole":I
    :cond_12b
    const-string/jumbo v17, "no-power"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_138

    .line 423
    const/4 v6, 0x0

    .line 424
    .restart local v6    # "powerRole":I
    goto :goto_ea

    .line 426
    .end local v6    # "powerRole":I
    :cond_138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Invalid power role: "

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v17, 0x2

    aget-object v17, p3, v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_157
    .catchall {:try_start_11c .. :try_end_157} :catchall_116

    .line 588
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 427
    return-void

    .line 430
    .restart local v6    # "powerRole":I
    :cond_15b
    :try_start_15b
    const-string/jumbo v17, "device"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_168

    .line 435
    const/4 v8, 0x2

    .line 436
    .restart local v8    # "dataRole":I
    goto :goto_f9

    .line 430
    .end local v8    # "dataRole":I
    :cond_168
    const-string/jumbo v17, "no-data"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_175

    .line 438
    const/4 v8, 0x0

    .line 439
    .restart local v8    # "dataRole":I
    goto :goto_f9

    .line 441
    .end local v8    # "dataRole":I
    :cond_175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Invalid data role: "

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v17, 0x3

    aget-object v17, p3, v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_194
    .catchall {:try_start_15b .. :try_end_194} :catchall_116

    .line 588
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 442
    return-void

    .line 454
    .end local v3    # "portId":Ljava/lang/String;
    .end local v6    # "powerRole":I
    :cond_198
    :try_start_198
    move-object/from16 v0, p3

    array-length v2, v0

    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v2, v0, :cond_225

    const-string/jumbo v2, "add-port"

    const/16 v17, 0x0

    aget-object v17, p3, v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_225

    .line 455
    const/4 v2, 0x1

    aget-object v3, p3, v2

    .line 457
    .restart local v3    # "portId":Ljava/lang/String;
    const/4 v2, 0x2

    aget-object v2, p3, v2

    const-string/jumbo v17, "ufp"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1db

    .line 459
    const/4 v15, 0x2

    .line 474
    .local v15, "supportedModes":I
    :goto_1c2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v2, :cond_110

    .line 475
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v2, v3, v15, v10}, Lcom/android/server/usb/UsbPortManager;->addSimulatedPort(Ljava/lang/String;ILcom/android/internal/util/IndentingPrintWriter;)V

    .line 476
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 477
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v2, v10}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto/16 :goto_110

    .line 457
    .end local v15    # "supportedModes":I
    :cond_1db
    const-string/jumbo v17, "dfp"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1e8

    .line 462
    const/4 v15, 0x1

    .line 463
    .restart local v15    # "supportedModes":I
    goto :goto_1c2

    .line 457
    .end local v15    # "supportedModes":I
    :cond_1e8
    const-string/jumbo v17, "dual"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1f5

    .line 465
    const/4 v15, 0x3

    .line 466
    .restart local v15    # "supportedModes":I
    goto :goto_1c2

    .line 457
    .end local v15    # "supportedModes":I
    :cond_1f5
    const-string/jumbo v17, "none"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    .line 468
    const/4 v15, 0x0

    .line 469
    .restart local v15    # "supportedModes":I
    goto :goto_1c2

    .line 471
    .end local v15    # "supportedModes":I
    :cond_202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Invalid mode: "

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v17, 0x2

    aget-object v17, p3, v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_221
    .catchall {:try_start_198 .. :try_end_221} :catchall_116

    .line 588
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 472
    return-void

    .line 479
    .end local v3    # "portId":Ljava/lang/String;
    :cond_225
    :try_start_225
    move-object/from16 v0, p3

    array-length v2, v0

    const/16 v17, 0x5

    move/from16 v0, v17

    if-ne v2, v0, :cond_35a

    const-string/jumbo v2, "connect-port"

    const/16 v17, 0x0

    aget-object v17, p3, v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35a

    .line 480
    const/4 v2, 0x1

    aget-object v3, p3, v2

    .line 482
    .restart local v3    # "portId":Ljava/lang/String;
    const/4 v2, 0x2

    aget-object v2, p3, v2

    const-string/jumbo v17, "?"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    .line 483
    .local v5, "canChangeMode":Z
    if-eqz v5, :cond_2bc

    const/4 v2, 0x2

    aget-object v2, p3, v2

    invoke-static {v2}, Lcom/android/server/usb/UsbService;->removeLastChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_255
    const-string/jumbo v17, "ufp"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2c0

    .line 485
    const/4 v4, 0x2

    .line 495
    .local v4, "mode":I
    :goto_261
    const/4 v2, 0x3

    aget-object v2, p3, v2

    const-string/jumbo v17, "?"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    .line 496
    .local v7, "canChangePowerRole":Z
    if-eqz v7, :cond_2f0

    const/4 v2, 0x3

    aget-object v2, p3, v2

    invoke-static {v2}, Lcom/android/server/usb/UsbService;->removeLastChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_276
    const-string/jumbo v17, "source"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2f4

    .line 498
    const/4 v6, 0x1

    .line 508
    .restart local v6    # "powerRole":I
    :goto_282
    const/4 v2, 0x4

    aget-object v2, p3, v2

    const-string/jumbo v17, "?"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    .line 509
    .local v9, "canChangeDataRole":Z
    if-eqz v9, :cond_324

    const/4 v2, 0x4

    aget-object v2, p3, v2

    invoke-static {v2}, Lcom/android/server/usb/UsbService;->removeLastChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_297
    const-string/jumbo v17, "host"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_329

    .line 511
    const/4 v8, 0x1

    .line 520
    .restart local v8    # "dataRole":I
    :goto_2a3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v2, :cond_110

    .line 521
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/usb/UsbPortManager;->connectSimulatedPort(Ljava/lang/String;IZIZIZLcom/android/internal/util/IndentingPrintWriter;)V

    .line 523
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 524
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v2, v10}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto/16 :goto_110

    .line 483
    .end local v4    # "mode":I
    .end local v6    # "powerRole":I
    .end local v7    # "canChangePowerRole":Z
    .end local v8    # "dataRole":I
    .end local v9    # "canChangeDataRole":Z
    :cond_2bc
    const/4 v2, 0x2

    aget-object v2, p3, v2

    goto :goto_255

    :cond_2c0
    const-string/jumbo v17, "dfp"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2cd

    .line 488
    const/4 v4, 0x1

    .line 489
    .restart local v4    # "mode":I
    goto :goto_261

    .line 491
    .end local v4    # "mode":I
    :cond_2cd
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Invalid mode: "

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v17, 0x2

    aget-object v17, p3, v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_2ec
    .catchall {:try_start_225 .. :try_end_2ec} :catchall_116

    .line 588
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 492
    return-void

    .line 496
    .restart local v4    # "mode":I
    .restart local v7    # "canChangePowerRole":Z
    :cond_2f0
    const/4 v2, 0x3

    :try_start_2f1
    aget-object v2, p3, v2

    goto :goto_276

    :cond_2f4
    const-string/jumbo v17, "sink"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_301

    .line 501
    const/4 v6, 0x2

    .line 502
    .restart local v6    # "powerRole":I
    goto :goto_282

    .line 504
    .end local v6    # "powerRole":I
    :cond_301
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Invalid power role: "

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v17, 0x3

    aget-object v17, p3, v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_320
    .catchall {:try_start_2f1 .. :try_end_320} :catchall_116

    .line 588
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 505
    return-void

    .line 509
    .restart local v6    # "powerRole":I
    .restart local v9    # "canChangeDataRole":Z
    :cond_324
    const/4 v2, 0x4

    :try_start_325
    aget-object v2, p3, v2

    goto/16 :goto_297

    :cond_329
    const-string/jumbo v17, "device"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_337

    .line 514
    const/4 v8, 0x2

    .line 515
    .restart local v8    # "dataRole":I
    goto/16 :goto_2a3

    .line 517
    .end local v8    # "dataRole":I
    :cond_337
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Invalid data role: "

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v17, 0x4

    aget-object v17, p3, v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_356
    .catchall {:try_start_325 .. :try_end_356} :catchall_116

    .line 588
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 518
    return-void

    .line 526
    .end local v3    # "portId":Ljava/lang/String;
    .end local v4    # "mode":I
    .end local v5    # "canChangeMode":Z
    .end local v6    # "powerRole":I
    .end local v7    # "canChangePowerRole":Z
    .end local v9    # "canChangeDataRole":Z
    :cond_35a
    :try_start_35a
    move-object/from16 v0, p3

    array-length v2, v0

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v2, v0, :cond_38e

    const-string/jumbo v2, "disconnect-port"

    const/16 v17, 0x0

    aget-object v17, p3, v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38e

    .line 527
    const/4 v2, 0x1

    aget-object v3, p3, v2

    .line 528
    .restart local v3    # "portId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v2, :cond_110

    .line 529
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v2, v3, v10}, Lcom/android/server/usb/UsbPortManager;->disconnectSimulatedPort(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 530
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 531
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v2, v10}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto/16 :goto_110

    .line 533
    .end local v3    # "portId":Ljava/lang/String;
    :cond_38e
    move-object/from16 v0, p3

    array-length v2, v0

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v2, v0, :cond_3c2

    const-string/jumbo v2, "remove-port"

    const/16 v17, 0x0

    aget-object v17, p3, v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    .line 534
    const/4 v2, 0x1

    aget-object v3, p3, v2

    .line 535
    .restart local v3    # "portId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v2, :cond_110

    .line 536
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v2, v3, v10}, Lcom/android/server/usb/UsbPortManager;->removeSimulatedPort(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 537
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 538
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v2, v10}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto/16 :goto_110

    .line 540
    .end local v3    # "portId":Ljava/lang/String;
    :cond_3c2
    move-object/from16 v0, p3

    array-length v2, v0

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v2, v0, :cond_3f3

    const-string/jumbo v2, "reset"

    const/16 v17, 0x0

    aget-object v17, p3, v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f3

    .line 541
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v2, :cond_110

    .line 542
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v2, v10}, Lcom/android/server/usb/UsbPortManager;->resetSimulation(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 543
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 544
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v2, v10}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto/16 :goto_110

    .line 546
    :cond_3f3
    move-object/from16 v0, p3

    array-length v2, v0

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v2, v0, :cond_41a

    const-string/jumbo v2, "ports"

    const/16 v17, 0x0

    aget-object v17, p3, v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41a

    .line 547
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v2, :cond_110

    .line 548
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v2, v10}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto/16 :goto_110

    .line 551
    :cond_41a
    const-string/jumbo v2, "Dump current USB state or issue command:"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 552
    const-string/jumbo v2, "  ports"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 553
    const-string/jumbo v2, "  set-port-roles <id> <source|sink|no-power> <host|device|no-data>"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 554
    const-string/jumbo v2, "  add-port <id> <ufp|dfp|dual|none>"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 555
    const-string/jumbo v2, "  connect-port <id> <ufp|dfp><?> <source|sink><?> <host|device><?>"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 556
    const-string/jumbo v2, "    (add ? suffix if mode, power role, or data role can be changed)"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 557
    const-string/jumbo v2, "  disconnect-port <id>"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 558
    const-string/jumbo v2, "  remove-port <id>"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 559
    const-string/jumbo v2, "  reset"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 560
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 561
    const-string/jumbo v2, "Example USB type C port role switch:"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 562
    const-string/jumbo v2, "  dumpsys usb set-port-roles \"default\" source device"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 563
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 564
    const-string/jumbo v2, "Example USB type C port simulation with full capabilities:"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 565
    const-string/jumbo v2, "  dumpsys usb add-port \"matrix\" dual"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 566
    const-string/jumbo v2, "  dumpsys usb connect-port \"matrix\" ufp? sink? device?"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 567
    const-string/jumbo v2, "  dumpsys usb ports"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 568
    const-string/jumbo v2, "  dumpsys usb disconnect-port \"matrix\""

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 569
    const-string/jumbo v2, "  dumpsys usb remove-port \"matrix\""

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 570
    const-string/jumbo v2, "  dumpsys usb reset"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 571
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 572
    const-string/jumbo v2, "Example USB type C port where only power role can be changed:"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 573
    const-string/jumbo v2, "  dumpsys usb add-port \"matrix\" dual"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 574
    const-string/jumbo v2, "  dumpsys usb connect-port \"matrix\" dfp source? host"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 575
    const-string/jumbo v2, "  dumpsys usb reset"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 576
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 577
    const-string/jumbo v2, "Example USB OTG port where id pin determines function:"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 578
    const-string/jumbo v2, "  dumpsys usb add-port \"matrix\" dual"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 579
    const-string/jumbo v2, "  dumpsys usb connect-port \"matrix\" dfp source host"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 580
    const-string/jumbo v2, "  dumpsys usb reset"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 581
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 582
    const-string/jumbo v2, "Example USB device-only port:"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 583
    const-string/jumbo v2, "  dumpsys usb add-port \"matrix\" ufp"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 584
    const-string/jumbo v2, "  dumpsys usb connect-port \"matrix\" ufp sink device"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 585
    const-string/jumbo v2, "  dumpsys usb reset"

    invoke-virtual {v10, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_4dd
    .catchall {:try_start_35a .. :try_end_4dd} :catchall_116

    goto/16 :goto_110
.end method

.method public getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 203
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_c

    .line 204
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;

    move-result-object v0

    return-object v0

    .line 206
    :cond_c
    return-object v1
.end method

.method public getDeviceList(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "devices"    # Landroid/os/Bundle;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v0, :cond_9

    .line 186
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbHostManager;->getDeviceList(Landroid/os/Bundle;)V

    .line 184
    :cond_9
    return-void
.end method

.method public getPortStatus(Ljava/lang/String;)Landroid/hardware/usb/UsbPortStatus;
    .registers 7
    .param p1, "portId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 354
    const-string/jumbo v3, "portId must not be null"

    invoke-static {p1, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.MANAGE_USB"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 359
    .local v0, "ident":J
    :try_start_13
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v3, :cond_1d

    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v2, p1}, Lcom/android/server/usb/UsbPortManager;->getPortStatus(Ljava/lang/String;)Landroid/hardware/usb/UsbPortStatus;
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_21

    move-result-object v2

    .line 361
    :cond_1d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 359
    return-object v2

    .line 360
    :catchall_21
    move-exception v2

    .line 361
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 360
    throw v2
.end method

.method public getPorts()[Landroid/hardware/usb/UsbPort;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 342
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.MANAGE_USB"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 346
    .local v0, "ident":J
    :try_start_d
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v3, :cond_17

    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v2}, Lcom/android/server/usb/UsbPortManager;->getPorts()[Landroid/hardware/usb/UsbPort;
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_1b

    move-result-object v2

    .line 348
    :cond_17
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 346
    return-object v2

    .line 347
    :catchall_1b
    move-exception v2

    .line 348
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 347
    throw v2
.end method

.method public grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V
    .registers 7
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "uid"    # I

    .prologue
    .line 266
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.MANAGE_USB"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 268
    .local v0, "userId":I
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usb/UsbSettingsManager;->grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V

    .line 265
    return-void
.end method

.method public grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V
    .registers 7
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "uid"    # I

    .prologue
    .line 259
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.MANAGE_USB"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 261
    .local v0, "userId":I
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usb/UsbSettingsManager;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V

    .line 258
    return-void
.end method

.method public hasAccessoryPermission(Landroid/hardware/usb/UsbAccessory;)Z
    .registers 4
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    .prologue
    .line 240
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 241
    .local v0, "userId":I
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/usb/UsbSettingsManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;)Z

    move-result v1

    return v1
.end method

.method public hasDefaults(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-direct {p0, p2}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbSettingsManager;->hasDefaults(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasDevicePermission(Landroid/hardware/usb/UsbDevice;)Z
    .registers 4
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .prologue
    .line 234
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 235
    .local v0, "userId":I
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/usb/UsbSettingsManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v1

    return v1
.end method

.method public isFunctionEnabled(Ljava/lang/String;)Z
    .registers 5
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 285
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MANAGE_USB"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbDeviceManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v0

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;
    .registers 4
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    .prologue
    const/4 v1, 0x0

    .line 213
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_c

    .line 214
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbDeviceManager;->openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0

    .line 216
    :cond_c
    return-object v1
.end method

.method public openDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 4
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 193
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v0, :cond_c

    .line 194
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbHostManager;->openDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0

    .line 196
    :cond_c
    return-object v1
.end method

.method public requestAccessoryPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .registers 6
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 253
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 254
    .local v0, "userId":I
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/usb/UsbSettingsManager;->requestPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 252
    return-void
.end method

.method public requestDevicePermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .registers 6
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 246
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 247
    .local v0, "userId":I
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/usb/UsbSettingsManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 245
    return-void
.end method

.method public setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;I)V
    .registers 7
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-direct {p0, p3}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbSettingsManager;->setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method public setCurrentFunction(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "function"    # Ljava/lang/String;
    .param p2, "usbDataUnlocked"    # Z

    .prologue
    const/4 v2, 0x0

    .line 291
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MANAGE_USB"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-static {p1}, Lcom/android/server/usb/UsbService;->isSupportedCurrentFunction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 294
    const-string/jumbo v0, "UsbService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Caller of setCurrentFunction() requested unsupported USB function: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const-string/jumbo p1, "none"

    .line 299
    :cond_2c
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_36

    .line 300
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(Ljava/lang/String;Z)V

    .line 290
    return-void

    .line 302
    :cond_36
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "USB device mode not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)V
    .registers 7
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-direct {p0, p3}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbSettingsManager;->setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method public setPortRoles(Ljava/lang/String;II)V
    .registers 9
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "powerRole"    # I
    .param p3, "dataRole"    # I

    .prologue
    const/4 v4, 0x0

    .line 367
    const-string/jumbo v2, "portId must not be null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    invoke-static {p2, p3}, Landroid/hardware/usb/UsbPort;->checkRoles(II)V

    .line 369
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.MANAGE_USB"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 373
    .local v0, "ident":J
    :try_start_16
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v2, :cond_20

    .line 374
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, p2, p3, v3}, Lcom/android/server/usb/UsbPortManager;->setPortRoles(Ljava/lang/String;IILcom/android/internal/util/IndentingPrintWriter;)V
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_24

    .line 377
    :cond_20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 366
    return-void

    .line 376
    :catchall_24
    move-exception v2

    .line 377
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 376
    throw v2
.end method

.method public systemReady()V
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbAlsaManager;->systemReady()V

    .line 165
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_e

    .line 166
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->systemReady()V

    .line 168
    :cond_e
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v0, :cond_17

    .line 169
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbHostManager;->systemReady()V

    .line 171
    :cond_17
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v0, :cond_20

    .line 172
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbPortManager;->systemReady()V

    .line 162
    :cond_20
    return-void
.end method
