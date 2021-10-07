.class Lcom/android/server/am/ActivityManagerService$28;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->recordPssSampleLocked(Lcom/android/server/am/ProcessRecord;IJJJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$heapdumpFile:Ljava/io/File;

.field final synthetic val$myProc:Lcom/android/server/am/ProcessRecord;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/io/File;Lcom/android/server/am/ProcessRecord;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "val$heapdumpFile"    # Ljava/io/File;
    .param p3, "val$myProc"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 20441
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$28;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$28;->val$heapdumpFile:Ljava/io/File;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$28;->val$myProc:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    .line 20444
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$28;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v6

    .line 20446
    sget-object v7, Lcom/android/internal/app/DumpHeapActivity;->JAVA_URI:Landroid/net/Uri;

    .line 20449
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    .line 20447
    const/4 v9, 0x3

    .line 20444
    invoke-virtual {v5, v6, v7, v9, v8}, Lcom/android/server/am/ActivityManagerService;->revokeUriPermission(Landroid/app/IApplicationThread;Landroid/net/Uri;II)V

    .line 20450
    const/4 v3, 0x0

    .line 20452
    .local v3, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_15
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$28;->val$heapdumpFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 20453
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$28;->val$heapdumpFile:Ljava/io/File;

    .line 20454
    const/high16 v6, 0x2e000000

    .line 20453
    invoke-static {v5, v6}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 20458
    .local v3, "fd":Landroid/os/ParcelFileDescriptor;
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$28;->val$myProc:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_26
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_26} :catch_3a
    .catchall {:try_start_15 .. :try_end_26} :catchall_46

    .line 20459
    .local v4, "thread":Landroid/app/IApplicationThread;
    if-eqz v4, :cond_32

    .line 20464
    :try_start_28
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$28;->val$heapdumpFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v4, v6, v5, v3}, Landroid/app/IApplicationThread;->dumpHeap(ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_32} :catch_4f
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_32} :catch_3a
    .catchall {:try_start_28 .. :try_end_32} :catchall_46

    .line 20471
    :cond_32
    :goto_32
    if-eqz v3, :cond_37

    .line 20473
    :try_start_34
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_38

    .line 20443
    .end local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "thread":Landroid/app/IApplicationThread;
    :cond_37
    :goto_37
    return-void

    .line 20474
    .restart local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v4    # "thread":Landroid/app/IApplicationThread;
    :catch_38
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    goto :goto_37

    .line 20468
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "thread":Landroid/app/IApplicationThread;
    :catch_3a
    move-exception v1

    .line 20469
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_3b
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_46

    .line 20471
    if-eqz v3, :cond_37

    .line 20473
    :try_start_40
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_37

    .line 20474
    :catch_44
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_37

    .line 20470
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_46
    move-exception v5

    .line 20471
    if-eqz v3, :cond_4c

    .line 20473
    :try_start_49
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_4d

    .line 20470
    :cond_4c
    :goto_4c
    throw v5

    .line 20474
    :catch_4d
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_4c

    .line 20465
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v4    # "thread":Landroid/app/IApplicationThread;
    :catch_4f
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_32
.end method
