.class Lcom/android/server/QCNsrmAlarmExtension$CheckBlockedUidTimerTask;
.super Ljava/util/TimerTask;
.source "QCNsrmAlarmExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/QCNsrmAlarmExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckBlockedUidTimerTask"
.end annotation


# instance fields
.field private mUid:I

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/android/server/QCNsrmAlarmExtension;


# direct methods
.method constructor <init>(Lcom/android/server/QCNsrmAlarmExtension;ILandroid/os/PowerManager$WakeLock;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/QCNsrmAlarmExtension;
    .param p2, "uid"    # I
    .param p3, "lWakeLock"    # Landroid/os/PowerManager$WakeLock;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/server/QCNsrmAlarmExtension$CheckBlockedUidTimerTask;->this$0:Lcom/android/server/QCNsrmAlarmExtension;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 101
    iput p2, p0, Lcom/android/server/QCNsrmAlarmExtension$CheckBlockedUidTimerTask;->mUid:I

    .line 102
    iput-object p3, p0, Lcom/android/server/QCNsrmAlarmExtension$CheckBlockedUidTimerTask;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 100
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 107
    invoke-static {}, Lcom/android/server/QCNsrmAlarmExtension;->-get1()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/android/server/QCNsrmAlarmExtension$CheckBlockedUidTimerTask;->mUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-static {}, Lcom/android/server/QCNsrmAlarmExtension;->-get2()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/android/server/QCNsrmAlarmExtension$CheckBlockedUidTimerTask;->mUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 108
    iget-object v0, p0, Lcom/android/server/QCNsrmAlarmExtension$CheckBlockedUidTimerTask;->this$0:Lcom/android/server/QCNsrmAlarmExtension;

    invoke-static {v0}, Lcom/android/server/QCNsrmAlarmExtension;->-get0(Lcom/android/server/QCNsrmAlarmExtension;)Lcom/android/server/AlarmManagerService;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 109
    :try_start_29
    iget-object v0, p0, Lcom/android/server/QCNsrmAlarmExtension$CheckBlockedUidTimerTask;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 110
    iget-object v0, p0, Lcom/android/server/QCNsrmAlarmExtension$CheckBlockedUidTimerTask;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_36
    .catchall {:try_start_29 .. :try_end_36} :catchall_38

    :cond_36
    monitor-exit v1

    .line 116
    return-void

    .line 108
    :catchall_38
    move-exception v0

    monitor-exit v1

    throw v0

    .line 106
    :cond_3b
    return-void
.end method
