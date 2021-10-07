.class Lcom/android/server/pm/PackageInstallerSession$3;
.super Ljava/lang/Object;
.source "PackageInstallerSession.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageInstallerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageInstallerSession;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/pm/PackageInstallerSession;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 205
    const/4 v4, 0x1

    .line 206
    .local v4, "returnCode":I
    const/4 v1, 0x0

    .line 208
    .local v1, "completeMsg":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v5}, Lcom/android/server/pm/PackageInstallerSession;->-get1(Lcom/android/server/pm/PackageInstallerSession;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v5

    .line 209
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget-object v6, v6, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v6, v6, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v7, v7, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    const/16 v8, 0x40

    .line 208
    invoke-virtual {v5, v6, v8, v7}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 210
    .local v3, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v5}, Lcom/android/server/pm/PackageInstallerSession;->-get1(Lcom/android/server/pm/PackageInstallerSession;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v5

    .line 211
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget-object v6, v6, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v6, v6, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v7, v7, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    const/4 v8, 0x0

    .line 210
    invoke-virtual {v5, v6, v8, v7}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 213
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v5}, Lcom/android/server/pm/PackageInstallerSession;->-get0(Lcom/android/server/pm/PackageInstallerSession;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 214
    :try_start_36
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v5, :cond_43

    .line 215
    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/content/pm/IPackageInstallObserver2;

    invoke-static {v7, v5}, Lcom/android/server/pm/PackageInstallerSession;->-set0(Lcom/android/server/pm/PackageInstallerSession;Landroid/content/pm/IPackageInstallObserver2;)Landroid/content/pm/IPackageInstallObserver2;
    :try_end_43
    .catchall {:try_start_36 .. :try_end_43} :catchall_87

    .line 219
    :cond_43
    :try_start_43
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v5, v3, v0}, Lcom/android/server/pm/PackageInstallerSession;->-wrap0(Lcom/android/server/pm/PackageInstallerSession;Landroid/content/pm/PackageInfo;Landroid/content/pm/ApplicationInfo;)V
    :try_end_48
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_43 .. :try_end_48} :catch_51
    .catchall {:try_start_43 .. :try_end_48} :catchall_87

    .end local v1    # "completeMsg":Ljava/lang/String;
    :goto_48
    monitor-exit v6

    .line 227
    if-eq v4, v9, :cond_50

    .line 228
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v5, v4, v1, v10}, Lcom/android/server/pm/PackageInstallerSession;->-wrap2(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 230
    :cond_50
    return v9

    .line 220
    .restart local v1    # "completeMsg":Ljava/lang/String;
    :catch_51
    move-exception v2

    .line 221
    .local v2, "e":Lcom/android/server/pm/PackageManagerException;
    :try_start_52
    iget v4, v2, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 222
    invoke-static {v2}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, "completeMsg":Ljava/lang/String;
    const-string/jumbo v5, "PackageInstaller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Commit of session "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v8, v8, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v5}, Lcom/android/server/pm/PackageInstallerSession;->-wrap1(Lcom/android/server/pm/PackageInstallerSession;)V
    :try_end_86
    .catchall {:try_start_52 .. :try_end_86} :catchall_87

    goto :goto_48

    .line 213
    .end local v1    # "completeMsg":Ljava/lang/String;
    .end local v2    # "e":Lcom/android/server/pm/PackageManagerException;
    :catchall_87
    move-exception v5

    monitor-exit v6

    throw v5
.end method
