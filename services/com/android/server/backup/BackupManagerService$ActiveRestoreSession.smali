.class Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;
.super Landroid/app/backup/IRestoreSession$Stub;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActiveRestoreSession"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RestoreSession"


# instance fields
.field mEnded:Z

.field private mPackageName:Ljava/lang/String;

.field mRestoreSets:[Landroid/app/backup/RestoreSet;

.field private mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

.field mTimedOut:Z

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method static synthetic -set0(Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;Lcom/android/internal/backup/IBackupTransport;)Lcom/android/internal/backup/IBackupTransport;
    .registers 2

    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    return-object p1
.end method

.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "transport"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 10127
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Landroid/app/backup/IRestoreSession$Stub;-><init>()V

    .line 10122
    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    .line 10123
    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    .line 10124
    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mEnded:Z

    .line 10125
    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mTimedOut:Z

    .line 10128
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    .line 10129
    invoke-static {p1, p3}, Lcom/android/server/backup/BackupManagerService;->-wrap9(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    .line 10127
    return-void
.end method


# virtual methods
.method public declared-synchronized endRestoreSession()V
    .registers 4

    .prologue
    monitor-enter p0

    .line 10427
    :try_start_1
    const-string/jumbo v0, "RestoreSession"

    const-string/jumbo v1, "endRestoreSession"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10429
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mTimedOut:Z

    if-eqz v0, :cond_19

    .line 10430
    const-string/jumbo v0, "RestoreSession"

    const-string/jumbo v1, "Session already timed out"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_26

    monitor-exit p0

    .line 10431
    return-void

    .line 10434
    :cond_19
    :try_start_19
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mEnded:Z

    if-eqz v0, :cond_29

    .line 10435
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Restore session already ended"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_26
    .catchall {:try_start_19 .. :try_end_26} :catchall_26

    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0

    .line 10438
    :cond_29
    :try_start_29
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    new-instance v1, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {v1, p0, v2, p0}, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;-><init>(Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;)V

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_37
    .catchall {:try_start_29 .. :try_end_37} :catchall_26

    monitor-exit p0

    .line 10426
    return-void
.end method

.method public declared-synchronized getAvailableRestoreSets(Landroid/app/backup/IRestoreObserver;)I
    .registers 11
    .param p1, "observer"    # Landroid/app/backup/IRestoreObserver;

    .prologue
    const/4 v8, -0x1

    monitor-enter p0

    .line 10138
    :try_start_2
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.BACKUP"

    .line 10139
    const-string/jumbo v6, "getAvailableRestoreSets"

    .line 10138
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10140
    if-nez p1, :cond_1d

    .line 10141
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Observer must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1a
    .catchall {:try_start_2 .. :try_end_1a} :catchall_1a

    :catchall_1a
    move-exception v4

    monitor-exit p0

    throw v4

    .line 10144
    :cond_1d
    :try_start_1d
    iget-boolean v4, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mEnded:Z

    if-eqz v4, :cond_2a

    .line 10145
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Restore session already ended"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 10148
    :cond_2a
    iget-boolean v4, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mTimedOut:Z

    if-eqz v4, :cond_39

    .line 10149
    const-string/jumbo v4, "RestoreSession"

    const-string/jumbo v5, "Session already timed out"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_1d .. :try_end_37} :catchall_1a

    monitor-exit p0

    .line 10150
    return v8

    .line 10153
    :cond_39
    :try_start_39
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_1a

    move-result-wide v2

    .line 10155
    .local v2, "oldId":J
    :try_start_3d
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    if-nez v4, :cond_4f

    .line 10156
    const-string/jumbo v4, "RestoreSession"

    const-string/jumbo v5, "Null transport getting restore sets"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_4a} :catch_7e
    .catchall {:try_start_3d .. :try_end_4a} :catchall_8d

    .line 10175
    :try_start_4a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_1a

    monitor-exit p0

    .line 10157
    return v8

    .line 10163
    :cond_4f
    :try_start_4f
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 10166
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 10167
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    .line 10168
    new-instance v5, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;

    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-direct {v5, v6, v7, p0, p1}, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;Landroid/app/backup/IRestoreObserver;)V

    .line 10167
    const/4 v6, 0x6

    invoke-virtual {v4, v6, v5}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 10169
    .local v1, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v4, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_78} :catch_7e
    .catchall {:try_start_4f .. :try_end_78} :catchall_8d

    .line 10175
    :try_start_78
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_1a

    .line 10170
    const/4 v4, 0x0

    monitor-exit p0

    return v4

    .line 10171
    .end local v1    # "msg":Landroid/os/Message;
    :catch_7e
    move-exception v0

    .line 10172
    .local v0, "e":Ljava/lang/Exception;
    :try_start_7f
    const-string/jumbo v4, "RestoreSession"

    const-string/jumbo v5, "Error in getAvailableRestoreSets"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_88
    .catchall {:try_start_7f .. :try_end_88} :catchall_8d

    .line 10175
    :try_start_88
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_1a

    monitor-exit p0

    .line 10173
    return v8

    .line 10174
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_8d
    move-exception v4

    .line 10175
    :try_start_8e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 10174
    throw v4
    :try_end_92
    .catchall {:try_start_8e .. :try_end_92} :catchall_1a
