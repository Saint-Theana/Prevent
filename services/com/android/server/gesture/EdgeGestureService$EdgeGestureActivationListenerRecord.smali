.class final Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
.super Landroid/service/gesture/IEdgeGestureHostCallback$Stub;
.source "EdgeGestureService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/gesture/EdgeGestureService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EdgeGestureActivationListenerRecord"
.end annotation


# instance fields
.field public final listener:Landroid/service/gesture/IEdgeGestureActivationListener;

.field public longLiving:Z

.field private mActive:Z

.field public positions:I

.field public sensitivity:I

.field final synthetic this$0:Lcom/android/server/gesture/EdgeGestureService;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;I)Z
    .registers 3
    .param p1, "positionFlag"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->eligibleForActivation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;IILcom/android/internal/util/gesture/EdgeGesturePosition;)Z
    .registers 5
    .param p1, "touchX"    # I
    .param p2, "touchY"    # I
    .param p3, "position"    # Lcom/android/internal/util/gesture/EdgeGesturePosition;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->notifyEdgeGestureActivation(IILcom/android/internal/util/gesture/EdgeGesturePosition;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;I)V
    .registers 2
    .param p1, "flags"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->updateFlags(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/gesture/EdgeGestureService;Landroid/service/gesture/IEdgeGestureActivationListener;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/gesture/EdgeGestureService;
    .param p2, "listener"    # Landroid/service/gesture/IEdgeGestureActivationListener;

    .prologue
    const/4 v0, 0x0

    .line 86
    iput-object p1, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->this$0:Lcom/android/server/gesture/EdgeGestureService;

    invoke-direct {p0}, Landroid/service/gesture/IEdgeGestureHostCallback$Stub;-><init>()V

    .line 170
    iput-boolean v0, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->longLiving:Z

    .line 87
    iput-object p2, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->listener:Landroid/service/gesture/IEdgeGestureActivationListener;

    .line 88
    iput v0, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->positions:I

    .line 86
    return-void
.end method

.method private eligibleForActivation(I)Z
    .registers 4
    .param p1, "positionFlag"    # I

    .prologue
    const/4 v0, 0x0

    .line 102
    iget v1, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->positions:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    :cond_7
    return v0
.end method

.method private notifyEdgeGestureActivation(IILcom/android/internal/util/gesture/EdgeGesturePosition;)Z
    .registers 9
    .param p1, "touchX"    # I
    .param p2, "touchY"    # I
    .param p3, "position"    # Lcom/android/internal/util/gesture/EdgeGesturePosition;

    .prologue
    const/4 v4, 0x0

    .line 106
    iget v1, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->positions:I

    iget v2, p3, Lcom/android/internal/util/gesture/EdgeGesturePosition;->FLAG:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_13

    .line 108
    const/4 v1, 0x1

    :try_start_9
    iput-boolean v1, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->mActive:Z

    .line 109
    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->listener:Landroid/service/gesture/IEdgeGestureActivationListener;

    iget v2, p3, Lcom/android/internal/util/gesture/EdgeGesturePosition;->INDEX:I

    const/4 v3, 0x0

    invoke-interface {v1, p1, p2, v2, v3}, Landroid/service/gesture/IEdgeGestureActivationListener;->onEdgeGestureActivation(IIII)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_13} :catch_16

    .line 116
    :cond_13
    :goto_13
    iget-boolean v1, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->mActive:Z

    return v1

    .line 110
    :catch_16
    move-exception v0

    .line 111
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "EdgeGestureService"

    const-string/jumbo v2, "Failed to notify process, assuming it died."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    iput-boolean v4, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->mActive:Z

    .line 113
    invoke-virtual {p0}, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->binderDied()V

    goto :goto_13
.end method

.method private updateFlags(I)V
    .registers 4
    .param p1, "flags"    # I

    .prologue
    const/4 v0, 0x0

    .line 96
    and-int/lit8 v1, p1, 0x1f

    iput v1, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->positions:I

    .line 97
    const/high16 v1, 0x70000000

    and-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0x1c

    iput v1, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->sensitivity:I

    .line 98
    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    iput-boolean v0, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->longLiving:Z

    .line 95
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->this$0:Lcom/android/server/gesture/EdgeGestureService;

    invoke-static {v0, p0}, Lcom/android/server/gesture/EdgeGestureService;->-wrap1(Lcom/android/server/gesture/EdgeGestureService;Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;)V

    .line 91
    return-void
.end method

.method public dropEventsUntilLift()Z
    .registers 2

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->mActive:Z

    if-eqz v0, :cond_f

    .line 135
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->this$0:Lcom/android/server/gesture/EdgeGestureService;

    invoke-static {v0}, Lcom/android/server/gesture/EdgeGestureService;->-get3(Lcom/android/server/gesture/EdgeGestureService;)Lcom/android/server/gesture/EdgeGestureInputFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/gesture/EdgeGestureInputFilter;->dropSequence()Z

    move-result v0

    return v0

    .line 137
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 160
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPositions=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->positions:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->mActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBinder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->listener:Landroid/service/gesture/IEdgeGestureActivationListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public gainTouchFocus(Landroid/os/IBinder;)Z
    .registers 3
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->mActive:Z

    if-eqz v0, :cond_f

    .line 125
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->this$0:Lcom/android/server/gesture/EdgeGestureService;

    invoke-static {v0}, Lcom/android/server/gesture/EdgeGestureService;->-get3(Lcom/android/server/gesture/EdgeGestureService;)Lcom/android/server/gesture/EdgeGestureInputFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/gesture/EdgeGestureInputFilter;->unlockFilter()Z

    move-result v0

    return v0

    .line 127
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public isActive()Z
    .registers 2

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->mActive:Z

    return v0
.end method

.method public restoreListenerState()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->mActive:Z

    if-eqz v0, :cond_23

    .line 146
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->this$0:Lcom/android/server/gesture/EdgeGestureService;

    invoke-static {v0}, Lcom/android/server/gesture/EdgeGestureService;->-get3(Lcom/android/server/gesture/EdgeGestureService;)Lcom/android/server/gesture/EdgeGestureInputFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/gesture/EdgeGestureInputFilter;->unlockFilter()Z

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->mActive:Z

    .line 148
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->this$0:Lcom/android/server/gesture/EdgeGestureService;

    invoke-static {v0}, Lcom/android/server/gesture/EdgeGestureService;->-get4(Lcom/android/server/gesture/EdgeGestureService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 150
    :try_start_17
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->this$0:Lcom/android/server/gesture/EdgeGestureService;

    invoke-static {v0}, Lcom/android/server/gesture/EdgeGestureService;->-get2(Lcom/android/server/gesture/EdgeGestureService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x7d19

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_24

    monitor-exit v1

    .line 141
    :cond_23
    return-void

    .line 148
    :catchall_24
    move-exception v0

    monitor-exit v1

    throw v0
.end method
