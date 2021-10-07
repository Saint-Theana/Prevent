.class Lcom/android/server/pocket/PocketBridgeService$PocketBridgeHandler;
.super Landroid/os/Handler;
.source "PocketBridgeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pocket/PocketBridgeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PocketBridgeHandler"
.end annotation


# instance fields
.field private mFileOutputStream:Ljava/io/FileOutputStream;

.field private mPrintWriter:Lcom/android/internal/util/FastPrintWriter;

.field final synthetic this$0:Lcom/android/server/pocket/PocketBridgeService;


# direct methods
.method public constructor <init>(Lcom/android/server/pocket/PocketBridgeService;Landroid/os/Looper;)V
    .registers 8
    .param p1, "this$0"    # Lcom/android/server/pocket/PocketBridgeService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/server/pocket/PocketBridgeService$PocketBridgeHandler;->this$0:Lcom/android/server/pocket/PocketBridgeService;

    .line 116
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 119
    :try_start_5
    new-instance v1, Ljava/io/FileOutputStream;

    .line 120
    invoke-static {p1}, Lcom/android/server/pocket/PocketBridgeService;->-get1(Lcom/android/server/pocket/PocketBridgeService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 121
    const v3, 0x104011c

    .line 120
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 119
    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/pocket/PocketBridgeService$PocketBridgeHandler;->mFileOutputStream:Ljava/io/FileOutputStream;

    .line 123
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    iget-object v2, p0, Lcom/android/server/pocket/PocketBridgeService$PocketBridgeHandler;->mFileOutputStream:Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    const/16 v4, 0x80

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;ZI)V

    iput-object v1, p0, Lcom/android/server/pocket/PocketBridgeService$PocketBridgeHandler;->mPrintWriter:Lcom/android/internal/util/FastPrintWriter;
    :try_end_27
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_27} :catch_28

    .line 115
    :goto_27
    return-void

    .line 125
    :catch_28
    move-exception v0

    .line 126
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-static {}, Lcom/android/server/pocket/PocketBridgeService;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Pocket bridge error occured"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/server/pocket/PocketBridgeService;->-wrap0(Lcom/android/server/pocket/PocketBridgeService;Z)V

    goto :goto_27
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 133
    iget v1, p1, Landroid/os/Message;->what:I

    if-eq v1, v0, :cond_23

    .line 134
    invoke-static {}, Lcom/android/server/pocket/PocketBridgeService;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-void

    .line 138
    :cond_23
    iget-object v1, p0, Lcom/android/server/pocket/PocketBridgeService$PocketBridgeHandler;->mPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    if-eqz v1, :cond_34

    .line 139
    iget-object v1, p0, Lcom/android/server/pocket/PocketBridgeService$PocketBridgeHandler;->mPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    iget-object v2, p0, Lcom/android/server/pocket/PocketBridgeService$PocketBridgeHandler;->this$0:Lcom/android/server/pocket/PocketBridgeService;

    invoke-static {v2}, Lcom/android/server/pocket/PocketBridgeService;->-get3(Lcom/android/server/pocket/PocketBridgeService;)Z

    move-result v2

    if-eqz v2, :cond_35

    :goto_31
    invoke-virtual {v1, v0}, Lcom/android/internal/util/FastPrintWriter;->println(I)V

    .line 132
    :cond_34
    return-void

    .line 139
    :cond_35
    const/4 v0, 0x0

    goto :goto_31
.end method
