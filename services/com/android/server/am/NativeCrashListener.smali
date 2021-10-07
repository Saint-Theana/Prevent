.class final Lcom/android/server/am/NativeCrashListener;
.super Ljava/lang/Thread;
.source "NativeCrashListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final DEBUGGERD_SOCKET_PATH:Ljava/lang/String; = "/data/system/ndebugsocket"

.field static final MORE_DEBUG:Z = false

.field static final SOCKET_TIMEOUT_MILLIS:J = 0x2710L

.field static final TAG:Ljava/lang/String; = "NativeCrashListener"


# instance fields
.field final mAm:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2
    .param p1, "am"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 98
    return-void
.end method

.method static readExactly(Ljava/io/FileDescriptor;[BII)I
    .registers 7
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "numBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .prologue
    .line 182
    const/4 v1, 0x0

    .line 183
    .local v1, "totalRead":I
    :goto_1
    if-lez p3, :cond_10

    .line 184
    add-int v2, p2, v1

    invoke-static {p0, p1, v2, p3}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    .line 185
    .local v0, "n":I
    if-gtz v0, :cond_d

    .line 189
    const/4 v2, -0x1

    return v2

    .line 191
    :cond_d
    sub-int/2addr p3, v0

    .line 192
    add-int/2addr v1, v0

    goto :goto_1

    .line 194
    .end local v0    # "n":I
    :cond_10
    return v1
.end method

.method static unpackInt([BI)I
    .registers 8
    .param p0, "buf"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 173
    aget-byte v4, p0, p1

    and-int/lit16 v0, v4, 0xff

    .line 174
    .local v0, "b0":I
    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v1, v4, 0xff

    .line 175
    .local v1, "b1":I
    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v2, v4, 0xff

    .line 176
    .local v2, "b2":I
    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    and-int/lit16 v3, v4, 0xff

    .line 177
    .local v3, "b3":I
    shl-int/lit8 v4, v0, 0x18

    shl-int/lit8 v5, v1, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v3

    return v4
.end method


# virtual methods
.method consumeNativeCrashData(Ljava/io/FileDescriptor;)V
    .registers 15
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    const/16 v10, 0x1000

    const/16 v12, 0x8

    .line 200
    new-array v0, v10, [B

    .line 201
    .local v0, "buf":[B
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 204
    .local v4, "os":Ljava/io/ByteArrayOutputStream;
    const-wide/16 v10, 0x2710

    :try_start_d
    invoke-static {v10, v11}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v9

    .line 205
    .local v9, "timeout":Landroid/system/StructTimeval;
    sget v10, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v11, Landroid/system/OsConstants;->SO_RCVTIMEO:I

    invoke-static {p1, v10, v11, v9}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 206
    sget v10, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v11, Landroid/system/OsConstants;->SO_SNDTIMEO:I

    invoke-static {p1, v10, v11, v9}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 209
    const/4 v10, 0x0

    const/16 v11, 0x8

    invoke-static {p1, v0, v10, v11}, Lcom/android/server/am/NativeCrashListener;->readExactly(Ljava/io/FileDescriptor;[BII)I

    move-result v3

    .line 210
    .local v3, "headerBytes":I
    if-eq v3, v12, :cond_32

    .line 212
    const-string/jumbo v10, "NativeCrashListener"

    const-string/jumbo v11, "Unable to read from debuggerd"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return-void

    .line 216
    :cond_32
    const/4 v10, 0x0

    invoke-static {v0, v10}, Lcom/android/server/am/NativeCrashListener;->unpackInt([BI)I

    move-result v5

    .line 217
    .local v5, "pid":I
    const/4 v10, 0x4

    invoke-static {v0, v10}, Lcom/android/server/am/NativeCrashListener;->unpackInt([BI)I

    move-result v8

    .line 223
    .local v8, "signal":I
    if-lez v5, :cond_c3

    .line 225
    iget-object v10, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v10, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v11
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_43} :catch_58

    .line 226
    :try_start_43
    iget-object v10, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v10, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;
    :try_end_4d
    .catchall {:try_start_43 .. :try_end_4d} :catchall_55

    .local v6, "pr":Lcom/android/server/am/ProcessRecord;
    :try_start_4d
    monitor-exit v11

    .line 228
    if-eqz v6, :cond_a8

    .line 230
    iget-boolean v10, v6, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v10, :cond_69

    .line 234
    return-void

    .line 225
    .end local v6    # "pr":Lcom/android/server/am/ProcessRecord;
    :catchall_55
    move-exception v10

    monitor-exit v11

    throw v10
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_58} :catch_58

    .line 279
    .end local v3    # "headerBytes":I
    .end local v5    # "pid":I
    .end local v8    # "signal":I
    .end local v9    # "timeout":Landroid/system/StructTimeval;
    :catch_58
    move-exception v2

    .line 280
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "NativeCrashListener"

    const-string/jumbo v11, "Exception dealing with report"

    invoke-static {v10, v11, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_62
    return-void

    .line 252
    .local v1, "bytes":I
    .restart local v3    # "headerBytes":I
    .restart local v5    # "pid":I
    .restart local v6    # "pr":Lcom/android/server/am/ProcessRecord;
    .restart local v8    # "signal":I
    .restart local v9    # "timeout":Landroid/system/StructTimeval;
    :cond_63
    const/4 v10, 0x0

    :try_start_64
    invoke-virtual {v4, v0, v10, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 254
    :cond_67
    if-lez v1, :cond_7d

    .line 240
    .end local v1    # "bytes":I
    :cond_69
    array-length v10, v0

    const/4 v11, 0x0

    invoke-static {p1, v0, v11, v10}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v1

    .line 241
    .restart local v1    # "bytes":I
    if-lez v1, :cond_67

    .line 247
    add-int/lit8 v10, v1, -0x1

    aget-byte v10, v0, v10

    if-nez v10, :cond_63

    .line 248
    add-int/lit8 v10, v1, -0x1

    const/4 v11, 0x0

    invoke-virtual {v4, v0, v11, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 263
    :cond_7d
    iget-object v11, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_80} :catch_58

    :try_start_80
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 264
    const/4 v10, 0x1

    iput-boolean v10, v6, Lcom/android/server/am/ProcessRecord;->crashing:Z

    .line 265
    const/4 v10, 0x1

    iput-boolean v10, v6, Lcom/android/server/am/ProcessRecord;->forceCrashReport:Z
    :try_end_89
    .catchall {:try_start_80 .. :try_end_89} :catchall_a2

    :try_start_89
    monitor-exit v11

    .line 263
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 271
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    const-string/jumbo v11, "UTF-8"

    invoke-direct {v7, v10, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 272
    .local v7, "reportString":Ljava/lang/String;
    new-instance v10, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;

    invoke-direct {v10, p0, v6, v8, v7}, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;-><init>(Lcom/android/server/am/NativeCrashListener;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;)V

    invoke-virtual {v10}, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->start()V

    goto :goto_62

    .line 263
    .end local v7    # "reportString":Ljava/lang/String;
    :catchall_a2
    move-exception v10

    monitor-exit v11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v10

    .line 274
    .end local v1    # "bytes":I
    :cond_a8
    const-string/jumbo v10, "NativeCrashListener"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Couldn\'t find ProcessRecord for pid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    .line 277
    .end local v6    # "pr":Lcom/android/server/am/ProcessRecord;
    :cond_c3
    const-string/jumbo v10, "NativeCrashListener"

    const-string/jumbo v11, "Bogus pid!"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_cc} :catch_58

    goto :goto_62
.end method

.method public run()V
    .registers 12

    .prologue
    const/4 v8, 0x1

    .line 104
    new-array v0, v8, [B

    .line 112
    .local v0, "ackSignal":[B
    new-instance v7, Ljava/io/File;

    const-string/jumbo v8, "/data/system/ndebugsocket"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    .local v7, "socketFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_14

    .line 114
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 119
    :cond_14
    :try_start_14
    sget v8, Landroid/system/OsConstants;->AF_UNIX:I

    sget v9, Landroid/system/OsConstants;->SOCK_STREAM:I

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v5

    .line 121
    .local v5, "serverFd":Ljava/io/FileDescriptor;
    const-string/jumbo v8, "/data/system/ndebugsocket"

    .line 120
    invoke-static {v8}, Landroid/system/UnixSocketAddress;->createFileSystem(Ljava/lang/String;)Landroid/system/UnixSocketAddress;

    move-result-object v6

    .line 122
    .local v6, "sockAddr":Landroid/system/UnixSocketAddress;
    invoke-static {v5, v6}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    .line 123
    const/4 v8, 0x1

    invoke-static {v5, v8}, Landroid/system/Os;->listen(Ljava/io/FileDescriptor;I)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_2b} :catch_76

    .line 126
    :cond_2b
    :goto_2b
    const/4 v4, 0x0

    .line 129
    .local v4, "peerFd":Ljava/io/FileDescriptor;
    const/4 v8, 0x0

    :try_start_2d
    invoke-static {v5, v8}, Landroid/system/Os;->accept(Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)Ljava/io/FileDescriptor;

    move-result-object v4

    .line 131
    .local v4, "peerFd":Ljava/io/FileDescriptor;
    if-eqz v4, :cond_42

    .line 134
    sget v8, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v9, Landroid/system/OsConstants;->SO_PEERCRED:I

    invoke-static {v4, v8, v9}, Landroid/system/Os;->getsockoptUcred(Ljava/io/FileDescriptor;II)Landroid/system/StructUcred;

    move-result-object v1

    .line 135
    .local v1, "credentials":Landroid/system/StructUcred;
    iget v8, v1, Landroid/system/StructUcred;->uid:I

    if-nez v8, :cond_42

    .line 138
    invoke-virtual {p0, v4}, Lcom/android/server/am/NativeCrashListener;->consumeNativeCrashData(Ljava/io/FileDescriptor;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_42} :catch_51
    .catchall {:try_start_2d .. :try_end_42} :catchall_6a

    .line 146
    .end local v1    # "credentials":Landroid/system/StructUcred;
    :cond_42
    if-eqz v4, :cond_2b

    .line 148
    const/4 v8, 0x0

    const/4 v9, 0x1

    :try_start_46
    invoke-static {v4, v0, v8, v9}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_49} :catch_4f

    .line 156
    :goto_49
    :try_start_49
    invoke-static {v4}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_4c
    .catch Landroid/system/ErrnoException; {:try_start_49 .. :try_end_4c} :catch_4d
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_76

    goto :goto_2b

    .line 157
    :catch_4d
    move-exception v2

    .local v2, "e":Landroid/system/ErrnoException;
    goto :goto_2b

    .line 149
    .end local v2    # "e":Landroid/system/ErrnoException;
    :catch_4f
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    goto :goto_49

    .line 141
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "peerFd":Ljava/io/FileDescriptor;
    :catch_51
    move-exception v3

    .line 142
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_52
    const-string/jumbo v8, "NativeCrashListener"

    const-string/jumbo v9, "Error handling connection"

    invoke-static {v8, v9, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5b
    .catchall {:try_start_52 .. :try_end_5b} :catchall_6a

    .line 146
    if-eqz v4, :cond_2b

    .line 148
    const/4 v8, 0x0

    const/4 v9, 0x1

    :try_start_5f
    invoke-static {v4, v0, v8, v9}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_62} :catch_68

    .line 156
    :goto_62
    :try_start_62
    invoke-static {v4}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_65
    .catch Landroid/system/ErrnoException; {:try_start_62 .. :try_end_65} :catch_66
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_65} :catch_76

    goto :goto_2b

    .line 157
    :catch_66
    move-exception v2

    .restart local v2    # "e":Landroid/system/ErrnoException;
    goto :goto_2b

    .line 149
    .end local v2    # "e":Landroid/system/ErrnoException;
    :catch_68
    move-exception v3

    goto :goto_62

    .line 143
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_6a
    move-exception v8

    .line 146
    if-eqz v4, :cond_75

    .line 148
    const/4 v9, 0x0

    const/4 v10, 0x1

    :try_start_6f
    invoke-static {v4, v0, v9, v10}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_72} :catch_81

    .line 156
    :goto_72
    :try_start_72
    invoke-static {v4}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_75
    .catch Landroid/system/ErrnoException; {:try_start_72 .. :try_end_75} :catch_83
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_75} :catch_76

    .line 143
    :cond_75
    :goto_75
    :try_start_75
    throw v8
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_76} :catch_76

    .line 165
    .end local v5    # "serverFd":Ljava/io/FileDescriptor;
    .end local v6    # "sockAddr":Landroid/system/UnixSocketAddress;
    :catch_76
    move-exception v3

    .line 166
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v8, "NativeCrashListener"

    const-string/jumbo v9, "Unable to init native debug socket!"

    invoke-static {v8, v9, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    return-void

    .line 149
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v5    # "serverFd":Ljava/io/FileDescriptor;
    .restart local v6    # "sockAddr":Landroid/system/UnixSocketAddress;
    :catch_81
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    goto :goto_72

    .line 157
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_83
    move-exception v2

    .restart local v2    # "e":Landroid/system/ErrnoException;
    goto :goto_75
.end method
