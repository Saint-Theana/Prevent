.class Lcom/android/server/pocket/PocketBridgeService$PocketBridgeObserver;
.super Landroid/database/ContentObserver;
.source "PocketBridgeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pocket/PocketBridgeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PocketBridgeObserver"
.end annotation


# instance fields
.field private mRegistered:Z

.field final synthetic this$0:Lcom/android/server/pocket/PocketBridgeService;


# direct methods
.method public constructor <init>(Lcom/android/server/pocket/PocketBridgeService;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/pocket/PocketBridgeService;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/server/pocket/PocketBridgeService$PocketBridgeObserver;->this$0:Lcom/android/server/pocket/PocketBridgeService;

    .line 150
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 149
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 7
    .param p1, "selfChange"    # Z

    .prologue
    .line 155
    iget-object v1, p0, Lcom/android/server/pocket/PocketBridgeService$PocketBridgeObserver;->this$0:Lcom/android/server/pocket/PocketBridgeService;

    invoke-static {v1}, Lcom/android/server/pocket/PocketBridgeService;->-get1(Lcom/android/server/pocket/PocketBridgeService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 156
    const-string/jumbo v2, "pocket_judge"

    const/4 v3, 0x0

    const/4 v4, -0x2

    .line 155
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 156
    const/4 v2, 0x1

    .line 155
    if-ne v1, v2, :cond_1d

    const/4 v0, 0x1

    .line 157
    .local v0, "enabled":Z
    :goto_17
    iget-object v1, p0, Lcom/android/server/pocket/PocketBridgeService$PocketBridgeObserver;->this$0:Lcom/android/server/pocket/PocketBridgeService;

    invoke-static {v1, v0}, Lcom/android/server/pocket/PocketBridgeService;->-wrap0(Lcom/android/server/pocket/PocketBridgeService;Z)V

    .line 154
    return-void

    .line 155
    .end local v0    # "enabled":Z
    :cond_1d
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_17
.end method

.method public register()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 161
    iget-boolean v0, p0, Lcom/android/server/pocket/PocketBridgeService$PocketBridgeObserver;->mRegistered:Z

    if-nez v0, :cond_1b

    .line 162
    iget-object v0, p0, Lcom/android/server/pocket/PocketBridgeService$PocketBridgeObserver;->this$0:Lcom/android/server/pocket/PocketBridgeService;

    invoke-static {v0}, Lcom/android/server/pocket/PocketBridgeService;->-get1(Lcom/android/server/pocket/PocketBridgeService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 163
    const-string/jumbo v1, "pocket_judge"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 162
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 164
    iput-boolean v2, p0, Lcom/android/server/pocket/PocketBridgeService$PocketBridgeObserver;->mRegistered:Z

    .line 160
    :cond_1b
    return-void
.end method

.method public unregister()V
    .registers 2

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/android/server/pocket/PocketBridgeService$PocketBridgeObserver;->mRegistered:Z

    if-eqz v0, :cond_14

    .line 170
    iget-object v0, p0, Lcom/android/server/pocket/PocketBridgeService$PocketBridgeObserver;->this$0:Lcom/android/server/pocket/PocketBridgeService;

    invoke-static {v0}, Lcom/android/server/pocket/PocketBridgeService;->-get1(Lcom/android/server/pocket/PocketBridgeService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pocket/PocketBridgeService$PocketBridgeObserver;->mRegistered:Z

    .line 168
    :cond_14
    return-void
.end method
