.class Lcom/android/server/display/NightDisplayService$3;
.super Ljava/lang/Object;
.source "NightDisplayService.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/NightDisplayService;->onActivated(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/NightDisplayService;

.field final synthetic val$dtm:Lcom/android/server/display/DisplayTransformManager;


# direct methods
.method constructor <init>(Lcom/android/server/display/NightDisplayService;Lcom/android/server/display/DisplayTransformManager;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/display/NightDisplayService;
    .param p2, "val$dtm"    # Lcom/android/server/display/DisplayTransformManager;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/android/server/display/NightDisplayService$3;->this$0:Lcom/android/server/display/NightDisplayService;

    iput-object p2, p0, Lcom/android/server/display/NightDisplayService$3;->val$dtm:Lcom/android/server/display/DisplayTransformManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 305
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 306
    .local v0, "value":[F
    iget-object v1, p0, Lcom/android/server/display/NightDisplayService$3;->val$dtm:Lcom/android/server/display/DisplayTransformManager;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, v0}, Lcom/android/server/display/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 304
    return-void
.end method
