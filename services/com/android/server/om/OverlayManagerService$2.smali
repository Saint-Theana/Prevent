.class Lcom/android/server/om/OverlayManagerService$2;
.super Ljava/lang/Object;
.source "OverlayManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/om/OverlayManagerService;->schedulePersistSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/om/OverlayManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/om/OverlayManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/om/OverlayManagerService;

    .prologue
    .line 738
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 741
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerService;->-get4(Lcom/android/server/om/OverlayManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 742
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerService;->-get2(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 743
    const/4 v1, 0x0

    .line 745
    .local v1, "stream":Ljava/io/FileOutputStream;
    :try_start_12
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerService;->-get6(Lcom/android/server/om/OverlayManagerService;)Landroid/util/AtomicFile;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 746
    .local v1, "stream":Ljava/io/FileOutputStream;
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerService;->-get5(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerSettings;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/om/OverlayManagerSettings;->persist(Ljava/io/OutputStream;)V

    .line 747
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerService;->-get6(Lcom/android/server/om/OverlayManagerService;)Landroid/util/AtomicFile;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_2e} :catch_30
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_2e} :catch_30
    .catchall {:try_start_12 .. :try_end_2e} :catchall_44

    .end local v1    # "stream":Ljava/io/FileOutputStream;
    :goto_2e
    monitor-exit v3

    .line 740
    return-void

    .line 748
    :catch_30
    move-exception v0

    .line 749
    .local v0, "e":Ljava/lang/Exception;
    :try_start_31
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerService;->-get6(Lcom/android/server/om/OverlayManagerService;)Landroid/util/AtomicFile;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 750
    const-string/jumbo v2, "OverlayManager"

    const-string/jumbo v4, "failed to persist overlay state"

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_43
    .catchall {:try_start_31 .. :try_end_43} :catchall_44

    goto :goto_2e

    .line 742
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_44
    move-exception v2

    monitor-exit v3

    throw v2
.end method
