.class Lcom/android/server/usage/UsageStatsService$1;
.super Ljava/lang/Object;
.source "UsageStatsService.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/UsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/usage/UsageStatsService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/usage/UsageStatsService;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$1;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 2
    .param p1, "displayId"    # I

    .prologue
    .line 302
    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 8
    .param p1, "displayId"    # I

    .prologue
    .line 309
    if-nez p1, :cond_1d

    .line 310
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$1;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v1}, Lcom/android/server/usage/UsageStatsService;->-wrap1(Lcom/android/server/usage/UsageStatsService;)Z

    move-result v0

    .line 311
    .local v0, "displayOn":Z
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$1;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v1}, Lcom/android/server/usage/UsageStatsService;->-get1(Lcom/android/server/usage/UsageStatsService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 312
    :try_start_f
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$1;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v1}, Lcom/android/server/usage/UsageStatsService;->-get0(Lcom/android/server/usage/UsageStatsService;)Lcom/android/server/usage/AppIdleHistory;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v1, v0, v4, v5}, Lcom/android/server/usage/AppIdleHistory;->updateDisplayLocked(ZJ)V
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_1e

    monitor-exit v2

    .line 308
    .end local v0    # "displayOn":Z
    :cond_1d
    return-void

    .line 311
    .restart local v0    # "displayOn":Z
    :catchall_1e
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onDisplayRemoved(I)V
    .registers 2
    .param p1, "displayId"    # I

    .prologue
    .line 305
    return-void
.end method
