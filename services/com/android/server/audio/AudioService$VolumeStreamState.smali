.class public Lcom/android/server/audio/AudioService$VolumeStreamState;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VolumeStreamState"
.end annotation


# instance fields
.field private final mIndexMap:Landroid/util/SparseIntArray;

.field private mIndexMax:I

.field private final mIndexMin:I

.field private mIsMuted:Z

.field private mObservedDevices:I

.field private final mStreamDevicesChanged:Landroid/content/Intent;

.field private final mStreamType:I

.field private final mVolumeChanged:Landroid/content/Intent;

.field private mVolumeIndexSettingName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method static synthetic -get0(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;
    .registers 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/audio/AudioService$VolumeStreamState;)I
    .registers 2

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/audio/AudioService$VolumeStreamState;)I
    .registers 2

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/audio/AudioService$VolumeStreamState;)I
    .registers 2

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/audio/AudioService$VolumeStreamState;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/io/PrintWriter;)V
    .registers 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V
    .registers 7
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;
    .param p2, "settingName"    # Ljava/lang/String;
    .param p3, "streamType"    # I

    .prologue
    .line 4267
    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4263
    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    .line 4269
    iput-object p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    .line 4271
    iput p3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 4272
    invoke-static {}, Lcom/android/server/audio/AudioService;->-get1()[I

    move-result-object v0

    aget v0, v0, p3

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    .line 4273
    invoke-static {}, Lcom/android/server/audio/AudioService;->-get0()[I

    move-result-object v0

    aget v0, v0, p3

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    .line 4274
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    div-int/lit8 v0, v0, 0xa

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    div-int/lit8 v1, v1, 0xa

    invoke-static {p3, v0, v1}, Landroid/media/AudioSystem;->initStreamVolume(III)I

    .line 4276
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->readSettings()V

    .line 4277
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    .line 4278
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    const-string/jumbo v1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4279
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamDevicesChanged:Landroid/content/Intent;

    .line 4280
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamDevicesChanged:Landroid/content/Intent;

    const-string/jumbo v1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4267
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;ILcom/android/server/audio/AudioService$VolumeStreamState;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;
    .param p2, "settingName"    # Ljava/lang/String;
    .param p3, "streamType"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioService$VolumeStreamState;-><init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V

    return-void
.end method

.method private dump(Ljava/io/PrintWriter;)V
    .registers 12
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    .line 4619
    const-string/jumbo v7, "   Muted: "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4620
    iget-boolean v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Z)V

    .line 4621
    const-string/jumbo v7, "   Min: "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4622
    iget v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    add-int/lit8 v7, v7, 0x5

    div-int/lit8 v7, v7, 0xa

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 4623
    const-string/jumbo v7, "   Max: "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4624
    iget v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v7, v7, 0x5

    div-int/lit8 v7, v7, 0xa

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 4625
    const-string/jumbo v7, "   Current: "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4626
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_32
    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    if-ge v3, v7, :cond_84

    .line 4627
    if-lez v3, :cond_42

    .line 4628
    const-string/jumbo v7, ", "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4630
    :cond_42
    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    .line 4631
    .local v0, "device":I
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4632
    if-ne v0, v9, :cond_7f

    const-string/jumbo v1, "default"

    .line 4634
    .local v1, "deviceName":Ljava/lang/String;
    :goto_54
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_69

    .line 4635
    const-string/jumbo v7, " ("

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4636
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4637
    const-string/jumbo v7, ")"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4639
    :cond_69
    const-string/jumbo v7, ": "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4640
    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x5

    div-int/lit8 v4, v7, 0xa

    .line 4641
    .local v4, "index":I
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 4626
    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    .line 4633
    .end local v1    # "deviceName":Ljava/lang/String;
    .end local v4    # "index":I
    :cond_7f
    invoke-static {v0}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_54

    .line 4643
    .end local v0    # "device":I
    :cond_84
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4644
    const-string/jumbo v7, "   Devices: "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4645
    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v7, v8}, Lcom/android/server/audio/AudioService;->-wrap5(Lcom/android/server/audio/AudioService;I)I

    move-result v2

    .line 4646
    .local v2, "devices":I
    const/4 v3, 0x0

    const/4 v5, 0x0

    .local v5, "n":I
    move v6, v5

    .line 4649
    .end local v5    # "n":I
    .local v6, "n":I
    :goto_98
    const/4 v7, 0x1

    shl-int v0, v7, v3

    .restart local v0    # "device":I
    if-eq v0, v9, :cond_b6

    .line 4650
    and-int v7, v2, v0

    if-eqz v7, :cond_b7

    .line 4651
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "n":I
    .restart local v5    # "n":I
    if-lez v6, :cond_ab

    .line 4652
    const-string/jumbo v7, ", "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4654
    :cond_ab
    invoke-static {v0}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4656
    :goto_b2
    add-int/lit8 v3, v3, 0x1

    move v6, v5

    .end local v5    # "n":I
    .restart local v6    # "n":I
    goto :goto_98

    .line 4618
    :cond_b6
    return-void

    :cond_b7
    move v5, v6

    .end local v6    # "n":I
    .restart local v5    # "n":I
    goto :goto_b2
