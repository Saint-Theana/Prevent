.class Lcom/android/server/dreams/DreamController$1;
.super Ljava/lang/Object;
.source "DreamController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/dreams/DreamController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/dreams/DreamController;


# direct methods
.method constructor <init>(Lcom/android/server/dreams/DreamController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/dreams/DreamController;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/server/dreams/DreamController$1;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$1;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->-get0(Lcom/android/server/dreams/DreamController;)Lcom/android/server/dreams/DreamController$DreamRecord;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/dreams/DreamController$1;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->-get0(Lcom/android/server/dreams/DreamController;)Lcom/android/server/dreams/DreamController$DreamRecord;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mBound:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/dreams/DreamController$1;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->-get0(Lcom/android/server/dreams/DreamController;)Lcom/android/server/dreams/DreamController$DreamRecord;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mConnected:Z

    if-eqz v0, :cond_1d

    .line 78
    :cond_1c
    :goto_1c
    return-void

    .line 80
    :cond_1d
    const-string/jumbo v0, "DreamController"

    const-string/jumbo v1, "Bound dream did not connect in the time allotted"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$1;->this$0:Lcom/android/server/dreams/DreamController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/dreams/DreamController;->stopDream(Z)V

    goto :goto_1c
.end method