.end method

.method public markTimedOut()V
    .registers 2

    .prologue
    .line 10133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mTimedOut:Z

    .line 10132
    return-void
.end method

.method public declared-synchronized restoreAll(JLandroid/app/backup/IRestoreObserver;)I
    .registers 19
    .param p1, "token"    # J
    .param p3, "observer"    # Landroid/app/backup/IRestoreObserver;

    .prologue
    monitor-enter p0

    .line 10180
    :try_start_1
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.BACKUP"

    .line 10181
    const-string/jumbo v5, "performRestore"

    .line 10180
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10183
    const-string/jumbo v3, "RestoreSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "restoreAll token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 10184
    const-string/jumbo v5, " observer="

    .line 10183
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10186
    iget-boolean v3, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mEnded:Z

    if-eqz v3, :cond_49

    .line 10187
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Restore session already ended"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_46
    .catchall {:try_start_1 .. :try_end_46} :catchall_46

    :catchall_46
    move-exception v3

    monitor-exit p0

    throw v3

    .line 10190
    :cond_49
    :try_start_49
    iget-boolean v3, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mTimedOut:Z

    if-eqz v3, :cond_59

    .line 10191
    const-string/jumbo v3, "RestoreSession"

    const-string/jumbo v4, "Session already timed out"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catchall {:try_start_49 .. :try_end_56} :catchall_46

    .line 10192
    const/4 v3, -0x1

    monitor-exit p0

    return v3

    .line 10195
    :cond_59
    :try_start_59
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    if-eqz v3, :cond_61

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    if-nez v3, :cond_6d

    .line 10196
    :cond_61
    const-string/jumbo v3, "RestoreSession"

    const-string/jumbo v4, "Ignoring restoreAll() with no restore set"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catchall {:try_start_59 .. :try_end_6a} :catchall_46

    .line 10197
    const/4 v3, -0x1

    monitor-exit p0

    return v3

    .line 10200
    :cond_6d
    :try_start_6d
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    if-eqz v3, :cond_7d

    .line 10201
    const-string/jumbo v3, "RestoreSession"

    const-string/jumbo v4, "Ignoring restoreAll() on single-package session"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a
    .catchall {:try_start_6d .. :try_end_7a} :catchall_46

    .line 10202
    const/4 v3, -0x1

    monitor-exit p0

    return v3

    .line 10207
    :cond_7d
    :try_start_7d
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_82} :catch_d2
    .catchall {:try_start_7d .. :try_end_82} :catchall_46

    move-result-object v6

    .line 10214
    .local v6, "dirName":Ljava/lang/String;
    :try_start_83
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v14, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v14
    :try_end_88
    .catchall {:try_start_83 .. :try_end_88} :catchall_46

    .line 10215
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_89
    :try_start_89
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    array-length v3, v3

    if-ge v10, v3, :cond_f7

    .line 10216
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    aget-object v3, v3, v10

    iget-wide v4, v3, Landroid/app/backup/RestoreSet;->token:J

    cmp-long v3, p1, v4

    if-nez v3, :cond_f4

    .line 10218
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 10220
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 10221
    .local v12, "oldId":J
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 10225
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    .line 10226
    .local v11, "msg":Landroid/os/Message;
    new-instance v3, Lcom/android/server/backup/BackupManagerService$RestoreParams;

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v7, p3

    move-wide/from16 v8, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/server/backup/BackupManagerService$RestoreParams;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;J)V

    iput-object v3, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 10228
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v3, v11}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 10229
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_ce
    .catchall {:try_start_89 .. :try_end_ce} :catchall_120

    :try_start_ce
    monitor-exit v14
    :try_end_cf
    .catchall {:try_start_ce .. :try_end_cf} :catchall_46

    .line 10230
    const/4 v3, 0x0

    monitor-exit p0

    return v3

    .line 10208
    .end local v6    # "dirName":Ljava/lang/String;
    .end local v10    # "i":I
    .end local v11    # "msg":Landroid/os/Message;
    .end local v12    # "oldId":J
    :catch_d2
    move-exception v2

    .line 10210
    .local v2, "e":Ljava/lang/Exception;
    :try_start_d3
    const-string/jumbo v3, "RestoreSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to get transport dir for restore: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f1
    .catchall {:try_start_d3 .. :try_end_f1} :catchall_46

    .line 10211
    const/4 v3, -0x1

    monitor-exit p0

    return v3

    .line 10215
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v6    # "dirName":Ljava/lang/String;
    .restart local v10    # "i":I
    :cond_f4
    add-int/lit8 v10, v10, 0x1

    goto :goto_89

    :cond_f7
    :try_start_f7
    monitor-exit v14

    .line 10235
    const-string/jumbo v3, "RestoreSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Restore token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11d
    .catchall {:try_start_f7 .. :try_end_11d} :catchall_46

    .line 10236
    const/4 v3, -0x1

    monitor-exit p0

    return v3

    .line 10214
    :catchall_120
    move-exception v3

    :try_start_121
    monitor-exit v14

    throw v3
    :try_end_123
    .catchall {:try_start_121 .. :try_end_123} :catchall_46