.end method

.method private getAbsoluteVolumeIndex(I)I
    .registers 6
    .param p1, "index"    # I

    .prologue
    .line 4369
    if-nez p1, :cond_4

    .line 4371
    const/4 p1, 0x0

    .line 4385
    :goto_3
    return p1

    .line 4372
    :cond_4
    const/4 v0, 0x1

    if-ne p1, v0, :cond_11

    .line 4374
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    double-to-int v0, v0

    div-int/lit8 p1, v0, 0xa

    goto :goto_3

    .line 4375
    :cond_11
    const/4 v0, 0x2

    if-ne p1, v0, :cond_21

    .line 4377
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    int-to-double v0, v0

    const-wide v2, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v0, v2

    double-to-int v0, v0

    div-int/lit8 p1, v0, 0xa

    goto :goto_3

    .line 4378
    :cond_21
    const/4 v0, 0x3

    if-ne p1, v0, :cond_31

    .line 4380
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    int-to-double v0, v0

    const-wide v2, 0x3feb333333333333L    # 0.85

    mul-double/2addr v0, v2

    double-to-int v0, v0

    div-int/lit8 p1, v0, 0xa

    goto :goto_3

    .line 4383
    :cond_31
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 p1, v0, 0xa

    goto :goto_3
.end method

.method private getValidIndex(I)I
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 4609
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    if-ge p1, v0, :cond_7

    .line 4610
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    return v0

    .line 4611
    :cond_7
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get43(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-nez v0, :cond_13

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    if-le p1, v0, :cond_16

    .line 4612
    :cond_13
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    return v0

    .line 4615
    :cond_16
    return p1
.end method


# virtual methods
.method public adjustIndex(IILjava/lang/String;)Z
    .registers 5
    .param p1, "deltaIndex"    # I
    .param p2, "device"    # I
    .param p3, "caller"    # Ljava/lang/String;

    .prologue
    .line 4436
    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public applyAllVolumes()V
    .registers 7

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 4404
    const-class v4, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v4

    .line 4407
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    :try_start_6
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_55

    .line 4408
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    .line 4409
    .local v0, "device":I
    if-eq v0, v5, :cond_20

    .line 4410
    iget-boolean v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    if-eqz v3, :cond_23

    .line 4411
    const/4 v2, 0x0

    .line 4420
    .local v2, "index":I
    :goto_1b
    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v3, v2, v0}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I

    .line 4407
    .end local v2    # "index":I
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 4412
    :cond_23
    and-int/lit16 v3, v0, 0x380

    if-eqz v3, :cond_3c

    .line 4413
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get10(Lcom/android/server/audio/AudioService;)Z

    move-result v3

    .line 4412
    if-eqz v3, :cond_3c

    .line 4414
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    div-int/lit8 v3, v3, 0xa

    invoke-direct {p0, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getAbsoluteVolumeIndex(I)I

    move-result v2

    .restart local v2    # "index":I
    goto :goto_1b

    .line 4415
    .end local v2    # "index":I
    :cond_3c
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v3, v3, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    and-int/2addr v3, v0

    if-eqz v3, :cond_4a

    .line 4416
    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v3, v3, 0x5

    div-int/lit8 v2, v3, 0xa

    .restart local v2    # "index":I
    goto :goto_1b

    .line 4418
    .end local v2    # "index":I
    :cond_4a
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    div-int/lit8 v2, v3, 0xa

    .restart local v2    # "index":I
    goto :goto_1b

    .line 4425
    .end local v0    # "device":I
    .end local v2    # "index":I
    :cond_55
    iget-boolean v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    if-eqz v3, :cond_63

    .line 4426
    const/4 v2, 0x0

    .line 4431
    .restart local v2    # "index":I
    :goto_5a
    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/high16 v5, 0x40000000    # 2.0f

    .line 4430
    invoke-static {v3, v2, v5}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I
    :try_end_61
    .catchall {:try_start_6 .. :try_end_61} :catchall_6e

    monitor-exit v4

    .line 4403
    return-void

    .line 4428
    .end local v2    # "index":I
    :cond_63
    const/high16 v3, 0x40000000    # 2.0f

    :try_start_65
    invoke-virtual {p0, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    div-int/lit8 v2, v3, 0xa
    :try_end_6d
    .catchall {:try_start_65 .. :try_end_6d} :catchall_6e

    .restart local v2    # "index":I
    goto :goto_5a

    .line 4404
    .end local v2    # "index":I
    :catchall_6e
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public applyDeviceVolume_syncVSS(I)V
    .registers 4
    .param p1, "device"    # I

    .prologue
    .line 4391
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    if-eqz v1, :cond_b

    .line 4392
    const/4 v0, 0x0

    .line 4400
    .local v0, "index":I
    :goto_5
    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v1, v0, p1}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I

    .line 4389
    return-void

    .line 4393
    .end local v0    # "index":I
    :cond_b
    and-int/lit16 v1, p1, 0x380

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get10(Lcom/android/server/audio/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 4394
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0xa

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getAbsoluteVolumeIndex(I)I

    move-result v0

    .restart local v0    # "index":I
    goto :goto_5

    .line 4395
    .end local v0    # "index":I
    :cond_24
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, v1, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_32

    .line 4396
    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v0, v1, 0xa

    .restart local v0    # "index":I
    goto :goto_5

    .line 4398
    .end local v0    # "index":I
    :cond_32
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v0, v1, 0xa

    .restart local v0    # "index":I
    goto :goto_5
.end method

.method public checkFixedVolumeDevices()V
    .registers 7

    .prologue
    .line 4592
    const-class v4, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v4

    .line 4594
    :try_start_3
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get41(Lcom/android/server/audio/AudioService;)[I

    move-result-object v3

    iget v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v3, v3, v5

    const/4 v5, 0x3

    if-ne v3, v5, :cond_42

    .line 4595
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_42

    .line 4596
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    .line 4597
    .local v0, "device":I
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    .line 4598
    .local v2, "index":I
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v3, v3, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    and-int/2addr v3, v0

    if-nez v3, :cond_35

    .line 4599
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v3, v3, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v3, v0

    if-eqz v3, :cond_3c

    if-eqz v2, :cond_3c

    .line 4600
    :cond_35
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    iget v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    invoke-virtual {v3, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 4602
    :cond_3c
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_44

    .line 4595
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .end local v0    # "device":I
    .end local v1    # "i":I
    .end local v2    # "index":I
    :cond_42
    monitor-exit v4

    .line 4591
    return-void

    .line 4592
    :catchall_44
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getIndex(I)I
    .registers 7
    .param p1, "device"    # I

    .prologue
    const/4 v4, -0x1

    .line 4496
    const-class v2, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v2

    .line 4497
    :try_start_4
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    const/4 v3, -0x1

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 4498
    .local v0, "index":I
    if-ne v0, v4, :cond_15

    .line 4500
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v1, v3}, Landroid/util/SparseIntArray;->get(I)I
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_17

    move-result v0

    :cond_15
    monitor-exit v2

    .line 4502
    return v0

    .line 4496
    .end local v0    # "index":I
    :catchall_17
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getMaxIndex()I
    .registers 2

    .prologue
    .line 4513
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    return v0
.end method

.method public getMinIndex()I
    .registers 2

    .prologue
    .line 4527
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    return v0
.end method

.method public getSettingNameForDevice(I)Ljava/lang/String;
    .registers 6
    .param p1, "device"    # I

    .prologue
    .line 4305
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    .line 4306
    .local v0, "name":Ljava/lang/String;
    invoke-static {p1}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v1

    .line 4307
    .local v1, "suffix":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 4308
    return-object v0

    .line 4310
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getStreamType()I
    .registers 2

    .prologue
    .line 4588
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    return v0
.end method

.method public hasIndexForDevice(I)Z
    .registers 6
    .param p1, "device"    # I

    .prologue
    const/4 v3, -0x1

    .line 4507
    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v1

    .line 4508
    :try_start_4
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_12

    move-result v0

    if-eq v0, v3, :cond_10

    const/4 v0, 0x1

    :goto_e
    monitor-exit v1

    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_e

    .line 4507
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public mute(Z)V
    .registers 12
    .param p1, "state"    # Z

    .prologue
    .line 4561
    const/4 v7, 0x0

    .line 4562
    .local v7, "changed":Z
    const-class v9, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v9

    .line 4563
    :try_start_4
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    if-eq p1, v0, :cond_1b

    .line 4564
    const/4 v7, 0x1

    .line 4565
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    .line 4570
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get7(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v0

    .line 4571
    const/16 v1, 0xa

    .line 4572
    const/4 v2, 0x2

    .line 4573
    const/4 v3, 0x0

    .line 4574
    const/4 v4, 0x0

    .line 4575
    const/4 v6, 0x0

    move-object v5, p0

    .line 4570
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->-wrap36(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_3a

    :cond_1b
    monitor-exit v9

    .line 4578
    if-eqz v7, :cond_39

    .line 4580
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v0, "android.media.STREAM_MUTE_CHANGED_ACTION"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4581
    .local v8, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4582
    const-string/jumbo v0, "android.media.EXTRA_STREAM_VOLUME_MUTED"

    invoke-virtual {v8, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4583
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0, v8}, Lcom/android/server/audio/AudioService;->-wrap34(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V

    .line 4560
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_39
    return-void

    .line 4562
    :catchall_3a
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method public observeDevicesForStream_syncVSS(Z)I
    .registers 7
    .param p1, "checkOthers"    # Z

    .prologue
    .line 4284
    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v2}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v0

    .line 4285
    .local v0, "devices":I
    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDevices:I

    if-ne v0, v2, :cond_b

    .line 4286
    return v0

    .line 4288
    :cond_b
    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDevices:I

    .line 4289
    .local v1, "prevDevices":I
    iput v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDevices:I

    .line 4290
    if-eqz p1, :cond_18

    .line 4292
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->-wrap20(Lcom/android/server/audio/AudioService;I)V

    .line 4295
    :cond_18
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get41(Lcom/android/server/audio/AudioService;)[I

    move-result-object v2

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v2, v2, v3

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v2, v3, :cond_2b

    .line 4296
    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v2, v1, v0}, Lcom/android/server/EventLogTags;->writeStreamDevicesChanged(III)V

    .line 4298
    :cond_2b
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamDevicesChanged:Landroid/content/Intent;

    .line 4299
    const-string/jumbo v4, "android.media.EXTRA_PREV_VOLUME_STREAM_DEVICES"

    .line 4298
    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    .line 4300
    const-string/jumbo v4, "android.media.EXTRA_VOLUME_STREAM_DEVICES"

    .line 4298
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->-wrap34(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V

    .line 4301
    return v0
.end method

.method public readSettings()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/high16 v9, 0x40000000    # 2.0f

    .line 4314
    const-class v7, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v7

    .line 4316
    :try_start_6
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->-get43(Lcom/android/server/audio/AudioService;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 4317
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    iget v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    const/high16 v9, 0x40000000    # 2.0f

    invoke-virtual {v6, v9, v8}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_4c

    monitor-exit v7

    .line 4318
    return-void

    .line 4323
    :cond_19
    :try_start_19
    iget v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-eq v6, v10, :cond_22

    .line 4324
    iget v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v8, 0x7

    if-ne v6, v8, :cond_4f

    .line 4325
    :cond_22
    sget-object v6, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    iget v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v6, v6, v8

    mul-int/lit8 v3, v6, 0xa

    .line 4326
    .local v3, "index":I
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->-get13(Lcom/android/server/audio/AudioService;)Ljava/lang/Boolean;

    move-result-object v8

    monitor-enter v8
    :try_end_31
    .catchall {:try_start_19 .. :try_end_31} :catchall_4c

    .line 4327
    :try_start_31
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->-get13(Lcom/android/server/audio/AudioService;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 4328
    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I
    :try_end_3f
    .catchall {:try_start_31 .. :try_end_3f} :catchall_49

    :cond_3f
    :try_start_3f
    monitor-exit v8

    .line 4331
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    const/high16 v8, 0x40000000    # 2.0f

    invoke-virtual {v6, v8, v3}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_47
    .catchall {:try_start_3f .. :try_end_47} :catchall_4c

    monitor-exit v7

    .line 4332
    return-void

    .line 4326
    :catchall_49
    move-exception v6

    :try_start_4a
    monitor-exit v8

    throw v6
    :try_end_4c
    .catchall {:try_start_4a .. :try_end_4c} :catchall_4c

    .line 4314
    .end local v3    # "index":I
    :catchall_4c
    move-exception v6

    monitor-exit v7

    throw v6

    .line 4335
    :cond_4f
    const v5, 0x43ffffff    # 511.99997f

    .line 4337
    .local v5, "remainingDevices":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_53
    if-eqz v5, :cond_88

    .line 4338
    shl-int v1, v10, v2

    .line 4339
    .local v1, "device":I
    and-int v6, v1, v5

    if-nez v6, :cond_5e

    .line 4337
    :cond_5b
    :goto_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_53

    .line 4342
    :cond_5e
    not-int v6, v1

    and-int/2addr v5, v6

    .line 4345
    :try_start_60
    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getSettingNameForDevice(I)Ljava/lang/String;

    move-result-object v4

    .line 4348
    .local v4, "name":Ljava/lang/String;
    if-ne v1, v9, :cond_86

    .line 4349
    sget-object v6, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    iget v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v0, v6, v8

    .line 4351
    .local v0, "defaultIndex":I
    :goto_6c
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->-get16(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v8, -0x2

    .line 4350
    invoke-static {v6, v4, v0, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 4352
    .restart local v3    # "index":I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_5b

    .line 4356
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    mul-int/lit8 v8, v3, 0xa

    invoke-direct {p0, v8}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result v8

    invoke-virtual {v6, v1, v8}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_85
    .catchall {:try_start_60 .. :try_end_85} :catchall_4c

    goto :goto_5b

    .line 4349
    .end local v0    # "defaultIndex":I
    .end local v3    # "index":I
    :cond_86
    const/4 v0, -0x1

    .restart local v0    # "defaultIndex":I
    goto :goto_6c

    .end local v0    # "defaultIndex":I
    .end local v1    # "device":I
    .end local v4    # "name":Ljava/lang/String;
    :cond_88
    monitor-exit v7

    .line 4313
    return-void
.end method

.method public setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V
    .registers 11
    .param p1, "srcStream"    # Lcom/android/server/audio/AudioService$VolumeStreamState;
    .param p2, "caller"    # Ljava/lang/String;

    .prologue
    .line 4531
    const-class v6, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v6

    .line 4532
    :try_start_3
    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getStreamType()I

    move-result v4

    .line 4535
    .local v4, "srcStreamType":I
    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {p1, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    .line 4536
    .local v2, "index":I
    iget-object v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v5, v2, v4, v7}, Lcom/android/server/audio/AudioService;->-wrap6(Lcom/android/server/audio/AudioService;III)I

    move-result v2

    .line 4537
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    iget-object v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_2c

    .line 4538
    iget-object v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v5, v7, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 4537
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 4541
    :cond_2c
    iget-object v3, p1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    .line 4542
    .local v3, "srcMap":Landroid/util/SparseIntArray;
    const/4 v1, 0x0

    :goto_2f
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_4b

    .line 4543
    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    .line 4544
    .local v0, "device":I
    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    .line 4545
    iget-object v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v5, v2, v4, v7}, Lcom/android/server/audio/AudioService;->-wrap6(Lcom/android/server/audio/AudioService;III)I

    move-result v2

    .line 4547
    invoke-virtual {p0, v2, v0, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_4d

    .line 4542
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .end local v0    # "device":I
    :cond_4b
    monitor-exit v6

    .line 4530
    return-void

    .line 4531
    .end local v1    # "i":I
    .end local v2    # "index":I
    .end local v3    # "srcMap":Landroid/util/SparseIntArray;
    .end local v4    # "srcStreamType":I
    :catchall_4d
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public setAllIndexesToMax()V
    .registers 6

    .prologue
    .line 4553
    const-class v2, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v2

    .line 4554
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    :try_start_4
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 4555
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_1e

    .line 4554
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_1c
    monitor-exit v2

    .line 4552
    return-void

    .line 4553
    :catchall_1e
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setIndex(IILjava/lang/String;)Z
    .registers 15
    .param p1, "index"    # I
    .param p2, "device"    # I
    .param p3, "caller"    # Ljava/lang/String;

    .prologue
    .line 4440
    const/4 v1, 0x0

    .line 4442
    .local v1, "changed":Z
    const-class v8, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v8

    .line 4443
    :try_start_4
    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v4

    .line 4444
    .local v4, "oldIndex":I
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result p1

    .line 4445
    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v7}, Lcom/android/server/audio/AudioService;->-get13(Lcom/android/server/audio/AudioService;)Ljava/lang/Boolean;

    move-result-object v9

    monitor-enter v9
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_68

    .line 4446
    :try_start_13
    iget v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v10, 0x7

    if-ne v7, v10, :cond_26

    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v7}, Lcom/android/server/audio/AudioService;->-get13(Lcom/android/server/audio/AudioService;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_26

    .line 4447
    iget p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I
    :try_end_26
    .catchall {:try_start_13 .. :try_end_26} :catchall_65

    :cond_26
    :try_start_26
    monitor-exit v9

    .line 4450
    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v7, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 4452
    if-eq v4, p1, :cond_6b

    const/4 v1, 0x1

    .line 4458
    :goto_2f
    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v9, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v7, v9}, Lcom/android/server/audio/AudioService;->-wrap4(Lcom/android/server/audio/AudioService;I)I

    move-result v7

    if-ne p2, v7, :cond_6d

    const/4 v2, 0x1

    .line 4459
    .local v2, "currentDevice":Z
    :goto_3a
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v3

    .line 4460
    .local v3, "numStreamTypes":I
    add-int/lit8 v6, v3, -0x1

    .local v6, "streamType":I
    :goto_40
    if-ltz v6, :cond_86

    .line 4461
    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v7}, Lcom/android/server/audio/AudioService;->-get40(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v7

    aget-object v0, v7, v6

    .line 4462
    .local v0, "aliasStreamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    iget v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-eq v6, v7, :cond_62

    .line 4463
    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v7}, Lcom/android/server/audio/AudioService;->-get41(Lcom/android/server/audio/AudioService;)[I

    move-result-object v7

    aget v7, v7, v6

    iget v9, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v7, v9, :cond_62

    .line 4464
    if-nez v1, :cond_6f

    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->hasIndexForDevice(I)Z

    move-result v7

    if-eqz v7, :cond_6f

    .line 4460
    :cond_62
    :goto_62
    add-int/lit8 v6, v6, -0x1

    goto :goto_40

    .line 4445
    .end local v0    # "aliasStreamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .end local v2    # "currentDevice":Z
    .end local v3    # "numStreamTypes":I
    .end local v6    # "streamType":I
    :catchall_65
    move-exception v7

    monitor-exit v9

    throw v7
    :try_end_68
    .catchall {:try_start_26 .. :try_end_68} :catchall_68

    .line 4442
    .end local v4    # "oldIndex":I
    :catchall_68
    move-exception v7

    monitor-exit v8

    throw v7

    .line 4452
    .restart local v4    # "oldIndex":I
    :cond_6b
    const/4 v1, 0x0

    goto :goto_2f

    .line 4458
    :cond_6d
    const/4 v2, 0x0

    .restart local v2    # "currentDevice":Z
    goto :goto_3a

    .line 4465
    .restart local v0    # "aliasStreamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .restart local v3    # "numStreamTypes":I
    .restart local v6    # "streamType":I
    :cond_6f
    :try_start_6f
    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v9, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v7, p1, v9, v6}, Lcom/android/server/audio/AudioService;->-wrap6(Lcom/android/server/audio/AudioService;III)I

    move-result v5

    .line 4466
    .local v5, "scaledIndex":I
    invoke-virtual {v0, v5, p2, p3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    .line 4467
    if-eqz v2, :cond_62

    .line 4469
    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v7, v6}, Lcom/android/server/audio/AudioService;->-wrap4(Lcom/android/server/audio/AudioService;I)I

    move-result v7

    .line 4468
    invoke-virtual {v0, v5, v7, p3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z
    :try_end_85
    .catchall {:try_start_6f .. :try_end_85} :catchall_68

    goto :goto_62

    .end local v0    # "aliasStreamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .end local v5    # "scaledIndex":I
    :cond_86
    monitor-exit v8

    .line 4474
    if-eqz v1, :cond_e1

    .line 4475
    add-int/lit8 v7, v4, 0x5

    div-int/lit8 v4, v7, 0xa

    .line 4476
    add-int/lit8 v7, p1, 0x5

    div-int/lit8 p1, v7, 0xa

    .line 4478
    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v7}, Lcom/android/server/audio/AudioService;->-get41(Lcom/android/server/audio/AudioService;)[I

    move-result-object v7

    iget v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v7, v7, v8

    iget v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v7, v8, :cond_b8

    .line 4479
    if-nez p3, :cond_af

    .line 4480
    const-string/jumbo v7, "AudioService"

    const-string/jumbo v8, "No caller for volume_changed event"

    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v7, v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4482
    :cond_af
    iget v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    iget v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    div-int/lit8 v8, v8, 0xa

    invoke-static {v7, v4, p1, v8, p3}, Lcom/android/server/EventLogTags;->writeVolumeChanged(IIIILjava/lang/String;)V

    .line 4486
    :cond_b8
    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    const-string/jumbo v8, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {v7, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4487
    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    const-string/jumbo v8, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    invoke-virtual {v7, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4488
    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    const-string/jumbo v8, "android.media.EXTRA_VOLUME_STREAM_TYPE_ALIAS"

    .line 4489
    iget-object v9, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v9}, Lcom/android/server/audio/AudioService;->-get41(Lcom/android/server/audio/AudioService;)[I

    move-result-object v9

    iget v10, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v9, v9, v10

    .line 4488
    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4490
    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    invoke-static {v7, v8}, Lcom/android/server/audio/AudioService;->-wrap34(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V

    .line 4492
    :cond_e1
    return v1
.end method

.method public setMaxIndex(I)V
    .registers 6
    .param p1, "maxVol"    # I

    .prologue
    .line 4517
    iput p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    .line 4518
    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/media/AudioSystem;->initStreamVolume(III)I

    .line 4519
    iput p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    .line 4520
    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    mul-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    .line 4522
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.VOLUME_STEPS_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4523
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1, v0}, Lcom/android/server/audio/AudioService;->-wrap34(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V

    .line 4516
    return-void
.end method
