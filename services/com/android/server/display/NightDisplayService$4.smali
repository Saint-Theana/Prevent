.class Lcom/android/server/display/NightDisplayService$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NightDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/NightDisplayService;->onActivated(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsCancelled:Z

.field final synthetic this$0:Lcom/android/server/display/NightDisplayService;

.field final synthetic val$dtm:Lcom/android/server/display/DisplayTransformManager;

.field final synthetic val$to:[F


# direct methods
.method constructor <init>(Lcom/android/server/display/NightDisplayService;Lcom/android/server/display/DisplayTransformManager;[F)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/display/NightDisplayService;
    .param p2, "val$dtm"    # Lcom/android/server/display/DisplayTransformManager;
    .param p3, "val$to"    # [F

    .prologue
    .line 309
    iput-object p1, p0, Lcom/android/server/display/NightDisplayService$4;->this$0:Lcom/android/server/display/NightDisplayService;

    iput-object p2, p0, Lcom/android/server/display/NightDisplayService$4;->val$dtm:Lcom/android/server/display/DisplayTransformManager;

    iput-object p3, p0, Lcom/android/server/display/NightDisplayService$4;->val$to:[F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 315
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/NightDisplayService$4;->mIsCancelled:Z

    .line 314
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/android/server/display/NightDisplayService$4;->mIsCancelled:Z

    if-nez v0, :cond_d

    .line 324
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService$4;->val$dtm:Lcom/android/server/display/DisplayTransformManager;

    iget-object v1, p0, Lcom/android/server/display/NightDisplayService$4;->val$to:[F

    const/16 v2, 0x64

    invoke-virtual {v0, v2, v1}, Lcom/android/server/display/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 326
    :cond_d
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService$4;->this$0:Lcom/android/server/display/NightDisplayService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/display/NightDisplayService;->-set0(Lcom/android/server/display/NightDisplayService;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 319
    return-void
.end method
