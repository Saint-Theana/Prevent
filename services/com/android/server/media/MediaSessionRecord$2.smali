.class Lcom/android/server/media/MediaSessionRecord$2;
.super Ljava/lang/Object;
.source "MediaSessionRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/media/MediaSessionRecord;->postAdjustLocalVolume(IIILjava/lang/String;IZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/MediaSessionRecord;

.field final synthetic val$direction:I

.field final synthetic val$flags:I

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$previousFlagPlaySound:I

.field final synthetic val$stream:I

.field final synthetic val$uid:I

.field final synthetic val$useSuggested:Z


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaSessionRecord;ZIIILjava/lang/String;II)V
    .registers 9
    .param p1, "this$0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p2, "val$useSuggested"    # Z
    .param p3, "val$stream"    # I
    .param p4, "val$direction"    # I
    .param p5, "val$flags"    # I
    .param p6, "val$packageName"    # Ljava/lang/String;
    .param p7, "val$uid"    # I
    .param p8, "val$previousFlagPlaySound"    # I

    .prologue
    .line 466
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord$2;->this$0:Lcom/android/server/media/MediaSessionRecord;

    iput-boolean p2, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$useSuggested:Z

    iput p3, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$stream:I

    iput p4, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$direction:I

    iput p5, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$flags:I

    iput-object p6, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$packageName:Ljava/lang/String;

    iput p7, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$uid:I

    iput p8, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$previousFlagPlaySound:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 469
    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$useSuggested:Z

    if-eqz v0, :cond_38

    .line 470
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$stream:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 471
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$2;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get3(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/AudioManagerInternal;

    move-result-object v0

    iget v1, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$stream:I

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$direction:I

    .line 472
    iget v3, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$flags:I

    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$packageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$uid:I

    .line 471
    invoke-virtual/range {v0 .. v5}, Landroid/media/AudioManagerInternal;->adjustSuggestedStreamVolumeForUid(IIILjava/lang/String;I)V

    .line 468
    :goto_20
    return-void

    .line 474
    :cond_21
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$2;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get3(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/AudioManagerInternal;

    move-result-object v0

    .line 475
    iget v2, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$direction:I

    .line 476
    iget v1, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$flags:I

    iget v3, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$previousFlagPlaySound:I

    or-int/2addr v3, v1

    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$packageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$uid:I

    .line 475
    const/high16 v1, -0x80000000

    .line 474
    invoke-virtual/range {v0 .. v5}, Landroid/media/AudioManagerInternal;->adjustSuggestedStreamVolumeForUid(IIILjava/lang/String;I)V

    goto :goto_20

    .line 479
    :cond_38
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$2;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get3(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/AudioManagerInternal;

    move-result-object v0

    iget v1, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$stream:I

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$direction:I

    iget v3, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$flags:I

    .line 480
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$packageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$uid:I

    .line 479
    invoke-virtual/range {v0 .. v5}, Landroid/media/AudioManagerInternal;->adjustStreamVolumeForUid(IIILjava/lang/String;I)V

    goto :goto_20
.end method
