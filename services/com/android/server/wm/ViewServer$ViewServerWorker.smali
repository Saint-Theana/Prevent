.class Lcom/android/server/wm/ViewServer$ViewServerWorker;
.super Ljava/lang/Object;
.source "ViewServer.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/android/server/wm/WindowManagerService$WindowChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ViewServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewServerWorker"
.end annotation


# instance fields
.field private mClient:Ljava/net/Socket;

.field private mNeedFocusedWindowUpdate:Z

.field private mNeedWindowListUpdate:Z

.field final synthetic this$0:Lcom/android/server/wm/ViewServer;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ViewServer;Ljava/net/Socket;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/wm/ViewServer;
    .param p2, "client"    # Ljava/net/Socket;

    .prologue
    const/4 v0, 0x0

    .line 214
    iput-object p1, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object p2, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    .line 216
    iput-boolean v0, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    .line 217
    iput-boolean v0, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    .line 214
    return-void
.end method

.method private windowManagerAutolistLoop()Z
    .registers 9

    .prologue
    .line 295
    iget-object v6, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    invoke-static {v6}, Lcom/android/server/wm/ViewServer;->-get1(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/android/server/wm/WindowManagerService;->addWindowChangeListener(Lcom/android/server/wm/WindowManagerService$WindowChangeListener;)V

    .line 296
    const/4 v4, 0x0

    .line 298
    .local v4, "out":Ljava/io/BufferedWriter;
    :try_start_a
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    iget-object v7, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1a} :catch_95
    .catchall {:try_start_a .. :try_end_1a} :catchall_93

    .line 299
    .end local v4    # "out":Ljava/io/BufferedWriter;
    .local v5, "out":Ljava/io/BufferedWriter;
    :cond_1a
    :goto_1a
    :try_start_1a
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-nez v6, :cond_7d

    .line 300
    const/4 v3, 0x0

    .line 301
    .local v3, "needWindowListUpdate":Z
    const/4 v2, 0x0

    .line 302
    .local v2, "needFocusedWindowUpdate":Z
    monitor-enter p0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_23} :catch_53
    .catchall {:try_start_1a .. :try_end_23} :catchall_6c

    .line 303
    :goto_23
    :try_start_23
    iget-boolean v6, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    if-nez v6, :cond_2b

    iget-boolean v6, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    if-eqz v6, :cond_65

    .line 306
    :cond_2b
    iget-boolean v6, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    if-eqz v6, :cond_33

    .line 307
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    .line 308
    const/4 v3, 0x1

    .line 310
    :cond_33
    iget-boolean v6, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    if-eqz v6, :cond_3b

    .line 311
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z
    :try_end_3a
    .catchall {:try_start_23 .. :try_end_3a} :catchall_69

    .line 312
    const/4 v2, 0x1

    :cond_3b
    :try_start_3b
    monitor-exit p0

    .line 315
    if-eqz v3, :cond_47

    .line 316
    const-string/jumbo v6, "LIST UPDATE\n"

    invoke-virtual {v5, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 317
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->flush()V

    .line 319
    :cond_47
    if-eqz v2, :cond_1a

    .line 320
    const-string/jumbo v6, "ACTION_FOCUS UPDATE\n"

    invoke-virtual {v5, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->flush()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_52} :catch_53
    .catchall {:try_start_3b .. :try_end_52} :catchall_6c

    goto :goto_1a

    .line 324
    .end local v2    # "needFocusedWindowUpdate":Z
    .end local v3    # "needWindowListUpdate":Z
    :catch_53
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move-object v4, v5

    .line 327
    .end local v5    # "out":Ljava/io/BufferedWriter;
    :goto_55
    if-eqz v4, :cond_5a

    .line 329
    :try_start_57
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_8f

    .line 334
    :cond_5a
    :goto_5a
    iget-object v6, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    invoke-static {v6}, Lcom/android/server/wm/ViewServer;->-get1(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/android/server/wm/WindowManagerService;->removeWindowChangeListener(Lcom/android/server/wm/WindowManagerService$WindowChangeListener;)V

    .line 336
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_63
    const/4 v6, 0x1

    return v6

    .line 304
    .restart local v2    # "needFocusedWindowUpdate":Z
    .restart local v3    # "needWindowListUpdate":Z
    .restart local v5    # "out":Ljava/io/BufferedWriter;
    :cond_65
    :try_start_65
    invoke-virtual {p0}, Lcom/android/server/wm/ViewServer$ViewServerWorker;->wait()V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_69

    goto :goto_23

    .line 302
    :catchall_69
    move-exception v6

    :try_start_6a
    monitor-exit p0

    throw v6
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6c} :catch_53
    .catchall {:try_start_6a .. :try_end_6c} :catchall_6c

    .line 326
    .end local v2    # "needFocusedWindowUpdate":Z
    .end local v3    # "needWindowListUpdate":Z
    :catchall_6c
    move-exception v6

    move-object v4, v5

    .line 327
    .end local v5    # "out":Ljava/io/BufferedWriter;
    :goto_6e
    if-eqz v4, :cond_73

    .line 329
    :try_start_70
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_91

    .line 334
    :cond_73
    :goto_73
    iget-object v7, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    invoke-static {v7}, Lcom/android/server/wm/ViewServer;->-get1(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/android/server/wm/WindowManagerService;->removeWindowChangeListener(Lcom/android/server/wm/WindowManagerService$WindowChangeListener;)V

    .line 326
    throw v6

    .line 327
    .restart local v5    # "out":Ljava/io/BufferedWriter;
    :cond_7d
    if-eqz v5, :cond_82

    .line 329
    :try_start_7f
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_8d

    .line 334
    :cond_82
    :goto_82
    iget-object v6, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    invoke-static {v6}, Lcom/android/server/wm/ViewServer;->-get1(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/android/server/wm/WindowManagerService;->removeWindowChangeListener(Lcom/android/server/wm/WindowManagerService$WindowChangeListener;)V

    move-object v4, v5

    .end local v5    # "out":Ljava/io/BufferedWriter;
    .local v4, "out":Ljava/io/BufferedWriter;
    goto :goto_63

    .line 330
    .end local v4    # "out":Ljava/io/BufferedWriter;
    .restart local v5    # "out":Ljava/io/BufferedWriter;
    :catch_8d
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_82

    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "out":Ljava/io/BufferedWriter;
    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_8f
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_5a

    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_91
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_73

    .line 326
    .end local v0    # "e":Ljava/io/IOException;
    .local v4, "out":Ljava/io/BufferedWriter;
    :catchall_93
    move-exception v6

    goto :goto_6e

    .line 324
    :catch_95
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    goto :goto_55
.end method


# virtual methods
.method public focusChanged()V
    .registers 2

    .prologue
    .line 288
    monitor-enter p0

    .line 289
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    .line 290
    invoke-virtual {p0}, Lcom/android/server/wm/ViewServer$ViewServerWorker;->notifyAll()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    monitor-exit p0

    .line 287
    return-void

    .line 288
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .registers 12

    .prologue
    .line 222
    const/4 v2, 0x0

    .line 224
    .local v2, "in":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    iget-object v9, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v9, 0x400

    invoke-direct {v3, v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_13} :catch_d5
    .catchall {:try_start_1 .. :try_end_13} :catchall_fb

    .line 226
    .end local v2    # "in":Ljava/io/BufferedReader;
    .local v3, "in":Ljava/io/BufferedReader;
    :try_start_13
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 231
    .local v6, "request":Ljava/lang/String;
    const/16 v8, 0x20

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 232
    .local v4, "index":I
    const/4 v8, -0x1

    if-ne v4, v8, :cond_63

    .line 233
    move-object v0, v6

    .line 234
    .local v0, "command":Ljava/lang/String;
    const-string/jumbo v5, ""

    .line 241
    .local v5, "parameters":Ljava/lang/String;
    :goto_24
    const-string/jumbo v8, "PROTOCOL"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6f

    .line 242
    iget-object v8, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    const-string/jumbo v9, "4"

    invoke-static {v8, v9}, Lcom/android/server/wm/ViewServer;->-wrap0(Ljava/net/Socket;Ljava/lang/String;)Z

    move-result v7

    .line 256
    .local v7, "result":Z
    :goto_36
    if-nez v7, :cond_53

    .line 257
    invoke-static {}, Lcom/android/server/wm/ViewServer;->-get0()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "An error occurred with the command: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_53} :catch_118
    .catchall {:try_start_13 .. :try_end_53} :catchall_115

    .line 262
    :cond_53
    if-eqz v3, :cond_58

    .line 264
    :try_start_55
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_cb

    .line 270
    :cond_58
    :goto_58
    iget-object v8, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    if-eqz v8, :cond_61

    .line 272
    :try_start_5c
    iget-object v8, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_61} :catch_d0

    :cond_61
    :goto_61
    move-object v2, v3

    .line 220
    .end local v0    # "command":Ljava/lang/String;
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v4    # "index":I
    .end local v5    # "parameters":Ljava/lang/String;
    .end local v6    # "request":Ljava/lang/String;
    .end local v7    # "result":Z
    :cond_62
    :goto_62
    return-void

    .line 236
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "index":I
    .restart local v6    # "request":Ljava/lang/String;
    :cond_63
    const/4 v8, 0x0

    :try_start_64
    invoke-virtual {v6, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 237
    .restart local v0    # "command":Ljava/lang/String;
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "parameters":Ljava/lang/String;
    goto :goto_24

    .line 243
    :cond_6f
    const-string/jumbo v8, "SERVER"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_82

    .line 244
    iget-object v8, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    const-string/jumbo v9, "4"

    invoke-static {v8, v9}, Lcom/android/server/wm/ViewServer;->-wrap0(Ljava/net/Socket;Ljava/lang/String;)Z

    move-result v7

    .restart local v7    # "result":Z
    goto :goto_36

    .line 245
    .end local v7    # "result":Z
    :cond_82
    const-string/jumbo v8, "LIST"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_98

    .line 246
    iget-object v8, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    invoke-static {v8}, Lcom/android/server/wm/ViewServer;->-get1(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowManagerService;->viewServerListWindows(Ljava/net/Socket;)Z

    move-result v7

    .restart local v7    # "result":Z
    goto :goto_36

    .line 247
    .end local v7    # "result":Z
    :cond_98
    const-string/jumbo v8, "GET_FOCUS"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_ae

    .line 248
    iget-object v8, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    invoke-static {v8}, Lcom/android/server/wm/ViewServer;->-get1(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowManagerService;->viewServerGetFocusedWindow(Ljava/net/Socket;)Z

    move-result v7

    .restart local v7    # "result":Z
    goto :goto_36

    .line 249
    .end local v7    # "result":Z
    :cond_ae
    const-string/jumbo v8, "AUTOLIST"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_bd

    .line 250
    invoke-direct {p0}, Lcom/android/server/wm/ViewServer$ViewServerWorker;->windowManagerAutolistLoop()Z

    move-result v7

    .restart local v7    # "result":Z
    goto/16 :goto_36

    .line 252
    .end local v7    # "result":Z
    :cond_bd
    iget-object v8, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    invoke-static {v8}, Lcom/android/server/wm/ViewServer;->-get1(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v8, v9, v0, v5}, Lcom/android/server/wm/WindowManagerService;->viewServerWindowCommand(Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_c8} :catch_118
    .catchall {:try_start_64 .. :try_end_c8} :catchall_115

    move-result v7

    .restart local v7    # "result":Z
    goto/16 :goto_36

    .line 266
    :catch_cb
    move-exception v1

    .line 267
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_58

    .line 273
    .end local v1    # "e":Ljava/io/IOException;
    :catch_d0
    move-exception v1

    .line 274
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_61

    .line 259
    .end local v0    # "command":Ljava/lang/String;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v4    # "index":I
    .end local v5    # "parameters":Ljava/lang/String;
    .end local v6    # "request":Ljava/lang/String;
    .end local v7    # "result":Z
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catch_d5
    move-exception v1

    .line 260
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_d6
    :try_start_d6
    invoke-static {}, Lcom/android/server/wm/ViewServer;->-get0()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "Connection error: "

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e0
    .catchall {:try_start_d6 .. :try_end_e0} :catchall_fb

    .line 262
    if-eqz v2, :cond_e5

    .line 264
    :try_start_e2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_e5
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_e5} :catch_f6

    .line 270
    :cond_e5
    :goto_e5
    iget-object v8, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    if-eqz v8, :cond_62

    .line 272
    :try_start_e9
    iget-object v8, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->close()V
    :try_end_ee
    .catch Ljava/io/IOException; {:try_start_e9 .. :try_end_ee} :catch_f0

    goto/16 :goto_62

    .line 273
    :catch_f0
    move-exception v1

    .line 274
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_62

    .line 266
    :catch_f6
    move-exception v1

    .line 267
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e5

    .line 261
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_fb
    move-exception v8

    .line 262
    :goto_fc
    if-eqz v2, :cond_101

    .line 264
    :try_start_fe
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_101
    .catch Ljava/io/IOException; {:try_start_fe .. :try_end_101} :catch_10b

    .line 270
    :cond_101
    :goto_101
    iget-object v9, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    if-eqz v9, :cond_10a

    .line 272
    :try_start_105
    iget-object v9, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->close()V
    :try_end_10a
    .catch Ljava/io/IOException; {:try_start_105 .. :try_end_10a} :catch_110

    .line 261
    :cond_10a
    :goto_10a
    throw v8

    .line 266
    :catch_10b
    move-exception v1

    .line 267
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_101

    .line 273
    .end local v1    # "e":Ljava/io/IOException;
    :catch_110
    move-exception v1

    .line 274
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10a

    .line 261
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catchall_115
    move-exception v8

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .local v2, "in":Ljava/io/BufferedReader;
    goto :goto_fc

    .line 259
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catch_118
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_d6
.end method

.method public windowsChanged()V
    .registers 2

    .prologue
    .line 281
    monitor-enter p0

    .line 282
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    .line 283
    invoke-virtual {p0}, Lcom/android/server/wm/ViewServer$ViewServerWorker;->notifyAll()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    monitor-exit p0

    .line 280
    return-void

    .line 281
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
