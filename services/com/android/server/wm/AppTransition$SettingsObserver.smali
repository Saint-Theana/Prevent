.class Lcom/android/server/wm/AppTransition$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "AppTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AppTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/AppTransition;


# direct methods
.method constructor <init>(Lcom/android/server/wm/AppTransition;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/wm/AppTransition;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 2111
    iput-object p1, p0, Lcom/android/server/wm/AppTransition$SettingsObserver;->this$0:Lcom/android/server/wm/AppTransition;

    .line 2112
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2111
    return-void
.end method


# virtual methods
.method observe()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2115
    iget-object v2, p0, Lcom/android/server/wm/AppTransition$SettingsObserver;->this$0:Lcom/android/server/wm/AppTransition;

    invoke-static {v2}, Lcom/android/server/wm/AppTransition;->-get1(Lcom/android/server/wm/AppTransition;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2117
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v2, "animation_controls_duration"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2116
    invoke-virtual {v1, v2, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2118
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_16
    const/16 v2, 0xb

    if-ge v0, v2, :cond_28

    .line 2120
    sget-object v2, Landroid/provider/Settings$System;->ACTIVITY_ANIMATION_CONTROLS:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2119
    invoke-virtual {v1, v2, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2118
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 2114
    :cond_28
    return-void
.end method

.method public onChange(Z)V
    .registers 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 2125
    iget-object v0, p0, Lcom/android/server/wm/AppTransition$SettingsObserver;->this$0:Lcom/android/server/wm/AppTransition;

    invoke-static {v0}, Lcom/android/server/wm/AppTransition;->-wrap0(Lcom/android/server/wm/AppTransition;)V

    .line 2124
    return-void
.end method
