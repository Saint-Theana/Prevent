.class public final Lcom/android/server/power/QCNsrmPowerExtension;
.super Ljava/lang/Object;
.source "QCNsrmPowerExtension.java"


# static fields
.field static final TAG:Ljava/lang/String; = "QCNsrmPowerExtn"

.field static final localLOGV:Z


# instance fields
.field private final mPmsBlockedUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private pmHandle:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .registers 3
    .param p1, "handle"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/QCNsrmPowerExtension;->mPmsBlockedUids:Ljava/util/ArrayList;

    .line 48
    iput-object p1, p0, Lcom/android/server/power/QCNsrmPowerExtension;->pmHandle:Lcom/android/server/power/PowerManagerService;

    .line 47
    return-void
.end method

.method private checkWorkSourceObjectId(ILcom/android/server/power/PowerManagerService$WakeLock;)Z
    .registers 7
    .param p1, "uid"    # I
    .param p2, "wl"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .prologue
    const/4 v3, 0x0

    .line 70
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_2
    :try_start_2
    iget-object v2, p2, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2}, Landroid/os/WorkSource;->size()I

    move-result v2

    if-ge v1, v2, :cond_19

    .line 71
    iget-object v2, p2, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v1}, Landroid/os/WorkSource;->get(I)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_17

    move-result v2

    if-ne p1, v2, :cond_14

    .line 73
    const/4 v2, 0x1

    return v2

    .line 70
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 77
    :catch_17
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    return v3

    .line 80
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_19
    return v3
.end method

.method private updatePmsBlockedUids(IZ)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "isBlocked"    # Z

    .prologue
    .line 125
    if-eqz p2, :cond_d

    .line 128
    iget-object v0, p0, Lcom/android/server/power/QCNsrmPowerExtension;->mPmsBlockedUids:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    :goto_c
    return-void

    .line 132
    :cond_d
    iget-object v0, p0, Lcom/android/server/power/QCNsrmPowerExtension;->mPmsBlockedUids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_c
.end method

.method private updatePmsBlockedWakelock(Lcom/android/server/power/PowerManagerService$WakeLock;Z)Z
    .registers 6
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;
    .param p2, "update"    # Z

    .prologue
    const/4 v2, 0x1

    .line 139
    if-eqz p1, :cond_25

    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    .line 140
    const v1, 0xffff

    .line 139
    and-int/2addr v0, v1

    if-ne v0, v2, :cond_25

    .line 142
    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eq v0, p2, :cond_25

    iget-object v0, p0, Lcom/android/server/power/QCNsrmPowerExtension;->pmHandle:Lcom/android/server/power/PowerManagerService;

    if-eqz v0, :cond_25

    .line 143
    iput-boolean p2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    .line 145
    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eqz v0, :cond_1f

    .line 147
    iget-object v0, p0, Lcom/android/server/power/QCNsrmPowerExtension;->pmHandle:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 151
    :goto_1e
    return v2

    .line 149
    :cond_1f
    iget-object v0, p0, Lcom/android/server/power/QCNsrmPowerExtension;->pmHandle:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    goto :goto_1e

    .line 157
    :cond_25
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected checkPmsBlockedWakelocks(IIILjava/lang/String;Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "flags"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "pMwakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/power/QCNsrmPowerExtension;->mPmsBlockedUids:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-eq p1, v0, :cond_17

    .line 62
    const/4 v0, 0x1

    invoke-direct {p0, p5, v0}, Lcom/android/server/power/QCNsrmPowerExtension;->updatePmsBlockedWakelock(Lcom/android/server/power/PowerManagerService$WakeLock;Z)Z

    .line 54
    :cond_17
    return-void
.end method

.method protected processPmsBlockedUid(IZLjava/util/ArrayList;)Z
    .registers 9
    .param p1, "uid"    # I
    .param p2, "isBlocked"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/PowerManagerService$WakeLock;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 87
    .local p3, "mWakeLocks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/power/PowerManagerService$WakeLock;>;"
    const/4 v0, 0x0

    .line 88
    .local v0, "changed":Z
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/QCNsrmPowerExtension;->updatePmsBlockedUidAllowed(IZ)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 89
    return v0

    .line 91
    :cond_8
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_9
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3c

    .line 92
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 93
    .local v2, "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    if-eqz v2, :cond_39

    .line 95
    iget v3, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    if-eq v3, p1, :cond_32

    invoke-direct {p0, p1, v2}, Lcom/android/server/power/QCNsrmPowerExtension;->checkWorkSourceObjectId(ILcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v3

    if-nez v3, :cond_32

    .line 96
    iget-object v3, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    const-string/jumbo v4, "*sync*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_39

    iget v3, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    .line 97
    const/16 v4, 0x3e8

    .line 96
    if-ne v3, v4, :cond_39

    .line 98
    :cond_32
    invoke-direct {p0, v2, p2}, Lcom/android/server/power/QCNsrmPowerExtension;->updatePmsBlockedWakelock(Lcom/android/server/power/PowerManagerService$WakeLock;Z)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 99
    const/4 v0, 0x1

    .line 91
    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 104
    .end local v2    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_3c
    if-eqz v0, :cond_4b

    .line 105
    iget-object v3, p0, Lcom/android/server/power/QCNsrmPowerExtension;->pmHandle:Lcom/android/server/power/PowerManagerService;

    iget v4, v3, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 106
    iget-object v3, p0, Lcom/android/server/power/QCNsrmPowerExtension;->pmHandle:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v3}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 108
    :cond_4b
    return v0
.end method

.method protected updatePmsBlockedUidAllowed(IZ)Z
    .registers 5
    .param p1, "uid"    # I
    .param p2, "isBlocked"    # Z

    .prologue
    .line 116
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_a

    .line 118
    const/4 v0, 0x1

    return v0

    .line 120
    :cond_a
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/QCNsrmPowerExtension;->updatePmsBlockedUids(IZ)V

    .line 121
    const/4 v0, 0x0

    return v0
.end method
