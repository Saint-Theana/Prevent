.class Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;
.super Lcom/android/server/am/TaskPersister$WriteQueueItem;
.source "TaskPersister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/TaskPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TaskWriteQueueItem"
.end annotation


# instance fields
.field final mTask:Lcom/android/server/am/TaskRecord;


# direct methods
.method constructor <init>(Lcom/android/server/am/TaskRecord;)V
    .registers 3
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/TaskPersister$WriteQueueItem;-><init>(Lcom/android/server/am/TaskPersister$WriteQueueItem;)V

    .line 110
    iput-object p1, p0, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;->mTask:Lcom/android/server/am/TaskRecord;

    .line 109
    return-void
.end method
