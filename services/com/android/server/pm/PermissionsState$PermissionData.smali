.class final Lcom/android/server/pm/PermissionsState$PermissionData;
.super Ljava/lang/Object;
.source "PermissionsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PermissionsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PermissionData"
.end annotation


# instance fields
.field private final mPerm:Lcom/android/server/pm/BasePermission;

.field private mUserStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/pm/PermissionsState$PermissionState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/pm/BasePermission;)V
    .registers 3
    .param p1, "perm"    # Lcom/android/server/pm/BasePermission;

    .prologue
    .line 610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 608
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    .line 611
    iput-object p1, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mPerm:Lcom/android/server/pm/BasePermission;

    .line 610
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PermissionsState$PermissionData;)V
    .registers 8
    .param p1, "other"    # Lcom/android/server/pm/PermissionsState$PermissionData;

    .prologue
    .line 615
    iget-object v4, p1, Lcom/android/server/pm/PermissionsState$PermissionData;->mPerm:Lcom/android/server/pm/BasePermission;

    invoke-direct {p0, v4}, Lcom/android/server/pm/PermissionsState$PermissionData;-><init>(Lcom/android/server/pm/BasePermission;)V

    .line 616
    iget-object v4, p1, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 617
    .local v2, "otherStateCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    if-ge v0, v2, :cond_29

    .line 618
    iget-object v4, p1, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 619
    .local v3, "otherUserId":I
    iget-object v4, p1, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PermissionsState$PermissionState;

    .line 620
    .local v1, "otherState":Lcom/android/server/pm/PermissionsState$PermissionState;
    iget-object v4, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    new-instance v5, Lcom/android/server/pm/PermissionsState$PermissionState;

    invoke-direct {v5, v1}, Lcom/android/server/pm/PermissionsState$PermissionState;-><init>(Lcom/android/server/pm/PermissionsState$PermissionState;)V

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 617
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 614
    .end local v1    # "otherState":Lcom/android/server/pm/PermissionsState$PermissionState;
    .end local v3    # "otherUserId":I
    :cond_29
    return-void
.end method

.method private isCompatibleUserId(I)Z
    .registers 5
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x1

    .line 730
    invoke-virtual {p0}, Lcom/android/server/pm/PermissionsState$PermissionData;->isDefault()Z

    move-result v1

    if-nez v1, :cond_13

    invoke-direct {p0}, Lcom/android/server/pm/PermissionsState$PermissionData;->isInstallPermission()Z

    move-result v1

    invoke-static {p1}, Lcom/android/server/pm/PermissionsState$PermissionData;->isInstallPermissionKey(I)Z

    move-result v2

    xor-int/2addr v1, v2

    if-eqz v1, :cond_13

    const/4 v0, 0x0

    :cond_13
    return v0
.end method

.method private isInstallPermission()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 734
    iget-object v2, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ne v2, v0, :cond_16

    .line 735
    iget-object v2, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 734
    :goto_13
    return v0

    :cond_14
    move v0, v1

    .line 735
    goto :goto_13

    :cond_16
    move v0, v1

    .line 734
    goto :goto_13
.end method

.method public static isInstallPermissionKey(I)Z
    .registers 2
    .param p0, "userId"    # I

    .prologue
    .line 697
    const/4 v0, -0x1

    if-ne p0, v0, :cond_5

    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method


