.class Lcom/android/server/audio/AudioService$ControllerService;
.super Landroid/database/ContentObserver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerService"
.end annotation


# instance fields
.field private mComponent:Landroid/content/ComponentName;

.field private mUid:I

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method static synthetic -get0(Lcom/android/server/audio/AudioService$ControllerService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/audio/AudioService$ControllerService;->mUid:I

    return v0
.end method

.method public constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 6933
    iput-object p1, p0, Lcom/android/server/audio/AudioService$ControllerService;->this$0:Lcom/android/server/audio/AudioService;

    .line 6934
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6933
    return-void
.end method


# virtual methods
.method public init()V
    .registers 4

    .prologue
    .line 6943
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService$ControllerService;->onChange(Z)V

    .line 6944
    iget-object v0, p0, Lcom/android/server/audio/AudioService$ControllerService;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get16(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 6945
    const-string/jumbo v1, "volume_controller_service_component"

    .line 6944
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 6945
    const/4 v2, 0x0

    .line 6944
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 6942
    return-void
.end method

.method public onChange(Z)V
    .registers 7
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 6950
    iput v3, p0, Lcom/android/server/audio/AudioService$ControllerService;->mUid:I

    .line 6951
    iput-object v2, p0, Lcom/android/server/audio/AudioService$ControllerService;->mComponent:Landroid/content/ComponentName;

    .line 6952
    iget-object v2, p0, Lcom/android/server/audio/AudioService$ControllerService;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get16(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v2

    .line 6953
    const-string/jumbo v3, "volume_controller_service_component"

    .line 6952
    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6954
    .local v1, "setting":Ljava/lang/String;
    if-nez v1, :cond_16

    return-void

    .line 6956
    :cond_16
    :try_start_16
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/audio/AudioService$ControllerService;->mComponent:Landroid/content/ComponentName;

    .line 6957
    iget-object v2, p0, Lcom/android/server/audio/AudioService$ControllerService;->mComponent:Landroid/content/ComponentName;

    if-nez v2, :cond_21

    return-void

    .line 6958
    :cond_21
    iget-object v2, p0, Lcom/android/server/audio/AudioService$ControllerService;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get17(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 6959
    iget-object v3, p0, Lcom/android/server/audio/AudioService$ControllerService;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 6958
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v2, p0, Lcom/android/server/audio/AudioService$ControllerService;->mUid:I
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_3a} :catch_59

    .line 6963
    :goto_3a
    sget-boolean v2, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v2, :cond_58

    const-string/jumbo v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Reloaded controller service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6949
    :cond_58
    return-void

    .line 6960
    :catch_59
    move-exception v0

    .line 6961
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "AudioService"

    const-string/jumbo v3, "Error loading controller service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3a
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 6939
    const-string/jumbo v0, "{mUid=%d,mComponent=%s}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/server/audio/AudioService$ControllerService;->mUid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/server/audio/AudioService$ControllerService;->mComponent:Landroid/content/ComponentName;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
