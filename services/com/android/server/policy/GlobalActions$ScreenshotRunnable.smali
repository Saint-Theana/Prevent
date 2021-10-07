.class Lcom/android/server/policy/GlobalActions$ScreenshotRunnable;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScreenshotRunnable"
.end annotation


# instance fields
.field private mScreenshotFullscreen:I

.field private mScreenshotSelectedRegion:I

.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 992
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$ScreenshotRunnable;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 993
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/policy/GlobalActions$ScreenshotRunnable;->mScreenshotFullscreen:I

    .line 994
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/policy/GlobalActions$ScreenshotRunnable;->mScreenshotSelectedRegion:I

    .line 992
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$ScreenshotRunnable;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get5(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1008
    const-string/jumbo v1, "screenshot_type"

    const/4 v2, 0x0

    .line 1007
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1008
    const/4 v1, 0x1

    .line 1007
    if-ne v0, v1, :cond_1d

    .line 1009
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$ScreenshotRunnable;->this$0:Lcom/android/server/policy/GlobalActions;

    iget v1, p0, Lcom/android/server/policy/GlobalActions$ScreenshotRunnable;->mScreenshotSelectedRegion:I

    invoke-static {v0, v1}, Lcom/android/server/policy/GlobalActions;->-wrap6(Lcom/android/server/policy/GlobalActions;I)V

    .line 1006
    :goto_1c
    return-void

    .line 1011
    :cond_1d
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$ScreenshotRunnable;->this$0:Lcom/android/server/policy/GlobalActions;

    iget v1, p0, Lcom/android/server/policy/GlobalActions$ScreenshotRunnable;->mScreenshotFullscreen:I

    invoke-static {v0, v1}, Lcom/android/server/policy/GlobalActions;->-wrap6(Lcom/android/server/policy/GlobalActions;I)V

    goto :goto_1c
.end method

.method public setScreenshotType(I)V
    .registers 5
    .param p1, "screenshotType"    # I

    .prologue
    .line 997
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$ScreenshotRunnable;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get5(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 998
    const-string/jumbo v1, "screenshot_type"

    const/4 v2, 0x0

    .line 997
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 998
    const/4 v1, 0x1

    .line 997
    if-ne v0, v1, :cond_18

    .line 999
    iput p1, p0, Lcom/android/server/policy/GlobalActions$ScreenshotRunnable;->mScreenshotSelectedRegion:I

    .line 996
    :goto_17
    return-void

    .line 1001
    :cond_18
    iput p1, p0, Lcom/android/server/policy/GlobalActions$ScreenshotRunnable;->mScreenshotFullscreen:I

    goto :goto_17
.end method
