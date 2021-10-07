.class final Lcom/android/server/pocket/PocketService$PocketServiceWrapper;
.super Landroid/pocket/IPocketService$Stub;
.source "PocketService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pocket/PocketService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PocketServiceWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pocket/PocketService;


# direct methods
.method private constructor <init>(Lcom/android/server/pocket/PocketService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/pocket/PocketService;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/server/pocket/PocketService$PocketServiceWrapper;->this$0:Lcom/android/server/pocket/PocketService;

    invoke-direct {p0}, Landroid/pocket/IPocketService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pocket/PocketService;Lcom/android/server/pocket/PocketService$PocketServiceWrapper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/pocket/PocketService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pocket/PocketService$PocketServiceWrapper;-><init>(Lcom/android/server/pocket/PocketService;)V

    return-void
.end method


# virtual methods
.method public addCallback(Landroid/pocket/IPocketCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/pocket/IPocketCallback;

    .prologue
    .line 298
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 299
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 300
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 301
    iget-object v1, p0, Lcom/android/server/pocket/PocketService$PocketServiceWrapper;->this$0:Lcom/android/server/pocket/PocketService;

    invoke-static {v1}, Lcom/android/server/pocket/PocketService;->-get2(Lcom/android/server/pocket/PocketService;)Lcom/android/server/pocket/PocketService$PocketHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/pocket/PocketService$PocketHandler;->sendMessage(Landroid/os/Message;)Z

    .line 297
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 343
    iget-object v2, p0, Lcom/android/server/pocket/PocketService$PocketServiceWrapper;->this$0:Lcom/android/server/pocket/PocketService;

    invoke-static {v2}, Lcom/android/server/pocket/PocketService;->-get1(Lcom/android/server/pocket/PocketService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3a

    .line 345
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Permission Denial: can\'t dump Pocket from from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 346
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 345
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 347
    const-string/jumbo v3, ", uid="

    .line 345
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 347
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 345
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 348
    return-void

    .line 351
    :cond_3a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 353
    .local v0, "ident":J
    :try_start_3e
    iget-object v2, p0, Lcom/android/server/pocket/PocketService$PocketServiceWrapper;->this$0:Lcom/android/server/pocket/PocketService;

    invoke-static {v2, p2}, Lcom/android/server/pocket/PocketService;->-wrap1(Lcom/android/server/pocket/PocketService;Ljava/io/PrintWriter;)V
    :try_end_43
    .catchall {:try_start_3e .. :try_end_43} :catchall_47

    .line 355
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 342
    return-void

    .line 354
    :catchall_47
    move-exception v2

    .line 355
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 354
    throw v2
.end method

.method public isDeviceInPocket()Z
    .registers 4

    .prologue
    .line 330
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 332
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pocket/PocketService$PocketServiceWrapper;->this$0:Lcom/android/server/pocket/PocketService;

    invoke-static {v2}, Lcom/android/server/pocket/PocketService;->-get4(Lcom/android/server/pocket/PocketService;)Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/android/server/pocket/PocketService$PocketServiceWrapper;->this$0:Lcom/android/server/pocket/PocketService;

    invoke-static {v2}, Lcom/android/server/pocket/PocketService;->-get3(Lcom/android/server/pocket/PocketService;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 335
    iget-object v2, p0, Lcom/android/server/pocket/PocketService$PocketServiceWrapper;->this$0:Lcom/android/server/pocket/PocketService;

    invoke-static {v2}, Lcom/android/server/pocket/PocketService;->-wrap0(Lcom/android/server/pocket/PocketService;)Z
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_23

    move-result v2

    .line 337
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 335
    return v2

    .line 333
    :cond_1e
    const/4 v2, 0x0

    .line 337
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 333
    return v2

    .line 336
    :catchall_23
    move-exception v2

    .line 337
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 336
    throw v2
.end method

.method public onInteractiveChanged(Z)V
    .registers 4
    .param p1, "interactive"    # Z

    .prologue
    .line 314
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 315
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 316
    if-eqz p1, :cond_17

    const/4 v1, 0x1

    :goto_b
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 317
    iget-object v1, p0, Lcom/android/server/pocket/PocketService$PocketServiceWrapper;->this$0:Lcom/android/server/pocket/PocketService;

    invoke-static {v1}, Lcom/android/server/pocket/PocketService;->-get2(Lcom/android/server/pocket/PocketService;)Lcom/android/server/pocket/PocketService$PocketHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/pocket/PocketService$PocketHandler;->sendMessage(Landroid/os/Message;)Z

    .line 313
    return-void

    .line 316
    :cond_17
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public removeCallback(Landroid/pocket/IPocketCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/pocket/IPocketCallback;

    .prologue
    .line 306
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 307
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 308
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 309
    iget-object v1, p0, Lcom/android/server/pocket/PocketService$PocketServiceWrapper;->this$0:Lcom/android/server/pocket/PocketService;

    invoke-static {v1}, Lcom/android/server/pocket/PocketService;->-get2(Lcom/android/server/pocket/PocketService;)Lcom/android/server/pocket/PocketService$PocketHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/pocket/PocketService$PocketHandler;->sendMessage(Landroid/os/Message;)Z

    .line 305
    return-void
.end method

.method public setListeningExternal(Z)V
    .registers 4
    .param p1, "listen"    # Z

    .prologue
    .line 322
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 323
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x9

    iput v1, v0, Landroid/os/Message;->what:I

    .line 324
    if-eqz p1, :cond_18

    const/4 v1, 0x1

    :goto_c
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 325
    iget-object v1, p0, Lcom/android/server/pocket/PocketService$PocketServiceWrapper;->this$0:Lcom/android/server/pocket/PocketService;

    invoke-static {v1}, Lcom/android/server/pocket/PocketService;->-get2(Lcom/android/server/pocket/PocketService;)Lcom/android/server/pocket/PocketService$PocketHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/pocket/PocketService$PocketHandler;->sendMessage(Landroid/os/Message;)Z

    .line 321
    return-void

    .line 324
    :cond_18
    const/4 v1, 0x0

    goto :goto_c
.end method
