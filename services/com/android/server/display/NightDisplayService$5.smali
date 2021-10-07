.class Lcom/android/server/display/NightDisplayService$5;
.super Ljava/lang/Object;
.source "NightDisplayService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/NightDisplayService;->setBrightness(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/NightDisplayService;

.field final synthetic val$activated:Z


# direct methods
.method constructor <init>(Lcom/android/server/display/NightDisplayService;Z)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/display/NightDisplayService;
    .param p2, "val$activated"    # Z

    .prologue
    .line 349
    iput-object p1, p0, Lcom/android/server/display/NightDisplayService$5;->this$0:Lcom/android/server/display/NightDisplayService;

    iput-boolean p2, p0, Lcom/android/server/display/NightDisplayService$5;->val$activated:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, -0x2

    .line 351
    iget-boolean v1, p0, Lcom/android/server/display/NightDisplayService$5;->val$activated:Z

    if-eqz v1, :cond_1c

    .line 352
    iget-object v1, p0, Lcom/android/server/display/NightDisplayService$5;->this$0:Lcom/android/server/display/NightDisplayService;

    invoke-virtual {v1}, Lcom/android/server/display/NightDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 353
    const-string/jumbo v2, "screen_auto_brightness_adj"

    iget-object v3, p0, Lcom/android/server/display/NightDisplayService$5;->this$0:Lcom/android/server/display/NightDisplayService;

    invoke-static {v3}, Lcom/android/server/display/NightDisplayService;->-get2(Lcom/android/server/display/NightDisplayService;)F

    move-result v3

    .line 352
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 350
    :goto_1b
    return-void

    .line 356
    :cond_1c
    iget-object v1, p0, Lcom/android/server/display/NightDisplayService$5;->this$0:Lcom/android/server/display/NightDisplayService;

    invoke-virtual {v1}, Lcom/android/server/display/NightDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 357
    const-string/jumbo v2, "night_autobrightness_uservalue"

    const/4 v3, 0x0

    .line 356
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 358
    .local v0, "userAutoVal":F
    iget-object v1, p0, Lcom/android/server/display/NightDisplayService$5;->this$0:Lcom/android/server/display/NightDisplayService;

    invoke-virtual {v1}, Lcom/android/server/display/NightDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 359
    const-string/jumbo v2, "screen_auto_brightness_adj"

    .line 358
    invoke-static {v1, v2, v0, v4}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    goto :goto_1b
.end method
