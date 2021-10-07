.class final Lcom/android/server/PinnerService$BinderService;
.super Landroid/os/Binder;
.source "PinnerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PinnerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PinnerService;


# direct methods
.method private constructor <init>(Lcom/android/server/PinnerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/PinnerService;

    .prologue
    .line 333
    iput-object p1, p0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PinnerService;Lcom/android/server/PinnerService$BinderService;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/PinnerService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/PinnerService$BinderService;-><init>(Lcom/android/server/PinnerService;)V

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 336
    iget-object v1, p0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    invoke-static {v1}, Lcom/android/server/PinnerService;->-get0(Lcom/android/server/PinnerService;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "android.permission.DUMP"

    const-string/jumbo v3, "PinnerService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string/jumbo v1, "Pinned Files:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 338
    monitor-enter p0

    .line 339
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    :try_start_17
    iget-object v1, p0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    invoke-static {v1}, Lcom/android/server/PinnerService;->-get2(Lcom/android/server/PinnerService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_37

    .line 340
    iget-object v1, p0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    invoke-static {v1}, Lcom/android/server/PinnerService;->-get2(Lcom/android/server/PinnerService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PinnerService$PinnedFile;

    iget-object v1, v1, Lcom/android/server/PinnerService$PinnedFile;->mFilename:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 339
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 342
    :cond_37
    const/4 v0, 0x0

    :goto_38
    iget-object v1, p0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    invoke-static {v1}, Lcom/android/server/PinnerService;->-get1(Lcom/android/server/PinnerService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_58

    .line 343
    iget-object v1, p0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    invoke-static {v1}, Lcom/android/server/PinnerService;->-get1(Lcom/android/server/PinnerService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PinnerService$PinnedFile;

    iget-object v1, v1, Lcom/android/server/PinnerService$PinnedFile;->mFilename:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_55
    .catchall {:try_start_17 .. :try_end_55} :catchall_5a

    .line 342
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    :cond_58
    monitor-exit p0

    .line 335
    return-void

    .line 338
    :catchall_5a
    move-exception v1

    monitor-exit p0

    throw v1
.end method
