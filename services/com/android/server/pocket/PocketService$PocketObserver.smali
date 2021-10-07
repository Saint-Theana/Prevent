.class Lcom/android/server/pocket/PocketService$PocketObserver;
.super Landroid/database/ContentObserver;
.source "PocketService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pocket/PocketService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PocketObserver"
.end annotation


# instance fields
.field private mRegistered:Z

.field final synthetic this$0:Lcom/android/server/pocket/PocketService;


# direct methods
.method public constructor <init>(Lcom/android/server/pocket/PocketService;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/pocket/PocketService;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/server/pocket/PocketService$PocketObserver;->this$0:Lcom/android/server/pocket/PocketService;

    .line 169
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 168
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 7
    .param p1, "selfChange"    # Z

    .prologue
    .line 174
    iget-object v1, p0, Lcom/android/server/pocket/PocketService$PocketObserver;->this$0:Lcom/android/server/pocket/PocketService;

    invoke-static {v1}, Lcom/android/server/pocket/PocketService;->-get1(Lcom/android/server/pocket/PocketService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 175
    const-string/jumbo v2, "pocket_judge"

    const/4 v3, 0x0

    const/4 v4, -0x2

    .line 174
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 175
    const/4 v2, 0x1

    .line 174
    if-ne v1, v2, :cond_1d

    const/4 v0, 0x1

    .line 176
    .local v0, "enabled":Z
    :goto_17
    iget-object v1, p0, Lcom/android/server/pocket/PocketService$PocketObserver;->this$0:Lcom/android/server/pocket/PocketService;

    invoke-static {v1, v0}, Lcom/android/server/pocket/PocketService;->-wrap12(Lcom/android/server/pocket/PocketService;Z)V

    .line 173
    return-void

    .line 174
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

    .line 180
    iget-boolean v0, p0, Lcom/android/server/pocket/PocketService$PocketObserver;->mRegistered:Z

    if-nez v0, :cond_1b

    .line 181
    iget-object v0, p0, Lcom/android/server/pocket/PocketService$PocketObserver;->this$0:Lcom/android/server/pocket/PocketService;

    invoke-static {v0}, Lcom/android/server/pocket/PocketService;->-get1(Lcom/android/server/pocket/PocketService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 182
    const-string/jumbo v1, "pocket_judge"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 181
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 183
    iput-boolean v2, p0, Lcom/android/server/pocket/PocketService$PocketObserver;->mRegistered:Z

    .line 179
    :cond_1b
    return-void
.end method

.method public unregister()V
    .registers 2

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/android/server/pocket/PocketService$PocketObserver;->mRegistered:Z

    if-eqz v0, :cond_14

    .line 189
    iget-object v0, p0, Lcom/android/server/pocket/PocketService$PocketObserver;->this$0:Lcom/android/server/pocket/PocketService;

    invoke-static {v0}, Lcom/android/server/pocket/PocketService;->-get1(Lcom/android/server/pocket/PocketService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pocket/PocketService$PocketObserver;->mRegistered:Z

    .line 187
    :cond_14
    return-void
.end method
