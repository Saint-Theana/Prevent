.class Lcom/android/server/am/ActivityManagerService$7$1;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/ActivityManagerService$7;

.field final synthetic val$d:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService$7;Landroid/app/Dialog;)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/server/am/ActivityManagerService$7;
    .param p2, "val$d"    # Landroid/app/Dialog;

    .prologue
    .line 5673
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$7$1;->this$1:Lcom/android/server/am/ActivityManagerService$7;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$7$1;->val$d:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 5676
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$7$1;->this$1:Lcom/android/server/am/ActivityManagerService$7;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$7;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 5677
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$7$1;->val$d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 5678
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$7$1;->this$1:Lcom/android/server/am/ActivityManagerService$7;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$7;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerService;->mLaunchWarningShown:Z
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_19

    monitor-exit v1

    .line 5676
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 5675
    return-void

    .line 5676
    :catchall_19
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method
