.class public Lcom/android/server/ServiceThread;
.super Landroid/os/HandlerThread;
.source "ServiceThread.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ServiceThread"


# instance fields
.field private final mAllowIo:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "priority"    # I
    .param p3, "allowIo"    # Z

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 34
    iput-boolean p3, p0, Lcom/android/server/ServiceThread;->mAllowIo:Z

    .line 32
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 42
    iget-boolean v0, p0, Lcom/android/server/ServiceThread;->mAllowIo:Z

    if-nez v0, :cond_33

    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 43
    const-string/jumbo v0, "ServiceThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Enabled StrictMode logging for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/ServiceThread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " looper."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_33
    invoke-super {p0}, Landroid/os/HandlerThread;->run()V

    .line 38
    return-void
.end method
