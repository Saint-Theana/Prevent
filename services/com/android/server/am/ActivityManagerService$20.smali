.class Lcom/android/server/am/ActivityManagerService$20;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->logStrictModeViolationToDropBox(Lcom/android/server/am/ProcessRecord;Landroid/os/StrictMode$ViolationInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$dbox:Landroid/os/DropBoxManager;

.field final synthetic val$dropboxTag:Ljava/lang/String;

.field final synthetic val$sb:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Ljava/lang/StringBuilder;Landroid/os/DropBoxManager;Ljava/lang/String;)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "$anonymous0"    # Ljava/lang/String;
    .param p3, "val$sb"    # Ljava/lang/StringBuilder;
    .param p4, "val$dbox"    # Landroid/os/DropBoxManager;
    .param p5, "val$dropboxTag"    # Ljava/lang/String;

    .prologue
    .line 13885
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$20;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$20;->val$sb:Ljava/lang/StringBuilder;

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$20;->val$dbox:Landroid/os/DropBoxManager;

    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$20;->val$dropboxTag:Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 13889
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$20;->val$sb:Ljava/lang/StringBuilder;

    monitor-enter v2

    .line 13890
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$20;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 13891
    .local v0, "report":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$20;->val$sb:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$20;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 13892
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$20;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->trimToSize()V
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_29

    monitor-exit v2

    .line 13894
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_28

    .line 13895
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$20;->val$dbox:Landroid/os/DropBoxManager;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$20;->val$dropboxTag:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 13887
    :cond_28
    return-void

    .line 13889
    .end local v0    # "report":Ljava/lang/String;
    :catchall_29
    move-exception v1

    monitor-exit v2

    throw v1
.end method