# virtual methods
.method public computeGids(I)[I
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mPerm:Lcom/android/server/pm/BasePermission;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/BasePermission;->computeGids(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getFlags(I)I
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 685
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PermissionsState$PermissionState;

    .line 686
    .local v0, "userState":Lcom/android/server/pm/PermissionsState$PermissionState;
    if-eqz v0, :cond_f

    .line 687
    invoke-static {v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->-get0(Lcom/android/server/pm/PermissionsState$PermissionState;)I

    move-result v1

    return v1

    .line 689
    :cond_f
    const/4 v1, 0x0

    return v1
.end method

.method public getPermissionState(I)Lcom/android/server/pm/PermissionsState$PermissionState;
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 681
    iget-object v0, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PermissionsState$PermissionState;

    return-object v0
.end method

.method public grant(I)Z
    .registers 6
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 642
    invoke-direct {p0, p1}, Lcom/android/server/pm/PermissionsState$PermissionData;->isCompatibleUserId(I)Z

    move-result v1

    if-nez v1, :cond_9

    .line 643
    return v2

    .line 646
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PermissionsState$PermissionData;->isGranted(I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 647
    return v2

    .line 650
    :cond_10
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PermissionsState$PermissionState;

    .line 651
    .local v0, "userState":Lcom/android/server/pm/PermissionsState$PermissionState;
    if-nez v0, :cond_28

    .line 652
    new-instance v0, Lcom/android/server/pm/PermissionsState$PermissionState;

    .end local v0    # "userState":Lcom/android/server/pm/PermissionsState$PermissionState;
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mPerm:Lcom/android/server/pm/BasePermission;

    iget-object v1, v1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/server/pm/PermissionsState$PermissionState;-><init>(Ljava/lang/String;)V

    .line 653
    .restart local v0    # "userState":Lcom/android/server/pm/PermissionsState$PermissionState;
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 656
    :cond_28
    invoke-static {v0, v3}, Lcom/android/server/pm/PermissionsState$PermissionState;->-set1(Lcom/android/server/pm/PermissionsState$PermissionState;Z)Z

    .line 658
    return v3
.end method

.method public isDefault()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 693
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-gtz v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public isGranted(I)Z
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 629
    invoke-direct {p0}, Lcom/android/server/pm/PermissionsState$PermissionData;->isInstallPermission()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 630
    const/4 p1, -0x1

    .line 633
    :cond_7
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PermissionsState$PermissionState;

    .line 634
    .local v0, "userState":Lcom/android/server/pm/PermissionsState$PermissionState;
    if-nez v0, :cond_13

    .line 635
    const/4 v1, 0x0

    return v1

    .line 638
    :cond_13
    invoke-static {v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->-get1(Lcom/android/server/pm/PermissionsState$PermissionState;)Z

    move-result v1

    return v1
.end method

.method public revoke(I)Z
    .registers 5
    .param p1, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 662
    invoke-direct {p0, p1}, Lcom/android/server/pm/PermissionsState$PermissionData;->isCompatibleUserId(I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 663
    return v2

    .line 666
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PermissionsState$PermissionData;->isGranted(I)Z

    move-result v1

    if-nez v1, :cond_f

    .line 667
    return v2

    .line 670
    :cond_f
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PermissionsState$PermissionState;

    .line 671
    .local v0, "userState":Lcom/android/server/pm/PermissionsState$PermissionState;
    invoke-static {v0, v2}, Lcom/android/server/pm/PermissionsState$PermissionState;->-set1(Lcom/android/server/pm/PermissionsState$PermissionState;Z)Z

    .line 673
    invoke-virtual {v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 674
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 677
    :cond_25
    const/4 v1, 0x1

    return v1
.end method

.method public updateFlags(III)Z
    .registers 11
    .param p1, "userId"    # I
    .param p2, "flagMask"    # I
    .param p3, "flagValues"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 701
    invoke-direct {p0}, Lcom/android/server/pm/PermissionsState$PermissionData;->isInstallPermission()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 702
    const/4 p1, -0x1

    .line 705
    :cond_9
    invoke-direct {p0, p1}, Lcom/android/server/pm/PermissionsState$PermissionData;->isCompatibleUserId(I)Z

    move-result v5

    if-nez v5, :cond_10

    .line 706
    return v4

    .line 709
    :cond_10
    and-int v0, p3, p2

    .line 711
    .local v0, "newFlags":I
    iget-object v5, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PermissionsState$PermissionState;

    .line 712
    .local v2, "userState":Lcom/android/server/pm/PermissionsState$PermissionState;
    if-eqz v2, :cond_3e

    .line 713
    invoke-static {v2}, Lcom/android/server/pm/PermissionsState$PermissionState;->-get0(Lcom/android/server/pm/PermissionsState$PermissionState;)I

    move-result v1

    .line 714
    .local v1, "oldFlags":I
    invoke-static {v2}, Lcom/android/server/pm/PermissionsState$PermissionState;->-get0(Lcom/android/server/pm/PermissionsState$PermissionState;)I

    move-result v5

    not-int v6, p2

    and-int/2addr v5, v6

    or-int/2addr v5, v0

    invoke-static {v2, v5}, Lcom/android/server/pm/PermissionsState$PermissionState;->-set0(Lcom/android/server/pm/PermissionsState$PermissionState;I)I

    .line 715
    invoke-virtual {v2}, Lcom/android/server/pm/PermissionsState$PermissionState;->isDefault()Z

    move-result v5

    if-eqz v5, :cond_35

    .line 716
    iget-object v5, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 718
    :cond_35
    invoke-static {v2}, Lcom/android/server/pm/PermissionsState$PermissionState;->-get0(Lcom/android/server/pm/PermissionsState$PermissionState;)I

    move-result v5

    if-eq v5, v1, :cond_3c

    :goto_3b
    return v3

    :cond_3c
    move v3, v4

    goto :goto_3b

    .line 719
    .end local v1    # "oldFlags":I
    :cond_3e
    if-eqz v0, :cond_52

    .line 720
    new-instance v2, Lcom/android/server/pm/PermissionsState$PermissionState;

    .end local v2    # "userState":Lcom/android/server/pm/PermissionsState$PermissionState;
    iget-object v4, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mPerm:Lcom/android/server/pm/BasePermission;

    iget-object v4, v4, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-direct {v2, v4}, Lcom/android/server/pm/PermissionsState$PermissionState;-><init>(Ljava/lang/String;)V

    .line 721
    .restart local v2    # "userState":Lcom/android/server/pm/PermissionsState$PermissionState;
    invoke-static {v2, v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->-set0(Lcom/android/server/pm/PermissionsState$PermissionState;I)I

    .line 722
    iget-object v4, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 723
    return v3

    .line 726
    :cond_52
    return v4
.end method
