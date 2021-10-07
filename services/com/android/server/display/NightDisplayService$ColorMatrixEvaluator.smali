.class Lcom/android/server/display/NightDisplayService$ColorMatrixEvaluator;
.super Ljava/lang/Object;
.source "NightDisplayService.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/NightDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColorMatrixEvaluator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<[F>;"
    }
.end annotation


# instance fields
.field private final mResultMatrix:[F


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 654
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/NightDisplayService$ColorMatrixEvaluator;->mResultMatrix:[F

    .line 649
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/NightDisplayService$ColorMatrixEvaluator;)V
    .registers 2

    .prologue
    invoke-direct {p0}, Lcom/android/server/display/NightDisplayService$ColorMatrixEvaluator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "fraction"    # F
    .param p2, "startValue"    # Ljava/lang/Object;
    .param p3, "endValue"    # Ljava/lang/Object;

    .prologue
    .line 657
    check-cast p2, [F

    .end local p2    # "startValue":Ljava/lang/Object;
    check-cast p3, [F

    .end local p3    # "endValue":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/NightDisplayService$ColorMatrixEvaluator;->evaluate(F[F[F)[F

    move-result-object v0

    return-object v0
.end method

.method public evaluate(F[F[F)[F
    .registers 8
    .param p1, "fraction"    # F
    .param p2, "startValue"    # [F
    .param p3, "endValue"    # [F

    .prologue
    .line 658
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/NightDisplayService$ColorMatrixEvaluator;->mResultMatrix:[F

    array-length v1, v1

    if-ge v0, v1, :cond_15

    .line 659
    iget-object v1, p0, Lcom/android/server/display/NightDisplayService$ColorMatrixEvaluator;->mResultMatrix:[F

    aget v2, p2, v0

    aget v3, p3, v0

    invoke-static {v2, v3, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v2

    aput v2, v1, v0

    .line 658
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 661
    :cond_15
    iget-object v1, p0, Lcom/android/server/display/NightDisplayService$ColorMatrixEvaluator;->mResultMatrix:[F

    return-object v1
.end method
