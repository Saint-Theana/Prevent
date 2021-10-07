.class public Lcom/android/server/am/TaskPersister;
.super Ljava/lang/Object;
.source "TaskPersister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;,
        Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;,
        Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;,
        Lcom/android/server/am/TaskPersister$WriteQueueItem;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final FLUSH_QUEUE:J = -0x1L

.field private static final IMAGES_DIRNAME:Ljava/lang/String; = "recent_images"

.field static final IMAGE_EXTENSION:Ljava/lang/String; = ".png"

.field private static final INTER_WRITE_DELAY_MS:J = 0x1f4L

.field private static final MAX_WRITE_QUEUE_LENGTH:I = 0x6

.field private static final PERSISTED_TASK_IDS_FILENAME:Ljava/lang/String; = "persisted_taskIds.txt"

.field private static final PRE_TASK_DELAY_MS:J = 0xbb8L

.field private static final RECENTS_FILENAME:Ljava/lang/String; = "_task"

.field static final TAG:Ljava/lang/String; = "TaskPersister"

.field private static final TAG_TASK:Ljava/lang/String; = "task"

.field private static final TASKS_DIRNAME:Ljava/lang/String; = "recent_tasks"

.field private static final TASK_EXTENSION:Ljava/lang/String; = ".xml"


# instance fields
.field private final mIoLock:Ljava/lang/Object;

.field private final mLazyTaskWriterThread:Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;

.field private mNextWriteTime:J

.field private final mRecentTasks:Lcom/android/server/am/RecentTasks;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private final mTaskIdsDir:Ljava/io/File;

.field private final mTaskIdsInFile:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field mWriteQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskPersister$WriteQueueItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/am/TaskPersister;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    return-wide v0
.end method

.method static synthetic -get1(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/RecentTasks;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/TaskPersister;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/ActivityManagerService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/TaskPersister;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/am/TaskPersister;J)J
    .registers 4

    iput-wide p1, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    return-wide p1
.end method

.method static synthetic -wrap0(Ljava/lang/String;)Z
    .registers 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/android/server/am/TaskPersister;->createParentDirectory(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/am/TaskPersister;Lcom/android/server/am/TaskRecord;)Ljava/io/StringWriter;
    .registers 3
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/TaskPersister;->saveToXml(Lcom/android/server/am/TaskRecord;)Ljava/io/StringWriter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/am/TaskPersister;Landroid/util/ArraySet;)V
    .registers 2
    .param p1, "persistentTaskIds"    # Landroid/util/ArraySet;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/TaskPersister;->removeObsoleteFiles(Landroid/util/ArraySet;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/am/TaskPersister;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/TaskPersister;->writeTaskIdsFiles()V

    return-void
.end method

.method constructor <init>(Ljava/io/File;)V
    .registers 5
    .param p1, "workingDir"    # Ljava/io/File;

    .prologue
    const/4 v2, 0x0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskPersister;->mIoLock:Ljava/lang/Object;

    .line 100
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    .line 152
    iput-object p1, p0, Lcom/android/server/am/TaskPersister;->mTaskIdsDir:Ljava/io/File;

    .line 153
    iput-object v2, p0, Lcom/android/server/am/TaskPersister;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 154
    iput-object v2, p0, Lcom/android/server/am/TaskPersister;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 155
    iput-object v2, p0, Lcom/android/server/am/TaskPersister;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    .line 156
    new-instance v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;

    const-string/jumbo v1, "LazyTaskWriterThreadTest"

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;-><init>(Lcom/android/server/am/TaskPersister;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/TaskPersister;->mLazyTaskWriterThread:Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;

    .line 151
    return-void
.end method

.method constructor <init>(Ljava/io/File;Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/RecentTasks;)V
    .registers 10
    .param p1, "systemDir"    # Ljava/io/File;
    .param p2, "stackSupervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p3, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p4, "recentTasks"    # Lcom/android/server/am/RecentTasks;

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    .line 91
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/TaskPersister;->mIoLock:Ljava/lang/Object;

    .line 100
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    .line 124
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    .line 129
    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "recent_images"

    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 130
    .local v0, "legacyImagesDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 131
    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_6f

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 136
    :cond_36
    :goto_36
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "recent_tasks"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 137
    .local v1, "legacyTasksDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 138
    invoke-static {v1}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_8a

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 143
    :cond_50
    :goto_50
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "system_de"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/am/TaskPersister;->mTaskIdsDir:Ljava/io/File;

    .line 144
    iput-object p2, p0, Lcom/android/server/am/TaskPersister;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 145
    iput-object p3, p0, Lcom/android/server/am/TaskPersister;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 146
    iput-object p4, p0, Lcom/android/server/am/TaskPersister;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    .line 147
    new-instance v2, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;

    const-string/jumbo v3, "LazyTaskWriterThread"

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;-><init>(Lcom/android/server/am/TaskPersister;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/am/TaskPersister;->mLazyTaskWriterThread:Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;

    .line 127
    return-void

    .line 132
    .end local v1    # "legacyTasksDir":Ljava/io/File;
    :cond_6f
    const-string/jumbo v2, "TaskPersister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failure deleting legacy images directory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 139
    .restart local v1    # "legacyTasksDir":Ljava/io/File;
    :cond_8a
    const-string/jumbo v2, "TaskPersister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failure deleting legacy tasks directory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50
.end method

.method private static createParentDirectory(Ljava/lang/String;)Z
    .registers 3
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 611
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 612
    .local v0, "parentDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x1

    goto :goto_13
.end method

.method private fileToString(Ljava/io/File;)Ljava/lang/String;
    .registers 11
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v8, 0x0

    .line 380
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    .line 382
    .local v2, "newline":Ljava/lang/String;
    :try_start_5
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 383
    .local v3, "reader":Ljava/io/BufferedReader;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v5, v6

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 385
    .local v4, "sb":Ljava/lang/StringBuffer;
    :goto_1b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_56

    .line 386
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_35} :catch_36

    goto :goto_1b

    .line 390
    .end local v1    # "line":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    :catch_36
    move-exception v0

    .line 391
    .local v0, "ioe":Ljava/io/IOException;
    const-string/jumbo v5, "TaskPersister"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Couldn\'t read file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    return-object v8

    .line 388
    .end local v0    # "ioe":Ljava/io/IOException;
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "sb":Ljava/lang/StringBuffer;
    :cond_56
    :try_start_56
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 389
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_5c} :catch_36

    move-result-object v5

    return-object v5