.end method

.method public declared-synchronized restorePackage(Ljava/lang/String;Landroid/app/backup/IRestoreObserver;)I
    .registers 19
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/app/backup/IRestoreObserver;

    .prologue
    monitor-enter p0

    .line 10322
    :try_start_1
    const-string/jumbo v3, "RestoreSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "restorePackage pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " obs="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10324
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mEnded:Z

    if-eqz v3, :cond_3c

    .line 10325
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Restore session already ended"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_39

    :catchall_39
    move-exception v3

    monitor-exit p0

    throw v3

    .line 10328
    :cond_3c
    :try_start_3c
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mTimedOut:Z

    if-eqz v3, :cond_4e

    .line 10329
    const-string/jumbo v3, "RestoreSession"

    const-string/jumbo v4, "Session already timed out"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catchall {:try_start_3c .. :try_end_4b} :catchall_39

    .line 10330
    const/4 v3, -0x1

    monitor-exit p0

    return v3

    .line 10333
    :cond_4e
    :try_start_4e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    if-eqz v3, :cond_8e

    .line 10334
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8e

    .line 10335
    const-string/jumbo v3, "RestoreSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Ignoring attempt to restore pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 10336
    const-string/jumbo v5, " on session for package "

    .line 10335
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 10336
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    .line 10335
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8b
    .catchall {:try_start_4e .. :try_end_8b} :catchall_39

    .line 10337
    const/4 v3, -0x1

    monitor-exit p0

    return v3

    .line 10341
    :cond_8e
    const/4 v10, 0x0

    .line 10343
    .local v10, "app":Landroid/content/pm/PackageInfo;
    :try_start_8f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService;->-get2(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_9d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8f .. :try_end_9d} :catch_f4
    .catchall {:try_start_8f .. :try_end_9d} :catchall_39

    move-result-object v10

    .line 10351
    .local v10, "app":Landroid/content/pm/PackageInfo;
    :try_start_9e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.BACKUP"

    .line 10352
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 10351
    invoke-virtual {v3, v4, v5, v7}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v13

    .line 10353
    .local v13, "perm":I
    const/4 v3, -0x1

    if-ne v13, v3, :cond_114

    .line 10354
    iget-object v3, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    if-eq v3, v4, :cond_114

    .line 10355
    const-string/jumbo v3, "RestoreSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "restorePackage: bad packageName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 10356
    const-string/jumbo v5, " or calling uid="

    .line 10355
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 10356
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 10355
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10357
    new-instance v3, Ljava/lang/SecurityException;

    const-string/jumbo v4, "No permission to restore other packages"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 10344
    .end local v13    # "perm":I
    .local v10, "app":Landroid/content/pm/PackageInfo;
    :catch_f4
    move-exception v12

    .line 10345
    .local v12, "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "RestoreSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Asked to restore nonexistent pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_111
    .catchall {:try_start_9e .. :try_end_111} :catchall_39

    .line 10346
    const/4 v3, -0x1

    monitor-exit p0

    return v3

    .line 10361
    .end local v12    # "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    .local v10, "app":Landroid/content/pm/PackageInfo;
    .restart local v13    # "perm":I
    :cond_114
    :try_start_114
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_117
    .catchall {:try_start_114 .. :try_end_117} :catchall_39

    move-result-wide v14

    .line 10365
    .local v14, "oldId":J
    :try_start_118
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/server/backup/BackupManagerService;->getAvailableRestoreToken(Ljava/lang/String;)J

    move-result-wide v8

    .line 10366
    .local v8, "token":J
    const-string/jumbo v3, "RestoreSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "restorePackage pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 10367
    const-string/jumbo v5, " token="

    .line 10366
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 10367
    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    .line 10366
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10372
    const-wide/16 v4, 0x0

    cmp-long v3, v8, v4

    if-nez v3, :cond_162

    .line 10373
    const-string/jumbo v3, "RestoreSession"

    const-string/jumbo v4, "No data available for this package; not restoring"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15c
    .catchall {:try_start_118 .. :try_end_15c} :catchall_1ce

    .line 10398
    :try_start_15c
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_15f
    .catchall {:try_start_15c .. :try_end_15f} :catchall_39

    .line 10374
    const/4 v3, -0x1

    monitor-exit p0

    return v3

    .line 10379
    :cond_162
    :try_start_162
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;
    :try_end_169
    .catch Ljava/lang/Exception; {:try_start_162 .. :try_end_169} :catch_1a9
    .catchall {:try_start_162 .. :try_end_169} :catchall_1ce

    move-result-object v6

    .line 10387
    .local v6, "dirName":Ljava/lang/String;
    :try_start_16a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 10390
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 10394
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    .line 10395
    .local v11, "msg":Landroid/os/Message;
    new-instance v3, Lcom/android/server/backup/BackupManagerService$RestoreParams;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v7, p2

    invoke-direct/range {v3 .. v10}, Lcom/android/server/backup/BackupManagerService$RestoreParams;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;JLandroid/content/pm/PackageInfo;)V

    iput-object v3, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 10396
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v3, v11}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1a3
    .catchall {:try_start_16a .. :try_end_1a3} :catchall_1ce

    .line 10398
    :try_start_1a3
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1a6
    .catchall {:try_start_1a3 .. :try_end_1a6} :catchall_39

    .line 10400
    const/4 v3, 0x0

    monitor-exit p0

    return v3

    .line 10380
    .end local v6    # "dirName":Ljava/lang/String;
    .end local v11    # "msg":Landroid/os/Message;
    :catch_1a9
    move-exception v2

    .line 10382
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1aa
    const-string/jumbo v3, "RestoreSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to get transport dir for restorePackage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c8
    .catchall {:try_start_1aa .. :try_end_1c8} :catchall_1ce

    .line 10398
    :try_start_1c8
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1cb
    .catchall {:try_start_1c8 .. :try_end_1cb} :catchall_39

    .line 10383
    const/4 v3, -0x1

    monitor-exit p0

    return v3

    .line 10397
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v8    # "token":J
    :catchall_1ce
    move-exception v3

    .line 10398
    :try_start_1cf
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 10397
    throw v3
    :try_end_1d3
    .catchall {:try_start_1cf .. :try_end_1d3} :catchall_39
