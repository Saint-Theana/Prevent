.class public final Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;
.super Ljava/lang/Object;
.source "PermissionDialogReqQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PermissionDialogReqQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PermissionDialogReq"
.end annotation


# instance fields
.field mHasResult:Z

.field mResult:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;->mHasResult:Z

    .line 34
    return-void
.end method


# virtual methods
.method public get()I
    .registers 3

    .prologue
    .line 44
    monitor-enter p0

    .line 45
    :goto_1
    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;->mHasResult:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-nez v1, :cond_b

    .line 47
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_f

    goto :goto_1

    .line 48
    :catch_9
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_b
    monitor-exit p0

    .line 52
    iget v1, p0, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;->mResult:I

    return v1

    .line 44
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public set(I)V
    .registers 3
    .param p1, "res"    # I

    .prologue
    .line 36
    monitor-enter p0

    .line 37
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;->mHasResult:Z

    .line 38
    iput p1, p0, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;->mResult:I

    .line 39
    invoke-virtual {p0}, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;->notifyAll()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    monitor-exit p0

    .line 35
    return-void

    .line 36
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
