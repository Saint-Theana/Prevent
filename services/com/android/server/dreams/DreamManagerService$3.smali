.class Lcom/android/server/dreams/DreamManagerService$3;
.super Ljava/lang/Object;
.source "DreamManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/dreams/DreamManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/dreams/DreamManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/dreams/DreamManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/dreams/DreamManagerService;

    .prologue
    .line 683
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$3;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 687
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$3;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v0}, Lcom/android/server/dreams/DreamManagerService;->-get5(Lcom/android/server/dreams/DreamManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 688
    :try_start_7
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$3;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v0}, Lcom/android/server/dreams/DreamManagerService;->-get3(Lcom/android/server/dreams/DreamManagerService;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$3;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v0}, Lcom/android/server/dreams/DreamManagerService;->-get2(Lcom/android/server/dreams/DreamManagerService;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 689
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$3;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v0}, Lcom/android/server/dreams/DreamManagerService;->-get3(Lcom/android/server/dreams/DreamManagerService;)Landroid/content/ComponentName;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$3;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v2}, Lcom/android/server/dreams/DreamManagerService;->-wrap2(Lcom/android/server/dreams/DreamManagerService;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_3c

    move-result v0

    if-eqz v0, :cond_2b

    :cond_29
    :goto_29
    monitor-exit v1

    .line 685
    return-void

    .line 691
    :cond_2b
    :try_start_2b
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$3;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v0}, Lcom/android/server/dreams/DreamManagerService;->-get6(Lcom/android/server/dreams/DreamManagerService;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 692
    const-string/jumbo v4, "android.server.dreams:SYSPROP"

    .line 691
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_2b .. :try_end_3b} :catchall_3c

    goto :goto_29

    .line 687
    :catchall_3c
    move-exception v0

    monitor-exit v1

    throw v0
.end method
