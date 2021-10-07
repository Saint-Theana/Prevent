.class Lcom/android/server/vr/VrManagerService$3;
.super Landroid/service/vr/IVrManager$Stub;
.source "VrManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/VrManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/VrManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/vr/VrManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/vr/VrManagerService;

    .prologue
    .line 352
    iput-object p1, p0, Lcom/android/server/vr/VrManagerService$3;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-direct {p0}, Landroid/service/vr/IVrManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 14
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 381
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$3;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-virtual {v8}, Lcom/android/server/vr/VrManagerService;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string/jumbo v9, "android.permission.DUMP"

    invoke-virtual {v8, v9}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_3a

    .line 383
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "permission denied: can\'t dump VrManagerService from pid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 384
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    .line 383
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 384
    const-string/jumbo v9, ", uid="

    .line 383
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 384
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 383
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 385
    return-void

    .line 387
    :cond_3a
    const-string/jumbo v8, "********* Dump of VrManagerService *********"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 388
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "VR mode is currently: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$3;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v8}, Lcom/android/server/vr/VrManagerService;->-get4(Lcom/android/server/vr/VrManagerService;)Z

    move-result v8

    if-eqz v8, :cond_9f

    const-string/jumbo v8, "allowed"

    :goto_57
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 389
    const-string/jumbo v8, "Previous state transitions:\n"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 390
    const-string/jumbo v6, "  "

    .line 391
    .local v6, "tab":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$3;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v8, p2}, Lcom/android/server/vr/VrManagerService;->-wrap5(Lcom/android/server/vr/VrManagerService;Ljava/io/PrintWriter;)V

    .line 392
    const-string/jumbo v8, "\n\nRemote Callbacks:"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 393
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$3;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v8}, Lcom/android/server/vr/VrManagerService;->-get3(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .local v1, "i":I
    move v2, v1

    .line 394
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_81
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-lez v2, :cond_a3

    .line 395
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 396
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$3;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v8}, Lcom/android/server/vr/VrManagerService;->-get3(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 397
    if-lez v1, :cond_9d

    const-string/jumbo v8, ","

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_9d
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_81

    .line 388
    .end local v2    # "i":I
    .end local v6    # "tab":Ljava/lang/String;
    :cond_9f
    const-string/jumbo v8, "disallowed"

    goto :goto_57

    .line 399
    .restart local v1    # "i":I
    .restart local v6    # "tab":Ljava/lang/String;
    :cond_a3
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$3;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v8}, Lcom/android/server/vr/VrManagerService;->-get3(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 400
    const-string/jumbo v8, "\n"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 401
    const-string/jumbo v8, "Installed VrListenerService components:"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 402
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$3;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v8}, Lcom/android/server/vr/VrManagerService;->-get1(Lcom/android/server/vr/VrManagerService;)I

    move-result v7

    .line 403
    .local v7, "userId":I
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$3;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v8}, Lcom/android/server/vr/VrManagerService;->-get0(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/vr/EnabledComponentsObserver;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/server/vr/EnabledComponentsObserver;->getInstalled(I)Landroid/util/ArraySet;

    move-result-object v3

    .line 404
    .local v3, "installed":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    if-eqz v3, :cond_d0

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-nez v8, :cond_101

    .line 405
    :cond_d0
    const-string/jumbo v8, "None"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 412
    :cond_d6
    const-string/jumbo v8, "Enabled VrListenerService components:"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 413
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$3;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v8}, Lcom/android/server/vr/VrManagerService;->-get0(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/vr/EnabledComponentsObserver;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/server/vr/EnabledComponentsObserver;->getEnabled(I)Landroid/util/ArraySet;

    move-result-object v0

    .line 414
    .local v0, "enabled":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    if-eqz v0, :cond_ee

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-nez v8, :cond_11c

    .line 415
    :cond_ee
    const-string/jumbo v8, "None"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 422
    :cond_f4
    const-string/jumbo v8, "\n"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 423
    const-string/jumbo v8, "********* End of VrManagerService Dump *********"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 380
    return-void

    .line 407
    .end local v0    # "enabled":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    :cond_101
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "n$iterator":Ljava/util/Iterator;
    :goto_105
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 408
    .local v4, "n":Landroid/content/ComponentName;
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 409
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_105

    .line 417
    .end local v4    # "n":Landroid/content/ComponentName;
    .end local v5    # "n$iterator":Ljava/util/Iterator;
    .restart local v0    # "enabled":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    :cond_11c
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "n$iterator":Ljava/util/Iterator;
    :goto_120
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 418
    .restart local v4    # "n":Landroid/content/ComponentName;
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 419
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_120
.end method

.method public getVrModeState()Z
    .registers 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$3;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0}, Lcom/android/server/vr/VrManagerService;->-wrap0(Lcom/android/server/vr/VrManagerService;)Z

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    .registers 4
    .param p1, "cb"    # Landroid/service/vr/IVrStateCallbacks;

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$3;->this$0:Lcom/android/server/vr/VrManagerService;

    const-string/jumbo v1, "android.permission.ACCESS_VR_MANAGER"

    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->-wrap6(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;)V

    .line 357
    if-nez p1, :cond_13

    .line 358
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Callback binder object is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_13
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$3;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/VrManagerService;->-wrap3(Lcom/android/server/vr/VrManagerService;Landroid/service/vr/IVrStateCallbacks;)V

    .line 355
    return-void
.end method

.method public unregisterListener(Landroid/service/vr/IVrStateCallbacks;)V
    .registers 4
    .param p1, "cb"    # Landroid/service/vr/IVrStateCallbacks;

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$3;->this$0:Lcom/android/server/vr/VrManagerService;

    const-string/jumbo v1, "android.permission.ACCESS_VR_MANAGER"

    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->-wrap6(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;)V

    .line 367
    if-nez p1, :cond_13

    .line 368
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Callback binder object is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_13
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$3;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/VrManagerService;->-wrap10(Lcom/android/server/vr/VrManagerService;Landroid/service/vr/IVrStateCallbacks;)V

    .line 365
    return-void
.end method
