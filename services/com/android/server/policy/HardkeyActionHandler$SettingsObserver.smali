.class Lcom/android/server/policy/HardkeyActionHandler$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "HardkeyActionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/HardkeyActionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/HardkeyActionHandler;


# direct methods
.method constructor <init>(Lcom/android/server/policy/HardkeyActionHandler;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/policy/HardkeyActionHandler;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 655
    iput-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler$SettingsObserver;->this$0:Lcom/android/server/policy/HardkeyActionHandler;

    .line 656
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 655
    return-void
.end method


# virtual methods
.method observe()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 661
    iget-object v1, p0, Lcom/android/server/policy/HardkeyActionHandler$SettingsObserver;->this$0:Lcom/android/server/policy/HardkeyActionHandler;

    invoke-static {v1}, Lcom/android/server/policy/HardkeyActionHandler;->-get0(Lcom/android/server/policy/HardkeyActionHandler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 663
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/android/internal/utils/du/ActionConstants;->getDefaults(I)Lcom/android/internal/utils/du/ActionConstants$Defaults;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/utils/du/ActionConstants$Defaults;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 662
    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 670
    const-string/jumbo v1, "hardware_keys_disable"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 669
    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 673
    iget-object v1, p0, Lcom/android/server/policy/HardkeyActionHandler$SettingsObserver;->this$0:Lcom/android/server/policy/HardkeyActionHandler;

    invoke-static {v1}, Lcom/android/server/policy/HardkeyActionHandler;->-wrap0(Lcom/android/server/policy/HardkeyActionHandler;)V

    .line 659
    return-void
.end method

.method public onChange(Z)V
    .registers 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 678
    iget-object v0, p0, Lcom/android/server/policy/HardkeyActionHandler$SettingsObserver;->this$0:Lcom/android/server/policy/HardkeyActionHandler;

    invoke-static {v0}, Lcom/android/server/policy/HardkeyActionHandler;->-wrap0(Lcom/android/server/policy/HardkeyActionHandler;)V

    .line 677
    return-void
.end method
