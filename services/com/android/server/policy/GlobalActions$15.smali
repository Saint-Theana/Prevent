.class Lcom/android/server/policy/GlobalActions$15;
.super Lcom/android/server/policy/GlobalActions$SinglePressAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->getTorchToggleAction()Lcom/android/server/policy/GlobalActions$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;II)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;
    .param p2, "$anonymous0"    # I
    .param p3, "$anonymous1"    # I

    .prologue
    .line 708
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$15;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0, p2, p3}, Lcom/android/server/policy/GlobalActions$SinglePressAction;-><init>(II)V

    .line 709
    return-void
.end method


# virtual methods
.method public onPress()V
    .registers 13

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 714
    :try_start_2
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$15;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->-get5(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v8, "camera"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 713
    check-cast v1, Landroid/hardware/camera2/CameraManager;

    .line 715
    .local v1, "cameraManager":Landroid/hardware/camera2/CameraManager;
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    move v8, v6

    :goto_17
    if-ge v8, v10, :cond_50

    aget-object v0, v9, v8

    .line 717
    .local v0, "cameraId":Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    .line 718
    .local v2, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 719
    .local v4, "orient":I
    if-ne v4, v7, :cond_47

    .line 720
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$15;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->-get19(Lcom/android/server/policy/GlobalActions;)Z

    move-result v5

    if-eqz v5, :cond_4b

    move v5, v6

    :goto_36
    invoke-virtual {v1, v0, v5}, Landroid/hardware/camera2/CameraManager;->setTorchMode(Ljava/lang/String;Z)V

    .line 721
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$15;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$15;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->-get19(Lcom/android/server/policy/GlobalActions;)Z

    move-result v5

    if-eqz v5, :cond_4d

    move v5, v6

    :goto_44
    invoke-static {v11, v5}, Lcom/android/server/policy/GlobalActions;->-set4(Lcom/android/server/policy/GlobalActions;Z)Z
    :try_end_47
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_47} :catch_4f

    .line 715
    :cond_47
    add-int/lit8 v5, v8, 0x1

    move v8, v5

    goto :goto_17

    :cond_4b
    move v5, v7

    .line 720
    goto :goto_36

    :cond_4d
    move v5, v7

    .line 721
    goto :goto_44

    .line 724
    .end local v0    # "cameraId":Ljava/lang/String;
    .end local v1    # "cameraManager":Landroid/hardware/camera2/CameraManager;
    .end local v2    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v4    # "orient":I
    :catch_4f
    move-exception v3

    .line 711
    :cond_50
    return-void
.end method

.method public showBeforeProvisioning()Z
    .registers 2

    .prologue
    .line 733
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .registers 2

    .prologue
    .line 729
    const/4 v0, 0x1

    return v0
.end method
