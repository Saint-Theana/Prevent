.class Lcom/android/server/display/NightDisplayService$6;
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
    .line 366
    iput-object p1, p0, Lcom/android/server/display/NightDisplayService$6;->this$0:Lcom/android/server/display/NightDisplayService;

    iput-boolean p2, p0, Lcom/android/server/display/NightDisplayService$6;->val$activated:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, -0x2

    .line 369
    iget-boolean v1, p0, Lcom/android/server/display/NightDisplayService$6;->val$activated:Z

    if-eqz v1, :cond_1c

    .line 370
    iget-object v1, p0, Lcom/android/server/display/NightDisplayService$6;->this$0:Lcom/android/server/display/NightDisplayService;

    invoke-virtual {v1}, Lcom/android/server/display/NightDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 371
    const-string/jumbo v2, "screen_brightness"

    iget-object v3, p0, Lcom/android/server/display/NightDisplayService$6;->this$0:Lcom/android/server/display/NightDisplayService;

    invoke-static {v3}, Lcom/android/server/display/NightDisplayService;->-get10(Lcom/android/server/display/NightDisplayService;)I

    move-result v3

    .line 370
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 368
    :goto_1b
    return-void

    .line 374
    :cond_1c
    iget-object v1, p0, Lcom/android/server/display/NightDisplayService$6;->this$0:Lcom/android/server/display/NightDisplayService;

    invoke-virtual {v1}, Lcom/android/server/display/NightDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 375
    const-string/jumbo v2, "night_manbrightness_uservalue"

    const/4 v3, 0x0

    .line 374
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 376
    .local v0, "userManualVal":I
    iget-object v1, p0, Lcom/android/server/display/NightDisplayService$6;->this$0:Lcom/android/server/display/NightDisplayService;

    invoke-virtual {v1}, Lcom/android/server/display/NightDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 377
    const-string/jumbo v2, "screen_brightness"

    .line 376
    invoke-static {v1, v2, v0, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_1b
.end method