.end method

.method static getUserImagesDir(I)Ljava/io/File;
    .registers 4
    .param p0, "userId"    # I

    .prologue
    .line 607
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "recent_images"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getUserPersistedTaskIdsFile(I)Ljava/io/File;
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 587
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/am/TaskPersister;->mTaskIdsDir:Ljava/io/File;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 588
    .local v0, "userTaskIdsDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_17

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 591
    :cond_17
    :goto_17
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "persisted_taskIds.txt"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    .line 589
    :cond_20
    const-string/jumbo v1, "TaskPersister"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error while creating user directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method static getUserTasksDir(I)Ljava/io/File;
    .registers 5
    .param p0, "userId"    # I

    .prologue
    .line 595
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "recent_tasks"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 597
    .local v0, "userTasksDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3d

    .line 598
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_3d

    .line 599
    const-string/jumbo v1, "TaskPersister"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failure creating tasks directory for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :cond_3d
    return-object v0
.end method

.method private removeObsoleteFiles(Landroid/util/ArraySet;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 570
    .local p1, "persistentTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/android/server/am/TaskPersister;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 573
    iget-object v2, p0, Lcom/android/server/am/TaskPersister;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v2}, Lcom/android/server/am/RecentTasks;->usersWithRecentsLoadedLocked()[I
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_2f

    move-result-object v0

    .local v0, "candidateUserIds":[I
    monitor-exit v3

    .line 570
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 575
    const/4 v2, 0x0

    array-length v3, v0

    :goto_12
    if-ge v2, v3, :cond_35

    aget v1, v0, v2

    .line 576
    .local v1, "userId":I
    invoke-static {v1}, Lcom/android/server/am/TaskPersister;->getUserImagesDir(I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/server/am/TaskPersister;->removeObsoleteFiles(Landroid/util/ArraySet;[Ljava/io/File;)V

    .line 577
    invoke-static {v1}, Lcom/android/server/am/TaskPersister;->getUserTasksDir(I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/server/am/TaskPersister;->removeObsoleteFiles(Landroid/util/ArraySet;[Ljava/io/File;)V

    .line 575
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 570
    .end local v0    # "candidateUserIds":[I
    .end local v1    # "userId":I
    :catchall_2f
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 568
    .restart local v0    # "candidateUserIds":[I
    :cond_35
    return-void
.end method

.method private static removeObsoleteFiles(Landroid/util/ArraySet;[Ljava/io/File;)V
    .registers 11
    .param p1, "files"    # [Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Integer;",
            ">;[",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .prologue
    .line 521
    .local p0, "persistentTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    if-nez p1, :cond_c

    .line 522
    const-string/jumbo v6, "TaskPersister"

    const-string/jumbo v7, "File error accessing recents directory (directory doesn\'t exist?)."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    return-void

    .line 525
    :cond_c
    const/4 v2, 0x0

    .local v2, "fileNdx":I
    :goto_d
    array-length v6, p1

    if-ge v2, v6, :cond_5a

    .line 526
    aget-object v1, p1, v2

    .line 527
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 528
    .local v3, "filename":Ljava/lang/String;
    const/16 v6, 0x5f

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 529
    .local v5, "taskIdEnd":I
    if-lez v5, :cond_34

    .line 532
    const/4 v6, 0x0

    :try_start_1f
    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_26} :catch_37

    move-result v4

    .line 539
    .local v4, "taskId":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_34

    .line 541
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 525
    .end local v4    # "taskId":I
    :cond_34
    :goto_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 534
    :catch_37
    move-exception v0

    .line 535
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "TaskPersister"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeObsoleteFiles: Can\'t parse file="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_34

    .line 518
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "filename":Ljava/lang/String;
    .end local v5    # "taskIdEnd":I
    :cond_5a
    return-void
.end method

.method private removeThumbnails(Lcom/android/server/am/TaskRecord;)V
    .registers 7
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 166
    iget v4, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, "taskString":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "queueNdx":I
    :goto_e
    if-ltz v1, :cond_37

    .line 168
    iget-object v4, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskPersister$WriteQueueItem;

    .line 169
    .local v0, "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    instance-of v4, v0, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    if-eqz v4, :cond_34

    .line 170
    new-instance v3, Ljava/io/File;

    check-cast v0, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    .end local v0    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    iget-object v4, v0, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mFilePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    .local v3, "thumbnailFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 176
    iget-object v4, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 167
    .end local v3    # "thumbnailFile":Ljava/io/File;
    :cond_34
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 165
    :cond_37
    return-void
.end method

.method static restoreImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 583
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private saveToXml(Lcom/android/server/am/TaskRecord;)Ljava/io/StringWriter;
    .registers 6
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 359
    new-instance v1, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v1}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 360
    .local v1, "xmlSerializer":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 361
    .local v0, "stringWriter":Ljava/io/StringWriter;
    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 367
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 369
    const-string/jumbo v2, "task"

    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 370
    invoke-virtual {p1, v1}, Lcom/android/server/am/TaskRecord;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 371
    const-string/jumbo v2, "task"

    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 373
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 374
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 376
    return-object v0
.end method

.method private taskIdToTask(ILjava/util/ArrayList;)Lcom/android/server/am/TaskRecord;
    .registers 9
    .param p1, "taskId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;)",
            "Lcom/android/server/am/TaskRecord;"
        }
    .end annotation

    .prologue
    .local p2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/4 v5, 0x0

    .line 397
    if-gez p1, :cond_4

    .line 398
    return-object v5

    .line 400
    :cond_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "taskNdx":I
    :goto_a
    if-ltz v1, :cond_1a

    .line 401
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    .line 402
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    iget v2, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v2, p1, :cond_17

    .line 403
    return-object v0

    .line 400
    :cond_17
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 406
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1a
    const-string/jumbo v2, "TaskPersister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Restore affiliation error looking for taskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    return-object v5
.end method

.method private writeTaskIdsFiles()V
    .registers 12

    .prologue
    .line 548
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 549
    .local v0, "changedTaskIdsPerUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseBooleanArray;>;"
    iget-object v7, p0, Lcom/android/server/am/TaskPersister;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 550
    iget-object v6, p0, Lcom/android/server/am/TaskPersister;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v6}, Lcom/android/server/am/RecentTasks;->usersWithRecentsLoadedLocked()[I

    move-result-object v8

    const/4 v6, 0x0

    array-length v9, v8

    :goto_13
    if-ge v6, v9, :cond_47

    aget v5, v8, v6

    .line 551
    .local v5, "userId":I
    iget-object v10, p0, Lcom/android/server/am/TaskPersister;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    iget-object v10, v10, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v10, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseBooleanArray;

    .line 552
    .local v3, "taskIdsToSave":Landroid/util/SparseBooleanArray;
    iget-object v10, p0, Lcom/android/server/am/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    invoke-virtual {v10, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseBooleanArray;

    .line 553
    .local v2, "persistedIdsInFile":Landroid/util/SparseBooleanArray;
    if-eqz v2, :cond_34

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_34

    .line 550
    :goto_31
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    .line 556
    :cond_34
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v4

    .line 557
    .local v4, "taskIdsToSaveCopy":Landroid/util/SparseBooleanArray;
    iget-object v10, p0, Lcom/android/server/am/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    invoke-virtual {v10, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 558
    invoke-virtual {v0, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_40
    .catchall {:try_start_8 .. :try_end_40} :catchall_41

    goto :goto_31

    .line 549
    .end local v2    # "persistedIdsInFile":Landroid/util/SparseBooleanArray;
    .end local v3    # "taskIdsToSave":Landroid/util/SparseBooleanArray;
    .end local v4    # "taskIdsToSaveCopy":Landroid/util/SparseBooleanArray;
    .end local v5    # "userId":I
    :catchall_41
    move-exception v6

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    :cond_47
    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 562
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4c
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_62

    .line 563
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseBooleanArray;

    .line 564
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 563
    invoke-virtual {p0, v6, v7}, Lcom/android/server/am/TaskPersister;->writePersistedTaskIdsForUser(Landroid/util/SparseBooleanArray;I)V

    .line 562
    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    .line 547
    :cond_62
    return-void
.end method

.method private yieldIfQueueTooDeep()V
    .registers 7

    .prologue
    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, "stall":Z
    monitor-enter p0

    .line 185
    :try_start_2
    iget-wide v2, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_12

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_b

    .line 186
    const/4 v0, 0x1

    :cond_b
    monitor-exit p0

    .line 189
    if-eqz v0, :cond_11

    .line 190
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 182
    :cond_11
    return-void

    .line 184
    :catchall_12
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method flush()V
    .registers 7

    .prologue
    const-wide/16 v4, -0x1

    .line 290
    monitor-enter p0

    .line 291
    const-wide/16 v2, -0x1

    :try_start_5
    iput-wide v2, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    .line 292
    invoke-virtual {p0}, Lcom/android/server/am/TaskPersister;->notifyAll()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_17

    .line 295
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Lcom/android/server/am/TaskPersister;->wait()V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_d} :catch_15
    .catchall {:try_start_a .. :try_end_d} :catchall_17

    .line 298
    :goto_d
    :try_start_d
    iget-wide v2, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_17

    cmp-long v1, v2, v4

    if-eqz v1, :cond_a

    monitor-exit p0

    .line 289
    return-void

    .line 296
    :catch_15
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_d

    .line 290
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_17
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method getImageFromWriteQueue(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 7
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 343
    monitor-enter p0

    .line 344
    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "queueNdx":I
    :goto_9
    if-ltz v3, :cond_2a

    .line 345
    iget-object v4, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskPersister$WriteQueueItem;

    .line 346
    .local v2, "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    instance-of v4, v2, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    if-eqz v4, :cond_27

    .line 347
    move-object v0, v2

    check-cast v0, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    move-object v1, v0

    .line 348
    .local v1, "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    iget-object v4, v1, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mFilePath:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 349
    iget-object v4, v1, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mImage:Landroid/graphics/Bitmap;
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_2d

    monitor-exit p0

    return-object v4

    .line 344
    .end local v1    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    :cond_27
    add-int/lit8 v3, v3, -0x1

    goto :goto_9

    .line 353
    .end local v2    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    :cond_2a
    const/4 v4, 0x0

    monitor-exit p0

    return-object v4

    .line 343
    .end local v3    # "queueNdx":I
    :catchall_2d
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method getTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 335
    invoke-virtual {p0, p1}, Lcom/android/server/am/TaskPersister;->getImageFromWriteQueue(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 336
    .local v0, "icon":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_7

    .line 337
    return-object v0

    .line 339
    :cond_7
    invoke-static {p1}, Lcom/android/server/am/TaskPersister;->restoreImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method loadPersistedTaskIdsForUser(I)Landroid/util/SparseBooleanArray;
    .registers 15
    .param p1, "userId"    # I

    .prologue
    .line 196
    iget-object v8, p0, Lcom/android/server/am/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_15

    .line 197
    iget-object v8, p0, Lcom/android/server/am/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseBooleanArray;

    invoke-virtual {v8}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v8

    return-object v8

    .line 199
    :cond_15
    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 200
    .local v4, "persistedTaskIds":Landroid/util/SparseBooleanArray;
    iget-object v9, p0, Lcom/android/server/am/TaskPersister;->mIoLock:Ljava/lang/Object;

    monitor-enter v9

    .line 201
    const/4 v5, 0x0

    .line 204
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_1e
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {p0, p1}, Lcom/android/server/am/TaskPersister;->getUserPersistedTaskIdsFile(I)Ljava/io/File;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2c
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_2c} :catch_7b
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2c} :catch_59
    .catchall {:try_start_1e .. :try_end_2c} :catchall_80

    .line 205
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v6, "reader":Ljava/io/BufferedReader;
    :cond_2c
    :try_start_2c
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_4a

    .line 206
    const-string/jumbo v8, "\\s+"

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v8, 0x0

    array-length v11, v10

    :goto_3b
    if-ge v8, v11, :cond_2c

    aget-object v7, v10, v8

    .line 207
    .local v7, "taskIdString":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 208
    .local v2, "id":I
    const/4 v12, 0x1

    invoke-virtual {v4, v2, v12}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_47
    .catch Ljava/io/FileNotFoundException; {:try_start_2c .. :try_end_47} :catch_8b
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_47} :catch_8e
    .catchall {:try_start_2c .. :try_end_47} :catchall_88

    .line 206
    add-int/lit8 v8, v8, 0x1

    goto :goto_3b

    .line 216
    .end local v2    # "id":I
    .end local v7    # "taskIdString":Ljava/lang/String;
    :cond_4a
    :try_start_4a
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_85

    move-object v5, v6

    .end local v3    # "line":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    :goto_4e
    monitor-exit v9

    .line 219
    iget-object v8, p0, Lcom/android/server/am/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    invoke-virtual {v8, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 220
    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v8

    return-object v8

    .line 213
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_59
    move-exception v1

    .line 214
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v1, "e":Ljava/lang/Exception;
    :goto_5a
    :try_start_5a
    const-string/jumbo v8, "TaskPersister"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Error while reading taskIds file for user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_74
    .catchall {:try_start_5a .. :try_end_74} :catchall_80

    .line 216
    :try_start_74
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_78

    goto :goto_4e

    .line 200
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_78
    move-exception v8

    :goto_79
    monitor-exit v9

    throw v8

    .line 211
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_7b
    move-exception v0

    .line 216
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_7c
    :try_start_7c
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_4e

    .line 215
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_80
    move-exception v8

    .line 216
    :goto_81
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 215
    throw v8
    :try_end_85
    .catchall {:try_start_7c .. :try_end_85} :catchall_78

    .line 200
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catchall_85
    move-exception v8

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .local v5, "reader":Ljava/io/BufferedReader;
    goto :goto_79

    .line 215
    .end local v3    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catchall_88
    move-exception v8

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_81

    .line 211
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catch_8b
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_7c

    .line 213
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catch_8e
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_5a
.end method

.method restoreTasksForUserLocked(I)Ljava/util/List;
    .registers 23
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 411
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 412
    .local v16, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    .line 414
    .local v11, "recoveredTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/TaskPersister;->getUserTasksDir(I)Ljava/io/File;

    move-result-object v17

    .line 416
    .local v17, "userTasksDir":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    .line 417
    .local v10, "recentFiles":[Ljava/io/File;
    if-nez v10, :cond_33

    .line 418
    const-string/jumbo v18, "TaskPersister"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "restoreTasksForUserLocked: Unable to list files from "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    return-object v16

    .line 422
    :cond_33
    const/4 v15, 0x0

    .local v15, "taskNdx":I
    :goto_34
    array-length v0, v10

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v15, v0, :cond_1e8

    .line 423
    aget-object v13, v10, v15

    .line 428
    .local v13, "taskFile":Ljava/io/File;
    const/4 v8, 0x0

    .line 429
    .local v8, "reader":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 431
    .local v3, "deleteFile":Z
    :try_start_3f
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v18, Ljava/io/FileReader;

    move-object/from16 v0, v18

    invoke-direct {v0, v13}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_4d} :catch_23e
    .catchall {:try_start_3f .. :try_end_4d} :catchall_23b

    .line 432
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .local v9, "reader":Ljava/io/BufferedReader;
    :try_start_4d
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 433
    .local v6, "in":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v6, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 436
    :goto_54
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .local v5, "event":I
    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v5, v0, :cond_1dd

    .line 437
    const/16 v18, 0x3

    move/from16 v0, v18

    if-eq v5, v0, :cond_1dd

    .line 438
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 439
    .local v7, "name":Ljava/lang/String;
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v5, v0, :cond_c2

    .line 441
    const-string/jumbo v18, "task"

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1b2

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v6, v0}, Lcom/android/server/am/TaskRecord;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/TaskRecord;

    move-result-object v12

    .line 445
    .local v12, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v12, :cond_183

    .line 451
    iget v14, v12, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 452
    .local v14, "taskId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    .line 453
    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 452
    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v14, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(IZI)Lcom/android/server/am/TaskRecord;

    move-result-object v18

    if-eqz v18, :cond_11c

    .line 455
    const-string/jumbo v18, "TaskPersister"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Existing task with taskId "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "found"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    .end local v12    # "task":Lcom/android/server/am/TaskRecord;
    .end local v14    # "taskId":I
    :cond_c2
    :goto_c2
    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_c5} :catch_c6
    .catchall {:try_start_4d .. :try_end_c5} :catchall_155

    goto :goto_54

    .line 478
    .end local v5    # "event":I
    .end local v6    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "name":Ljava/lang/String;
    :catch_c6
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    move-object v8, v9

    .line 479
    .end local v9    # "reader":Ljava/io/BufferedReader;
    :goto_c8
    :try_start_c8
    const-string/jumbo v18, "TaskPersister"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Unable to parse "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ". Error "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 480
    const-string/jumbo v18, "TaskPersister"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Failing file: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/am/TaskPersister;->fileToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10f
    .catchall {:try_start_c8 .. :try_end_10f} :catchall_23b

    .line 481
    const/4 v3, 0x1

    .line 483
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 484
    if-eqz v3, :cond_118

    .line 486
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 422
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_118
    :goto_118
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_34

    .line 456
    .restart local v5    # "event":I
    .restart local v6    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v12    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v14    # "taskId":I
    :cond_11c
    :try_start_11c
    iget v0, v12, Lcom/android/server/am/TaskRecord;->userId:I

    move/from16 v18, v0

    move/from16 v0, p1

    move/from16 v1, v18

    if-eq v0, v1, :cond_160

    .line 458
    const-string/jumbo v18, "TaskPersister"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Task with userId "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v12, Lcom/android/server/am/TaskRecord;->userId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " found in "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 459
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    .line 458
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_153
    .catch Ljava/lang/Exception; {:try_start_11c .. :try_end_153} :catch_c6
    .catchall {:try_start_11c .. :try_end_153} :catchall_155

    goto/16 :goto_c2

    .line 482
    .end local v5    # "event":I
    .end local v6    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "name":Ljava/lang/String;
    .end local v12    # "task":Lcom/android/server/am/TaskRecord;
    .end local v14    # "taskId":I
    :catchall_155
    move-exception v18

    move-object v8, v9

    .line 483
    .end local v9    # "reader":Ljava/io/BufferedReader;
    :goto_157
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 484
    if-eqz v3, :cond_15f

    .line 486
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 482
    :cond_15f
    throw v18

    .line 462
    .restart local v5    # "event":I
    .restart local v6    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v12    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v14    # "taskId":I
    :cond_160
    :try_start_160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v14, v1}, Lcom/android/server/am/ActivityStackSupervisor;->setNextTaskIdForUserLocked(II)V

    .line 463
    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v12, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    .line 464
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c2

    .line 468
    .end local v14    # "taskId":I
    :cond_183
    const-string/jumbo v18, "TaskPersister"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "restoreTasksForUserLocked: Unable to restore taskFile="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 469
    const-string/jumbo v20, ": "

    .line 468
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 469
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/am/TaskPersister;->fileToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v20

    .line 468
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c2

    .line 472
    .end local v12    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1b2
    const-string/jumbo v18, "TaskPersister"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "restoreTasksForUserLocked: Unknown xml event="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 473
    const-string/jumbo v20, " name="

    .line 472
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1db
    .catch Ljava/lang/Exception; {:try_start_160 .. :try_end_1db} :catch_c6
    .catchall {:try_start_160 .. :try_end_1db} :catchall_155

    goto/16 :goto_c2

    .line 483
    .end local v7    # "name":Ljava/lang/String;
    :cond_1dd
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 484
    if-eqz v3, :cond_1e5

    .line 486
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    :cond_1e5
    move-object v8, v9

    .end local v9    # "reader":Ljava/io/BufferedReader;
    .local v8, "reader":Ljava/io/BufferedReader;
    goto/16 :goto_118

    .line 492
    .end local v3    # "deleteFile":Z
    .end local v5    # "event":I
    .end local v6    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .end local v13    # "taskFile":Ljava/io/File;
    :cond_1e8
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v11, v0}, Lcom/android/server/am/TaskPersister;->removeObsoleteFiles(Landroid/util/ArraySet;[Ljava/io/File;)V

    .line 496
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v15, v18, -0x1

    :goto_1f7
    if-ltz v15, :cond_22a

    .line 497
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/TaskRecord;

    .line 498
    .restart local v12    # "task":Lcom/android/server/am/TaskRecord;
    iget v0, v12, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/TaskPersister;->taskIdToTask(ILjava/util/ArrayList;)Lcom/android/server/am/TaskRecord;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 499
    iget v0, v12, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/TaskPersister;->taskIdToTask(ILjava/util/ArrayList;)Lcom/android/server/am/TaskRecord;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 496
    add-int/lit8 v15, v15, -0x1

    goto :goto_1f7

    .line 502
    .end local v12    # "task":Lcom/android/server/am/TaskRecord;
    :cond_22a
    new-instance v18, Lcom/android/server/am/TaskPersister$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/am/TaskPersister$1;-><init>(Lcom/android/server/am/TaskPersister;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 515
    return-object v16

    .line 482
    .restart local v3    # "deleteFile":Z
    .restart local v13    # "taskFile":Ljava/io/File;
    :catchall_23b
    move-exception v18

    goto/16 :goto_157

    .line 478
    .local v8, "reader":Ljava/io/BufferedReader;
    :catch_23e
    move-exception v4

    .restart local v4    # "e":Ljava/lang/Exception;
    goto/16 :goto_c8
.end method

.method saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 13
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 303
    monitor-enter p0

    .line 305
    :try_start_1
    iget-object v5, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, "queueNdx":I
    :goto_9
    if-ltz v4, :cond_25

    .line 306
    iget-object v5, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskPersister$WriteQueueItem;

    .line 307
    .local v3, "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    instance-of v5, v3, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    if-eqz v5, :cond_46

    .line 308
    move-object v0, v3

    check-cast v0, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    move-object v2, v0

    .line 309
    .local v2, "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    iget-object v5, v2, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mFilePath:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 311
    iput-object p1, v2, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mImage:Landroid/graphics/Bitmap;

    .line 316
    .end local v2    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    .end local v3    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    :cond_25
    if-gez v4, :cond_31

    .line 317
    iget-object v5, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    invoke-direct {v6, p2, p1}, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    :cond_31
    iget-object v5, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x6

    if-le v5, v6, :cond_49

    .line 320
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    .line 327
    :cond_3e
    :goto_3e
    invoke-virtual {p0}, Lcom/android/server/am/TaskPersister;->notifyAll()V
    :try_end_41
    .catchall {:try_start_1 .. :try_end_41} :catchall_5b

    monitor-exit p0

    .line 330
    invoke-direct {p0}, Lcom/android/server/am/TaskPersister;->yieldIfQueueTooDeep()V

    .line 302
    return-void

    .line 305
    .restart local v3    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    :cond_46
    add-int/lit8 v4, v4, -0x1

    goto :goto_9

    .line 321
    .end local v3    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    :cond_49
    :try_start_49
    iget-wide v6, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_3e

    .line 322
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0xbb8

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J
    :try_end_5a
    .catchall {:try_start_49 .. :try_end_5a} :catchall_5b

    goto :goto_3e

    .line 303
    .end local v4    # "queueNdx":I
    :catchall_5b
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method startPersisting()V
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/server/am/TaskPersister;->mLazyTaskWriterThread:Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;

    invoke-virtual {v0}, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_d

    .line 161
    iget-object v0, p0, Lcom/android/server/am/TaskPersister;->mLazyTaskWriterThread:Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;

    invoke-virtual {v0}, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->start()V

    .line 159
    :cond_d
    return-void
.end method

.method unloadUserDataFromMemory(I)V
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/server/am/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 248
    return-void
.end method

.method wakeup(Lcom/android/server/am/TaskRecord;Z)V
    .registers 9
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "flush"    # Z

    .prologue
    .line 253
    monitor-enter p0

    .line 254
    if-eqz p1, :cond_50

    .line 256
    :try_start_3
    iget-object v2, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "queueNdx":I
    :goto_b
    if-ltz v1, :cond_26

    .line 257
    iget-object v2, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskPersister$WriteQueueItem;

    .line 258
    .local v0, "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    instance-of v2, v0, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;

    if-eqz v2, :cond_4d

    .line 259
    check-cast v0, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;

    .end local v0    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    iget-object v2, v0, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;->mTask:Lcom/android/server/am/TaskRecord;

    if-ne v2, p1, :cond_4d

    .line 260
    iget-boolean v2, p1, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-nez v2, :cond_26

    .line 262
    invoke-direct {p0, p1}, Lcom/android/server/am/TaskPersister;->removeThumbnails(Lcom/android/server/am/TaskRecord;)V

    .line 267
    :cond_26
    if-gez v1, :cond_36

    iget-boolean v2, p1, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    if-eqz v2, :cond_36

    .line 268
    iget-object v2, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;

    invoke-direct {v3, p1}, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;-><init>(Lcom/android/server/am/TaskRecord;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    .end local v1    # "queueNdx":I
    :cond_36
    :goto_36
    if-nez p2, :cond_41

    iget-object v2, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x6

    if-le v2, v3, :cond_5f

    .line 276
    :cond_41
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    .line 283
    :cond_45
    :goto_45
    invoke-virtual {p0}, Lcom/android/server/am/TaskPersister;->notifyAll()V
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_5c

    monitor-exit p0

    .line 286
    invoke-direct {p0}, Lcom/android/server/am/TaskPersister;->yieldIfQueueTooDeep()V

    .line 252
    return-void

    .line 256
    .restart local v1    # "queueNdx":I
    :cond_4d
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 273
    .end local v1    # "queueNdx":I
    :cond_50
    :try_start_50
    iget-object v2, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/am/TaskPersister$WriteQueueItem;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/am/TaskPersister$WriteQueueItem;-><init>(Lcom/android/server/am/TaskPersister$WriteQueueItem;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5b
    .catchall {:try_start_50 .. :try_end_5b} :catchall_5c

    goto :goto_36

    .line 253
    :catchall_5c
    move-exception v2

    monitor-exit p0

    throw v2

    .line 277
    :cond_5f
    :try_start_5f
    iget-wide v2, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_45

    .line 278
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0xbb8

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J
    :try_end_70
    .catchall {:try_start_5f .. :try_end_70} :catchall_5c

    goto :goto_45
.end method

.method writePersistedTaskIdsForUser(Landroid/util/SparseBooleanArray;I)V
    .registers 12
    .param p1, "taskIds"    # Landroid/util/SparseBooleanArray;
    .param p2, "userId"    # I

    .prologue
    .line 226
    if-gez p2, :cond_3

    .line 227
    return-void

    .line 229
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/server/am/TaskPersister;->getUserPersistedTaskIdsFile(I)Ljava/io/File;

    move-result-object v2

    .line 230
    .local v2, "persistedTaskIdsFile":Ljava/io/File;
    iget-object v6, p0, Lcom/android/server/am/TaskPersister;->mIoLock:Ljava/lang/Object;

    monitor-enter v6

    .line 231
    const/4 v3, 0x0

    .line 233
    .local v3, "writer":Ljava/io/BufferedWriter;
    :try_start_b
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_15} :catch_39
    .catchall {:try_start_b .. :try_end_15} :catchall_5b

    .line 234
    .end local v3    # "writer":Ljava/io/BufferedWriter;
    .local v4, "writer":Ljava/io/BufferedWriter;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    :try_start_16
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_33

    .line 235
    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 236
    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_30} :catch_66
    .catchall {:try_start_16 .. :try_end_30} :catchall_63

    .line 234
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 243
    :cond_33
    :try_start_33
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_60

    move-object v3, v4

    .end local v1    # "i":I
    .end local v4    # "writer":Ljava/io/BufferedWriter;
    :goto_37
    monitor-exit v6

    .line 225
    return-void

    .line 240
    .restart local v3    # "writer":Ljava/io/BufferedWriter;
    :catch_39
    move-exception v0

    .line 241
    .end local v3    # "writer":Ljava/io/BufferedWriter;
    .local v0, "e":Ljava/lang/Exception;
    :goto_3a
    :try_start_3a
    const-string/jumbo v5, "TaskPersister"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error while writing taskIds file for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_54
    .catchall {:try_start_3a .. :try_end_54} :catchall_5b

    .line 243
    :try_start_54
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_58

    goto :goto_37

    .line 230
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_58
    move-exception v5

    :goto_59
    monitor-exit v6

    throw v5

    .line 242
    :catchall_5b
    move-exception v5

    .line 243
    :goto_5c
    :try_start_5c
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 242
    throw v5
    :try_end_60
    .catchall {:try_start_5c .. :try_end_60} :catchall_58

    .line 230
    .restart local v1    # "i":I
    .restart local v4    # "writer":Ljava/io/BufferedWriter;
    :catchall_60
    move-exception v5

    move-object v3, v4

    .end local v4    # "writer":Ljava/io/BufferedWriter;
    .local v3, "writer":Ljava/io/BufferedWriter;
    goto :goto_59

    .line 242
    .end local v3    # "writer":Ljava/io/BufferedWriter;
    .restart local v4    # "writer":Ljava/io/BufferedWriter;
    :catchall_63
    move-exception v5

    move-object v3, v4

    .end local v4    # "writer":Ljava/io/BufferedWriter;
    .restart local v3    # "writer":Ljava/io/BufferedWriter;
    goto :goto_5c

    .line 240
    .end local v3    # "writer":Ljava/io/BufferedWriter;
    .restart local v4    # "writer":Ljava/io/BufferedWriter;
    :catch_66
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v3, v4

    .end local v4    # "writer":Ljava/io/BufferedWriter;
    .restart local v3    # "writer":Ljava/io/BufferedWriter;
    goto :goto_3a
.end method
