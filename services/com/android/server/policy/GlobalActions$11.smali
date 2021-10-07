.class Lcom/android/server/policy/GlobalActions$11;
.super Lcom/android/server/policy/GlobalActions$SinglePressAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->createDialog()Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;II)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;
    .param p2, "$anonymous0"    # I
    .param p3, "$anonymous1"    # I

    .prologue
    .line 472
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$11;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0, p2, p3}, Lcom/android/server/policy/GlobalActions$SinglePressAction;-><init>(II)V

    .line 473
    return-void
.end method


# virtual methods
.method public onLongPress()Z
    .registers 2

    .prologue
    .line 481
    const/4 v0, 0x0

    return v0
.end method

.method public onPress()V
    .registers 3

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$11;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get5(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v0

    .line 477
    const-string/jumbo v1, "action_onthego_toggle"

    .line 476
    invoke-static {v0, v1}, Lcom/android/internal/util/rr/OnTheGoActions;->processAction(Landroid/content/Context;Ljava/lang/String;)V

    .line 475
    return-void
.end method

.method public showBeforeProvisioning()Z
    .registers 2

    .prologue
    .line 489
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .registers 2

    .prologue
    .line 485
    const/4 v0, 0x1

    return v0
.end method
