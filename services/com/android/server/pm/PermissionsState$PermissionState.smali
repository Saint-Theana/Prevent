.class public final Lcom/android/server/pm/PermissionsState$PermissionState;
.super Ljava/lang/Object;
.source "PermissionsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PermissionsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PermissionState"
.end annotation


# instance fields
.field private mFlags:I

.field private mGranted:Z

.field private final mName:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/server/pm/PermissionsState$PermissionState;)I
    .registers 2

    iget v0, p0, Lcom/android/server/pm/PermissionsState$PermissionState;->mFlags:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/pm/PermissionsState$PermissionState;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/pm/PermissionsState$PermissionState;->mGranted:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/pm/PermissionsState$PermissionState;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/pm/PermissionsState$PermissionState;->mFlags:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/pm/PermissionsState$PermissionState;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/pm/PermissionsState$PermissionState;->mGranted:Z

    return p1
.end method

.method public constructor <init>(Lcom/android/server/pm/PermissionsState$PermissionState;)V
    .registers 3
    .param p1, "other"    # Lcom/android/server/pm/PermissionsState$PermissionState;

    .prologue
    .line 748
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 749
    iget-object v0, p1, Lcom/android/server/pm/PermissionsState$PermissionState;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PermissionsState$PermissionState;->mName:Ljava/lang/String;

    .line 750
    iget-boolean v0, p1, Lcom/android/server/pm/PermissionsState$PermissionState;->mGranted:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PermissionsState$PermissionState;->mGranted:Z

    .line 751
    iget v0, p1, Lcom/android/server/pm/PermissionsState$PermissionState;->mFlags:I

    iput v0, p0, Lcom/android/server/pm/PermissionsState$PermissionState;->mFlags:I

    .line 748
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 744
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 745
    iput-object p1, p0, Lcom/android/server/pm/PermissionsState$PermissionState;->mName:Ljava/lang/String;

    .line 744
    return-void
.end method


# virtual methods
.method public getFlags()I
    .registers 2

    .prologue
    .line 767
    iget v0, p0, Lcom/android/server/pm/PermissionsState$PermissionState;->mFlags:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 759
    iget-object v0, p0, Lcom/android/server/pm/PermissionsState$PermissionState;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public isDefault()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 755
    iget-boolean v1, p0, Lcom/android/server/pm/PermissionsState$PermissionState;->mGranted:Z

    if-nez v1, :cond_a

    iget v1, p0, Lcom/android/server/pm/PermissionsState$PermissionState;->mFlags:I

    if-nez v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public isGranted()Z
    .registers 2

    .prologue
    .line 763
    iget-boolean v0, p0, Lcom/android/server/pm/PermissionsState$PermissionState;->mGranted:Z

    return v0
.end method
