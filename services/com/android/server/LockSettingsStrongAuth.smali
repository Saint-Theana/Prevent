.class public Lcom/android/server/LockSettingsStrongAuth;
.super Ljava/lang/Object;
.source "LockSettingsStrongAuth.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LockSettingsStrongAuth$1;
    }
.end annotation


# static fields
.field private static final MSG_REGISTER_TRACKER:I = 0x2

.field private static final MSG_REMOVE_USER:I = 0x4

.field private static final MSG_REQUIRE_STRONG_AUTH:I = 0x1

.field private static final MSG_UNREGISTER_TRACKER:I = 0x3

.field private static final TAG:Ljava/lang/String; = "LockSettings"


# instance fields
.field private final mDefaultStrongAuthFlags:I

.field private final mHandler:Landroid/os/Handler;

.field private final mStrongAuthForUser:Landroid/util/SparseIntArray;

.field private final mStrongAuthTrackers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/trust/IStrongAuthTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/android/server/LockSettingsStrongAuth;Landroid/app/trust/IStrongAuthTracker;)V
    .registers 2
    .param p1, "tracker"    # Landroid/app/trust/IStrongAuthTracker;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsStrongAuth;->handleAddStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/LockSettingsStrongAuth;Landroid/app/trust/IStrongAuthTracker;)V
    .registers 2
    .param p1, "tracker"    # Landroid/app/trust/IStrongAuthTracker;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsStrongAuth;->handleRemoveStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/LockSettingsStrongAuth;I)V
    .registers 2
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsStrongAuth;->handleRemoveUser(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/LockSettingsStrongAuth;II)V
    .registers 3
    .param p1, "strongAuthReason"    # I
    .param p2, "userId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsStrongAuth;->handleRequireStrongAuth(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthTrackers:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    .line 154
    new-instance v0, Lcom/android/server/LockSettingsStrongAuth$1;

    invoke-direct {v0, p0}, Lcom/android/server/LockSettingsStrongAuth$1;-><init>(Lcom/android/server/LockSettingsStrongAuth;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    .line 53
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getDefaultFlags(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/server/LockSettingsStrongAuth;->mDefaultStrongAuthFlags:I

    .line 52
    return-void
.end method

.method private handleAddStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .registers 8
    .param p1, "tracker"    # Landroid/app/trust/IStrongAuthTracker;

    .prologue
    .line 57
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthTrackers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1f

    .line 58
    iget-object v4, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthTrackers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/trust/IStrongAuthTracker;

    invoke-interface {v4}, Landroid/app/trust/IStrongAuthTracker;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {p1}, Landroid/app/trust/IStrongAuthTracker;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v4, v5, :cond_1c

    .line 59
    return-void

    .line 57
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 62
    :cond_1f
    iget-object v4, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthTrackers:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    const/4 v1, 0x0

    :goto_25
    iget-object v4, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_4a

    .line 65
    iget-object v4, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 66
    .local v2, "key":I
    iget-object v4, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    .line 68
    .local v3, "value":I
    :try_start_39
    invoke-interface {p1, v3, v2}, Landroid/app/trust/IStrongAuthTracker;->onStrongAuthRequiredChanged(II)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_3c} :catch_3f

    .line 64
    :goto_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 69
    :catch_3f
    move-exception v0

    .line 70
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "LockSettings"

    const-string/jumbo v5, "Exception while adding StrongAuthTracker."

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3c

    .line 56
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "key":I
    .end local v3    # "value":I
    :cond_4a
    return-void
.end method

.method private handleRemoveStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .registers 5
    .param p1, "tracker"    # Landroid/app/trust/IStrongAuthTracker;

    .prologue
    .line 76
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthTrackers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 77
    iget-object v1, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthTrackers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/trust/IStrongAuthTracker;

    invoke-interface {v1}, Landroid/app/trust/IStrongAuthTracker;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/app/trust/IStrongAuthTracker;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_21

    .line 78
    iget-object v1, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthTrackers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 79
    return-void

    .line 76
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 75
    :cond_24
    return-void
.end method

.method private handleRemoveUser(I)V
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 107
    iget-object v1, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 108
    .local v0, "index":I
    if-ltz v0, :cond_12

    .line 109
    iget-object v1, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 110
    iget v1, p0, Lcom/android/server/LockSettingsStrongAuth;->mDefaultStrongAuthFlags:I

    invoke-direct {p0, v1, p1}, Lcom/android/server/LockSettingsStrongAuth;->notifyStrongAuthTrackers(II)V

    .line 106
    :cond_12
    return-void
.end method

.method private handleRequireStrongAuth(II)V
    .registers 6
    .param p1, "strongAuthReason"    # I
    .param p2, "userId"    # I

    .prologue
    .line 85
    const/4 v2, -0x1

    if-ne p2, v2, :cond_18

    .line 86
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v2, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1b

    .line 87
    iget-object v2, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 88
    .local v1, "key":I
    invoke-direct {p0, p1, v1}, Lcom/android/server/LockSettingsStrongAuth;->handleRequireStrongAuthOneUser(II)V

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 91
    .end local v0    # "i":I
    .end local v1    # "key":I
    :cond_18
    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsStrongAuth;->handleRequireStrongAuthOneUser(II)V

    .line 84
    :cond_1b
    return-void
.end method

.method private handleRequireStrongAuthOneUser(II)V
    .registers 7
    .param p1, "strongAuthReason"    # I
    .param p2, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 96
    iget-object v2, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    iget v3, p0, Lcom/android/server/LockSettingsStrongAuth;->mDefaultStrongAuthFlags:I

    invoke-virtual {v2, p2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 97
    .local v1, "oldValue":I
    if-nez p1, :cond_16

    .line 100
    .local v0, "newValue":I
    :goto_b
    if-eq v1, v0, :cond_15

    .line 101
    iget-object v2, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 102
    invoke-direct {p0, v0, p2}, Lcom/android/server/LockSettingsStrongAuth;->notifyStrongAuthTrackers(II)V

    .line 95
    :cond_15
    return-void

    .line 99
    .end local v0    # "newValue":I
    :cond_16
    or-int v0, v1, p1

    goto :goto_b
.end method

.method private notifyStrongAuthTrackers(II)V
    .registers 8
    .param p1, "strongAuthReason"    # I
    .param p2, "userId"    # I

    .prologue
    .line 115
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthTrackers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_34

    .line 117
    :try_start_9
    iget-object v3, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthTrackers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/trust/IStrongAuthTracker;

    invoke-interface {v3, p1, p2}, Landroid/app/trust/IStrongAuthTracker;->onStrongAuthRequiredChanged(II)V
    :try_end_14
    .catch Landroid/os/DeadObjectException; {:try_start_9 .. :try_end_14} :catch_22
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_17

    .line 115
    :goto_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 122
    :catch_17
    move-exception v1

    .line 123
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "LockSettings"

    const-string/jumbo v4, "Exception while notifying StrongAuthTracker."

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14

    .line 118
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_22
    move-exception v0

    .line 119
    .local v0, "e":Landroid/os/DeadObjectException;
    const-string/jumbo v3, "LockSettings"

    const-string/jumbo v4, "Removing dead StrongAuthTracker."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v3, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthTrackers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 121
    add-int/lit8 v2, v2, -0x1

    goto :goto_14

    .line 114
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :cond_34
    return-void
.end method


# virtual methods
.method public registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .registers 4
    .param p1, "tracker"    # Landroid/app/trust/IStrongAuthTracker;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/server/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 128
    return-void
.end method

.method public removeUser(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/server/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 136
    return-void
.end method

.method public reportUnlock(I)V
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/LockSettingsStrongAuth;->requireStrongAuth(II)V

    .line 150
    return-void
.end method

.method public requireStrongAuth(II)V
    .registers 5
    .param p1, "strongAuthReason"    # I
    .param p2, "userId"    # I

    .prologue
    .line 141
    const/4 v0, -0x1

    if-eq p2, v0, :cond_5

    if-ltz p2, :cond_10

    .line 142
    :cond_5
    iget-object v0, p0, Lcom/android/server/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 140
    return-void

    .line 145
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 146
    const-string/jumbo v1, "userId must be an explicit user id or USER_ALL"

    .line 145
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .registers 4
    .param p1, "tracker"    # Landroid/app/trust/IStrongAuthTracker;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/server/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 132
    return-void
.end method
