.class final Lcom/android/server/VibratorService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method public constructor <init>(Lcom/android/server/VibratorService;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/VibratorService;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/server/VibratorService$SettingsObserver;->this$0:Lcom/android/server/VibratorService;

    .line 268
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 267
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 273
    const-string/jumbo v0, "vibrator_intensity"

    invoke-static {v0}, Lcyanogenmod/providers/CMSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 274
    iget-object v0, p0, Lcom/android/server/VibratorService$SettingsObserver;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->-wrap5(Lcom/android/server/VibratorService;)V

    .line 272
    :goto_12
    return-void

    .line 276
    :cond_13
    iget-object v0, p0, Lcom/android/server/VibratorService$SettingsObserver;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->-wrap4(Lcom/android/server/VibratorService;)V

    goto :goto_12
.end method