.end method

.method public declared-synchronized restoreSome(JLandroid/app/backup/IRestoreObserver;[Ljava/lang/String;)I
    .registers 26
    .param p1, "token"    # J
    .param p3, "observer"    # Landroid/app/backup/IRestoreObserver;
    .param p4, "packages"    # [Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 10242
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.BACKUP"

    .line 10243
    const-string/jumbo v5, "performRestore"

    .line 10242
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10246
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 10247
    .local v2, "b":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "restoreSome token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10248
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10249
    const-string/jumbo v3, " observer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10250
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10251
    const-string/jumbo v3, " packages="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10252
    if-nez p4, :cond_5b

    .line 10253
    const-string/jumbo v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10265
    :goto_3f
    const-string/jumbo v3, "RestoreSession"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10268
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mEnded:Z

    if-eqz v3, :cond_81

    .line 10269
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Restore session already ended"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_58
    .catchall {:try_start_1 .. :try_end_58} :catchall_58

    .end local v2    # "b":Ljava/lang/StringBuilder;
    :catchall_58
    move-exception v3

    monitor-exit p0

    throw v3

    .line 10255
    .restart local v2    # "b":Ljava/lang/StringBuilder;
    :cond_5b
    const/16 v3, 0x7b

    :try_start_5d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10256
    const/4 v13, 0x1

    .line 10257
    .local v13, "first":Z
    const/4 v3, 0x0

    move-object/from16 v0, p4

    array-length v4, v0

    :goto_65
    if-ge v3, v4, :cond_7b

    aget-object v18, p4, v3

    .line 10258
    .local v18, "s":Ljava/lang/String;
    if-nez v13, :cond_79

    .line 10259
    const-string/jumbo v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10261
    :goto_71
    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10257
    add-int/lit8 v3, v3, 0x1

    goto :goto_65

    .line 10260
    :cond_79
    const/4 v13, 0x0

    goto :goto_71

    .line 10263
    .end local v18    # "s":Ljava/lang/String;
    :cond_7b
    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3f

    .line 10272
    .end local v13    # "first":Z
    :cond_81
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mTimedOut:Z

    if-eqz v3, :cond_93

    .line 10273
    const-string/jumbo v3, "RestoreSession"

    const-string/jumbo v4, "Session already timed out"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_90
    .catchall {:try_start_5d .. :try_end_90} :catchall_58

    .line 10274
    const/4 v3, -0x1

    monitor-exit p0

    return v3

    .line 10277
    :cond_93
    :try_start_93
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    if-eqz v3, :cond_9f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    if-nez v3, :cond_ab

    .line 10278
    :cond_9f
    const-string/jumbo v3, "RestoreSession"

    const-string/jumbo v4, "Ignoring restoreAll() with no restore set"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a8
    .catchall {:try_start_93 .. :try_end_a8} :catchall_58

    .line 10279
    const/4 v3, -0x1

    monitor-exit p0

    return v3

    .line 10282
    :cond_ab
    :try_start_ab
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    if-eqz v3, :cond_bd

    .line 10283
    const-string/jumbo v3, "RestoreSession"

    const-string/jumbo v4, "Ignoring restoreAll() on single-package session"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ba
    .catchall {:try_start_ab .. :try_end_ba} :catchall_58

    .line 10284
    const/4 v3, -0x1

    monitor-exit p0

    return v3

    .line 10289
    :cond_bd
    :try_start_bd
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_c4} :catch_131
    .catchall {:try_start_bd .. :try_end_c4} :catchall_58

    move-result-object v6

    .line 10296
    .local v6, "dirName":Ljava/lang/String;
    :try_start_c5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v0, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19
    :try_end_ce
    .catchall {:try_start_c5 .. :try_end_ce} :catchall_58

    .line 10297
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_cf
    :try_start_cf
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    array-length v3, v3

    if-ge v14, v3, :cond_159

    .line 10298
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    aget-object v3, v3, v14

    iget-wide v4, v3, Landroid/app/backup/RestoreSet;->token:J

    cmp-long v3, p1, v4

    if-nez v3, :cond_155

    .line 10300
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 10302
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 10303
    .local v16, "oldId":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 10307
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    .line 10308
    .local v15, "msg":Landroid/os/Message;
    new-instance v3, Lcom/android/server/backup/BackupManagerService$RestoreParams;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    .line 10309
    move-object/from16 v0, p4

    array-length v7, v0

    const/4 v8, 0x1

    if-le v7, v8, :cond_153

    const/4 v11, 0x1

    :goto_116
    move-object/from16 v7, p3

    move-wide/from16 v8, p1

    move-object/from16 v10, p4

    .line 10308
    invoke-direct/range {v3 .. v11}, Lcom/android/server/backup/BackupManagerService$RestoreParams;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;J[Ljava/lang/String;Z)V

    iput-object v3, v15, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 10310
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v3, v15}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 10311
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_12d
    .catchall {:try_start_cf .. :try_end_12d} :catchall_182

    :try_start_12d
    monitor-exit v19
    :try_end_12e
    .catchall {:try_start_12d .. :try_end_12e} :catchall_58

    .line 10312
    const/4 v3, 0x0

    monitor-exit p0

    return v3

    .line 10290
    .end local v6    # "dirName":Ljava/lang/String;
    .end local v14    # "i":I
    .end local v15    # "msg":Landroid/os/Message;
    .end local v16    # "oldId":J
    :catch_131
    move-exception v12

    .line 10292
    .local v12, "e":Ljava/lang/Exception;
    :try_start_132
    const-string/jumbo v3, "RestoreSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to get transport name for restoreSome: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_150
    .catchall {:try_start_132 .. :try_end_150} :catchall_58

    .line 10293
    const/4 v3, -0x1

    monitor-exit p0

    return v3

    .line 10309
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v6    # "dirName":Ljava/lang/String;
    .restart local v14    # "i":I
    .restart local v15    # "msg":Landroid/os/Message;
    .restart local v16    # "oldId":J
    :cond_153
    const/4 v11, 0x0

    goto :goto_116

    .line 10297
    .end local v15    # "msg":Landroid/os/Message;
    .end local v16    # "oldId":J
    :cond_155
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_cf

    :cond_159
    :try_start_159
    monitor-exit v19

    .line 10317
    const-string/jumbo v3, "RestoreSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Restore token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17f
    .catchall {:try_start_159 .. :try_end_17f} :catchall_58

    .line 10318
    const/4 v3, -0x1

    monitor-exit p0

    return v3

    .line 10296
    :catchall_182
    move-exception v3

    :try_start_183
    monitor-exit v19

    throw v3
    :try_end_185
    .catchall {:try_start_183 .. :try_end_185} :catchall_58
.end method
