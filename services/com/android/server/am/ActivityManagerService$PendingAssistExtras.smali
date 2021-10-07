.class public Lcom/android/server/am/ActivityManagerService$PendingAssistExtras;
.super Landroid/os/Binder;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PendingAssistExtras"
.end annotation


# instance fields
.field public final activity:Lcom/android/server/am/ActivityRecord;

.field public content:Landroid/app/assist/AssistContent;

.field public final extras:Landroid/os/Bundle;

.field public haveResult:Z

.field public final hint:Ljava/lang/String;

.field public final intent:Landroid/content/Intent;

.field public final receiver:Lcom/android/internal/os/IResultReceiver;

.field public receiverExtras:Landroid/os/Bundle;

.field public result:Landroid/os/Bundle;

.field public structure:Landroid/app/assist/AssistStructure;

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field public final userHandle:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/String;Lcom/android/internal/os/IResultReceiver;Landroid/os/Bundle;I)V
    .registers 11
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "_activity"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "_extras"    # Landroid/os/Bundle;
    .param p4, "_intent"    # Landroid/content/Intent;
    .param p5, "_hint"    # Ljava/lang/String;
    .param p6, "_receiver"    # Lcom/android/internal/os/IResultReceiver;
    .param p7, "_receiverExtras"    # Landroid/os/Bundle;
    .param p8, "_userHandle"    # I

    .prologue
    const/4 v1, 0x0

    .line 707
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$PendingAssistExtras;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 701
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$PendingAssistExtras;->haveResult:Z

    .line 702
    iput-object v1, p0, Lcom/android/server/am/ActivityManagerService$PendingAssistExtras;->result:Landroid/os/Bundle;

    .line 703
    iput-object v1, p0, Lcom/android/server/am/ActivityManagerService$PendingAssistExtras;->structure:Landroid/app/assist/AssistStructure;

    .line 704
    iput-object v1, p0, Lcom/android/server/am/ActivityManagerService$PendingAssistExtras;->content:Landroid/app/assist/AssistContent;

    .line 709
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$PendingAssistExtras;->activity:Lcom/android/server/am/ActivityRecord;

    .line 710
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$PendingAssistExtras;->extras:Landroid/os/Bundle;

    .line 711
    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$PendingAssistExtras;->intent:Landroid/content/Intent;

    .line 712
    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$PendingAssistExtras;->hint:Ljava/lang/String;

    .line 713
    iput-object p6, p0, Lcom/android/server/am/ActivityManagerService$PendingAssistExtras;->receiver:Lcom/android/internal/os/IResultReceiver;

    .line 714
    iput-object p7, p0, Lcom/android/server/am/ActivityManagerService$PendingAssistExtras;->receiverExtras:Landroid/os/Bundle;

    .line 715
    iput p8, p0, Lcom/android/server/am/ActivityManagerService$PendingAssistExtras;->userHandle:I

    .line 708
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 719
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getAssistContextExtras failed: timeout retrieving from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$PendingAssistExtras;->activity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    monitor-enter p0

    .line 721
    const/4 v0, 0x1

    :try_start_1f
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$PendingAssistExtras;->haveResult:Z

    .line 722
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService$PendingAssistExtras;->notifyAll()V
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_2b

    monitor-exit p0

    .line 724
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PendingAssistExtras;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityManagerService;->pendingAssistExtrasTimedOut(Lcom/android/server/am/ActivityManagerService$PendingAssistExtras;)V

    .line 718
    return-void

    .line 720
    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
