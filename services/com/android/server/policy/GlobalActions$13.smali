.class Lcom/android/server/policy/GlobalActions$13;
.super Lcom/android/server/policy/GlobalActions$SinglePressAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->getScreenshotAction()Lcom/android/server/policy/GlobalActions$Action;
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
    .line 667
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$13;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0, p2, p3}, Lcom/android/server/policy/GlobalActions$SinglePressAction;-><init>(II)V

    .line 668
    return-void
.end method


# virtual methods
.method public onPress()V
    .registers 4

    .prologue
    .line 671
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$13;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get5(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 672
    const-string/jumbo v1, "screenshot_type"

    const/4 v2, 0x0

    .line 671
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 672
    const/4 v1, 0x1

    .line 671
    if-ne v0, v1, :cond_21

    .line 673
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$13;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$13;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->-get18(Lcom/android/server/policy/GlobalActions;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/policy/GlobalActions;->-wrap6(Lcom/android/server/policy/GlobalActions;I)V

    .line 670
    :goto_20
    return-void

    .line 675
    :cond_21
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$13;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$13;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->-get16(Lcom/android/server/policy/GlobalActions;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/policy/GlobalActions;->-wrap6(Lcom/android/server/policy/GlobalActions;I)V

    goto :goto_20
.end method

.method public showBeforeProvisioning()Z
    .registers 2

    .prologue
    .line 684
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .registers 2

    .prologue
    .line 680
    const/4 v0, 0x1

    return v0
.end method
