.class final Lcom/android/server/media/MediaSessionService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "MediaSessionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final mSecureSettingsUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/media/MediaSessionService;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/media/MediaSessionService$SettingsObserver;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService$SettingsObserver;->observe()V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/media/MediaSessionService;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/media/MediaSessionService;

    .prologue
    .line 626
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SettingsObserver;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 627
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 624
    const-string/jumbo v0, "enabled_notification_listeners"

    .line 623
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$SettingsObserver;->mSecureSettingsUri:Landroid/net/Uri;

    .line 626
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/media/MediaSessionService;Lcom/android/server/media/MediaSessionService$SettingsObserver;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/media/MediaSessionService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService$SettingsObserver;-><init>(Lcom/android/server/media/MediaSessionService;)V

    return-void
.end method

.method private observe()V
    .registers 5

    .prologue
    .line 631
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SettingsObserver;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-get4(Lcom/android/server/media/MediaSessionService;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SettingsObserver;->mSecureSettingsUri:Landroid/net/Uri;

    .line 632
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 631
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 630
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SettingsObserver;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-wrap7(Lcom/android/server/media/MediaSessionService;)V

    .line 636
    return-void
.end method
