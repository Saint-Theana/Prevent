.class Lcom/android/server/accessibility/AccessibilityManagerService$UserState$1;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 4251
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState$1;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 4254
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState$1;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->-get3(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Landroid/os/IBinder;

    move-result-object v0

    .line 4255
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState$1;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->-get0(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v1

    const/4 v2, 0x0

    .line 4254
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 4256
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState$1;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    invoke-static {v0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->-set3(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 4257
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState$1;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->-get1(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 4258
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState$1;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->-get1(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->binderDied()V

    .line 4253
    :cond_27
    return-void
.end method
