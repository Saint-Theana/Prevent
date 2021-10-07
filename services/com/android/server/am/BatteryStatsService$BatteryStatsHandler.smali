.class Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;
.super Landroid/os/Handler;
.source "BatteryStatsService.java"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BatteryStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BatteryStatsHandler"
.end annotation


# static fields
.field public static final MSG_SYNC_EXTERNAL_STATS:I = 0x1

.field public static final MSG_WRITE_TO_DISK:I = 0x2


# instance fields
.field private mUidsToRemove:Landroid/util/IntArray;

.field private mUpdateFlags:I

.field final synthetic this$0:Lcom/android/server/am/BatteryStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/Looper;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/am/BatteryStatsService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->this$0:Lcom/android/server/am/BatteryStatsService;

    .line 119
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->mUpdateFlags:I

    .line 116
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->mUidsToRemove:Landroid/util/IntArray;

    .line 118
    return-void
.end method

.method private scheduleSyncLocked(Ljava/lang/String;I)V
    .registers 4
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "updateFlags"    # I

    .prologue
    .line 173
    iget v0, p0, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->mUpdateFlags:I

    if-nez v0, :cond_c

    .line 174
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->sendMessage(Landroid/os/Message;)Z

    .line 176
    :cond_c
    iget v0, p0, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->mUpdateFlags:I

    or-int/2addr v0, p2

    iput v0, p0, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->mUpdateFlags:I

    .line 172
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 124
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_64

    .line 123
    :goto_5
    return-void

    .line 127
    :pswitch_6
    monitor-enter p0

    .line 128
    const/4 v3, 0x1

    :try_start_8
    invoke-virtual {p0, v3}, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->removeMessages(I)V

    .line 129
    iget v2, p0, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->mUpdateFlags:I

    .line 130
    .local v2, "updateFlags":I
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->mUpdateFlags:I
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_39

    monitor-exit p0

    .line 132
    iget-object v4, p0, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3, v2}, Lcom/android/server/am/BatteryStatsService;->updateExternalStatsSync(Ljava/lang/String;I)V

    .line 137
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v4, v3, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v4

    .line 138
    :try_start_1f
    monitor-enter p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_47

    .line 139
    :try_start_20
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->mUidsToRemove:Landroid/util/IntArray;

    invoke-virtual {v3}, Landroid/util/IntArray;->size()I

    move-result v1

    .line 140
    .local v1, "numUidsToRemove":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_27
    if-ge v0, v1, :cond_3c

    .line 141
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v3, v3, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, p0, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->mUidsToRemove:Landroid/util/IntArray;

    invoke-virtual {v5, v0}, Landroid/util/IntArray;->get(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/internal/os/BatteryStatsImpl;->removeIsolatedUidLocked(I)V
    :try_end_36
    .catchall {:try_start_20 .. :try_end_36} :catchall_44

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 127
    .end local v0    # "i":I
    .end local v1    # "numUidsToRemove":I
    .end local v2    # "updateFlags":I
    :catchall_39
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v0    # "i":I
    .restart local v1    # "numUidsToRemove":I
    .restart local v2    # "updateFlags":I
    :cond_3c
    :try_start_3c
    monitor-exit p0

    .line 144
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->mUidsToRemove:Landroid/util/IntArray;

    invoke-virtual {v3}, Landroid/util/IntArray;->clear()V
    :try_end_42
    .catchall {:try_start_3c .. :try_end_42} :catchall_47

    .end local v0    # "i":I
    .end local v1    # "numUidsToRemove":I
    .end local v2    # "updateFlags":I
    :goto_42
    monitor-exit v4

    goto :goto_5

    .line 138
    .restart local v2    # "updateFlags":I
    :catchall_44
    move-exception v3

    :try_start_45
    monitor-exit p0

    throw v3
    :try_end_47
    .catchall {:try_start_45 .. :try_end_47} :catchall_47

    .line 137
    :catchall_47
    move-exception v3

    monitor-exit v4

    throw v3

    .line 149
    .end local v2    # "updateFlags":I
    :pswitch_4a
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->this$0:Lcom/android/server/am/BatteryStatsService;

    const-string/jumbo v4, "write"

    const/16 v5, 0xf

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/BatteryStatsService;->updateExternalStatsSync(Ljava/lang/String;I)V

    .line 150
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v4, v3, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v4

    .line 151
    :try_start_59
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v3, v3, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl;->writeAsyncLocked()V
    :try_end_60
    .catchall {:try_start_59 .. :try_end_60} :catchall_61

    goto :goto_42

    .line 150
    :catchall_61
    move-exception v3

    monitor-exit v4

    throw v3

    .line 124
    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_6
        :pswitch_4a
    .end packed-switch
.end method

.method public scheduleCpuSyncDueToRemovedUid(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 166
    monitor-enter p0

    .line 167
    :try_start_1
    const-string/jumbo v0, "remove-uid"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->scheduleSyncLocked(Ljava/lang/String;I)V

    .line 168
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->mUidsToRemove:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->add(I)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    .line 165
    return-void

    .line 166
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public scheduleSync(Ljava/lang/String;I)V
    .registers 4
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "updateFlags"    # I

    .prologue
    .line 159
    monitor-enter p0

    .line 160
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->scheduleSyncLocked(Ljava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    .line 158
    return-void

    .line 159
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method
