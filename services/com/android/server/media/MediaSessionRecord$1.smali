.class Lcom/android/server/media/MediaSessionRecord$1;
.super Ljava/lang/Object;
.source "MediaSessionRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/MediaSessionRecord;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 800
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord$1;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 803
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$1;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->-get16(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$1;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->-get7(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v2

    if-eq v1, v2, :cond_1d

    const/4 v0, 0x1

    .line 804
    .local v0, "needUpdate":Z
    :goto_f
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$1;->this$0:Lcom/android/server/media/MediaSessionRecord;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/android/server/media/MediaSessionRecord;->-set12(Lcom/android/server/media/MediaSessionRecord;I)I

    .line 805
    if-eqz v0, :cond_1c

    .line 806
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$1;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->-wrap13(Lcom/android/server/media/MediaSessionRecord;)V

    .line 802
    :cond_1c
    return-void

    .line 803
    .end local v0    # "needUpdate":Z
    :cond_1d
    const/4 v0, 0x0

    .restart local v0    # "needUpdate":Z
    goto :goto_f
.end method
