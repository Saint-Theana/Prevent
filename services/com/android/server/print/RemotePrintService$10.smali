.class Lcom/android/server/print/RemotePrintService$10;
.super Ljava/lang/Object;
.source "RemotePrintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/RemotePrintService;->handleStopPrinterStateTracking(Landroid/print/PrinterId;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/print/RemotePrintService;

.field final synthetic val$printerId:Landroid/print/PrinterId;


# direct methods
.method constructor <init>(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/print/RemotePrintService;
    .param p2, "val$printerId"    # Landroid/print/PrinterId;

    .prologue
    .line 477
    iput-object p1, p0, Lcom/android/server/print/RemotePrintService$10;->this$0:Lcom/android/server/print/RemotePrintService;

    iput-object p2, p0, Lcom/android/server/print/RemotePrintService$10;->val$printerId:Landroid/print/PrinterId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$10;->this$0:Lcom/android/server/print/RemotePrintService;

    iget-object v1, p0, Lcom/android/server/print/RemotePrintService$10;->val$printerId:Landroid/print/PrinterId;

    invoke-static {v0, v1}, Lcom/android/server/print/RemotePrintService;->-wrap11(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V

    .line 479
    return-void
.end method
