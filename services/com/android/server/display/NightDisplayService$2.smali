.class Lcom/android/server/display/NightDisplayService$2;
.super Landroid/database/ContentObserver;
.source "NightDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/NightDisplayService;->onUserChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/NightDisplayService;

.field final synthetic val$cr:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/server/display/NightDisplayService;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/display/NightDisplayService;
    .param p2, "$anonymous0"    # Landroid/os/Handler;
    .param p3, "val$cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/server/display/NightDisplayService$2;->this$0:Lcom/android/server/display/NightDisplayService;

    iput-object p3, p0, Lcom/android/server/display/NightDisplayService$2;->val$cr:Landroid/content/ContentResolver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService$2;->val$cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/server/display/NightDisplayService$2;->this$0:Lcom/android/server/display/NightDisplayService;

    invoke-static {v1}, Lcom/android/server/display/NightDisplayService;->-get6(Lcom/android/server/display/NightDisplayService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/NightDisplayService;->-wrap0(Landroid/content/ContentResolver;I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 211
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService$2;->val$cr:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 212
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService$2;->this$0:Lcom/android/server/display/NightDisplayService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/display/NightDisplayService;->-set1(Lcom/android/server/display/NightDisplayService;Landroid/database/ContentObserver;)Landroid/database/ContentObserver;

    .line 214
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService$2;->this$0:Lcom/android/server/display/NightDisplayService;

    invoke-static {v0}, Lcom/android/server/display/NightDisplayService;->-get3(Lcom/android/server/display/NightDisplayService;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 215
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService$2;->this$0:Lcom/android/server/display/NightDisplayService;

    invoke-static {v0}, Lcom/android/server/display/NightDisplayService;->-wrap2(Lcom/android/server/display/NightDisplayService;)V

    .line 209
    :cond_26
    return-void
.end method
