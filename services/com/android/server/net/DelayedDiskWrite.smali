.class public Lcom/android/server/net/DelayedDiskWrite;
.super Ljava/lang/Object;
.source "DelayedDiskWrite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/DelayedDiskWrite$Writer;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mDiskWriteHandler:Landroid/os/Handler;

.field private mDiskWriteHandlerThread:Landroid/os/HandlerThread;

.field private mWriteSequence:I


# direct methods
.method static synthetic -wrap0(Lcom/android/server/net/DelayedDiskWrite;Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;Z)V
    .registers 4
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "w"    # Lcom/android/server/net/DelayedDiskWrite$Writer;
    .param p3, "open"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/DelayedDiskWrite;->doWrite(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;Z)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/net/DelayedDiskWrite;->mWriteSequence:I

    .line 34
    const-string/jumbo v0, "DelayedDiskWrite"

    iput-object v0, p0, Lcom/android/server/net/DelayedDiskWrite;->TAG:Ljava/lang/String;

    .line 29
    return-void
.end method

.method private doWrite(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;Z)V
    .registers 10
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "w"    # Lcom/android/server/net/DelayedDiskWrite$Writer;
    .param p3, "open"    # Z

    .prologue
    .line 67
    const/4 v2, 0x0

    .line 69
    .local v2, "out":Ljava/io/DataOutputStream;
    if-eqz p3, :cond_13

    .line 70
    :try_start_3
    new-instance v3, Ljava/io/DataOutputStream;

    new-instance v4, Ljava/io/BufferedOutputStream;

    .line 71
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .local v3, "out":Ljava/io/DataOutputStream;
    move-object v2, v3

    .line 73
    .end local v2    # "out":Ljava/io/DataOutputStream;
    .end local v3    # "out":Ljava/io/DataOutputStream;
    :cond_13
    invoke-interface {p2, v2}, Lcom/android/server/net/DelayedDiskWrite$Writer;->onWriteCalled(Ljava/io/DataOutputStream;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_16} :catch_3a
    .catchall {:try_start_3 .. :try_end_16} :catchall_75

    .line 77
    if-eqz v2, :cond_1b

    .line 79
    :try_start_18
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_35

    .line 84
    :cond_1b
    :goto_1b
    monitor-enter p0

    .line 85
    :try_start_1c
    iget v4, p0, Lcom/android/server/net/DelayedDiskWrite;->mWriteSequence:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/server/net/DelayedDiskWrite;->mWriteSequence:I

    if-nez v4, :cond_33

    .line 86
    iget-object v4, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->quit()V

    .line 87
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandler:Landroid/os/Handler;

    .line 88
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandlerThread:Landroid/os/HandlerThread;
    :try_end_33
    .catchall {:try_start_1c .. :try_end_33} :catchall_37

    :cond_33
    :goto_33
    monitor-exit p0

    .line 66
    return-void

    .line 80
    :catch_35
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    goto :goto_1b

    .line 84
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_37
    move-exception v4

    monitor-exit p0

    throw v4

    .line 74
    :catch_3a
    move-exception v0

    .line 75
    .local v0, "e":Ljava/io/IOException;
    :try_start_3b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error writing data file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/net/DelayedDiskWrite;->loge(Ljava/lang/String;)V
    :try_end_52
    .catchall {:try_start_3b .. :try_end_52} :catchall_75

    .line 77
    if-eqz v2, :cond_57

    .line 79
    :try_start_54
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_73

    .line 84
    :cond_57
    :goto_57
    monitor-enter p0

    .line 85
    :try_start_58
    iget v4, p0, Lcom/android/server/net/DelayedDiskWrite;->mWriteSequence:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/server/net/DelayedDiskWrite;->mWriteSequence:I

    if-nez v4, :cond_33

    .line 86
    iget-object v4, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->quit()V

    .line 87
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandler:Landroid/os/Handler;

    .line 88
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandlerThread:Landroid/os/HandlerThread;
    :try_end_6f
    .catchall {:try_start_58 .. :try_end_6f} :catchall_70

    goto :goto_33

    .line 84
    :catchall_70
    move-exception v4

    monitor-exit p0

    throw v4

    .line 80
    :catch_73
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    goto :goto_57

    .line 76
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_75
    move-exception v4

    .line 77
    if-eqz v2, :cond_7b

    .line 79
    :try_start_78
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7b} :catch_95

    .line 84
    :cond_7b
    :goto_7b
    monitor-enter p0

    .line 85
    :try_start_7c
    iget v5, p0, Lcom/android/server/net/DelayedDiskWrite;->mWriteSequence:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/server/net/DelayedDiskWrite;->mWriteSequence:I

    if-nez v5, :cond_93

    .line 86
    iget-object v5, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Looper;->quit()V

    .line 87
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandler:Landroid/os/Handler;

    .line 88
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandlerThread:Landroid/os/HandlerThread;
    :try_end_93
    .catchall {:try_start_7c .. :try_end_93} :catchall_97

    :cond_93
    monitor-exit p0

    .line 76
    throw v4

    .line 80
    :catch_95
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    goto :goto_7b

    .line 84
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_97
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private loge(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 95
    const-string/jumbo v0, "DelayedDiskWrite"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void
.end method


# virtual methods
.method public write(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;)V
    .registers 4
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "w"    # Lcom/android/server/net/DelayedDiskWrite$Writer;

    .prologue
    .line 41
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/net/DelayedDiskWrite;->write(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;Z)V

    .line 40
    return-void
.end method

.method public write(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;Z)V
    .registers 6
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "w"    # Lcom/android/server/net/DelayedDiskWrite$Writer;
    .param p3, "open"    # Z

    .prologue
    .line 45
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "empty file path"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_f
    monitor-enter p0

    .line 51
    :try_start_10
    iget v0, p0, Lcom/android/server/net/DelayedDiskWrite;->mWriteSequence:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/net/DelayedDiskWrite;->mWriteSequence:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_35

    .line 52
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "DelayedDiskWriteThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandlerThread:Landroid/os/HandlerThread;

    .line 53
    iget-object v0, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 54
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandler:Landroid/os/Handler;
    :try_end_35
    .catchall {:try_start_10 .. :try_end_35} :catchall_41

    :cond_35
    monitor-exit p0

    .line 58
    iget-object v0, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/net/DelayedDiskWrite$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/net/DelayedDiskWrite$1;-><init>(Lcom/android/server/net/DelayedDiskWrite;Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 44
    return-void

    .line 50
    :catchall_41
    move-exception v0

    monitor-exit p0

    throw v0
.end method
