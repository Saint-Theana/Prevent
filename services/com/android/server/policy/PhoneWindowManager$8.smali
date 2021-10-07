.class Lcom/android/server/policy/PhoneWindowManager$8;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;

    .prologue
    .line 2002
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$8;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .prologue
    .line 2004
    iget-object v11, p0, Lcom/android/server/policy/PhoneWindowManager$8;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/server/policy/PhoneWindowManager;->-wrap3(Lcom/android/server/policy/PhoneWindowManager;Z)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 2005
    return-void

    .line 2008
    :cond_a
    :try_start_a
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v11, "android.intent.action.MAIN"

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2009
    .local v5, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "com.android.launcher"

    .line 2010
    .local v4, "defaultHomePackage":Ljava/lang/String;
    const-string/jumbo v11, "android.intent.category.HOME"

    invoke-virtual {v5, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2011
    iget-object v11, p0, Lcom/android/server/policy/PhoneWindowManager$8;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v11, v11, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v5, v12}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    .line 2012
    .local v8, "res":Landroid/content/pm/ResolveInfo;
    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v11, :cond_39

    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v12, "android"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_85

    .line 2015
    :cond_39
    :goto_39
    const/4 v9, 0x0

    .line 2016
    .local v9, "targetKilled":Z
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 2017
    .local v0, "am":Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 2018
    .local v3, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "appInfo$iterator":Ljava/util/Iterator;
    :cond_46
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 2019
    .local v1, "appInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v10, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    .line 2022
    .local v10, "uid":I
    const/16 v11, 0x2710

    if-lt v10, v11, :cond_8f

    const/16 v11, 0x4e1f

    if-gt v10, v11, :cond_8f

    .line 2023
    iget v11, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v12, 0x64

    if-ne v11, v12, :cond_8f

    .line 2024
    iget-object v11, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v11, :cond_a9

    iget-object v11, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v11, v11

    if-lez v11, :cond_a9

    .line 2025
    iget-object v12, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v11, 0x0

    array-length v13, v12

    :goto_6f
    if-ge v11, v13, :cond_8f

    aget-object v6, v12, v11

    .line 2026
    .local v6, "pkg":Ljava/lang/String;
    const-string/jumbo v14, "com.android.systemui"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_82

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8a

    .line 2025
    :cond_82
    add-int/lit8 v11, v11, 0x1

    goto :goto_6f

    .line 2013
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v1    # "appInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v2    # "appInfo$iterator":Ljava/util/Iterator;
    .end local v3    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v9    # "targetKilled":Z
    .end local v10    # "uid":I
    :cond_85
    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_39

    .line 2027
    .restart local v0    # "am":Landroid/app/IActivityManager;
    .restart local v1    # "appInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .restart local v2    # "appInfo$iterator":Ljava/util/Iterator;
    .restart local v3    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v6    # "pkg":Ljava/lang/String;
    .restart local v9    # "targetKilled":Z
    .restart local v10    # "uid":I
    :cond_8a
    const/4 v11, -0x2

    invoke-interface {v0, v6, v11}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    .line 2028
    const/4 v9, 0x1

    .line 2037
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_8f
    :goto_8f
    if-eqz v9, :cond_46

    .line 2038
    iget-object v11, p0, Lcom/android/server/policy/PhoneWindowManager$8;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 2039
    iget-object v11, p0, Lcom/android/server/policy/PhoneWindowManager$8;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v11, v11, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const v12, 0x104001a

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 2003
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v1    # "appInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v2    # "appInfo$iterator":Ljava/util/Iterator;
    .end local v3    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v4    # "defaultHomePackage":Ljava/lang/String;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v8    # "res":Landroid/content/pm/ResolveInfo;
    .end local v9    # "targetKilled":Z
    .end local v10    # "uid":I
    :cond_a8
    :goto_a8
    return-void

    .line 2033
    .restart local v0    # "am":Landroid/app/IActivityManager;
    .restart local v1    # "appInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .restart local v2    # "appInfo$iterator":Ljava/util/Iterator;
    .restart local v3    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v4    # "defaultHomePackage":Ljava/lang/String;
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v8    # "res":Landroid/content/pm/ResolveInfo;
    .restart local v9    # "targetKilled":Z
    .restart local v10    # "uid":I
    :cond_a9
    iget v11, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v11}, Landroid/os/Process;->killProcess(I)V
    :try_end_ae
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_ae} :catch_b0

    .line 2034
    const/4 v9, 0x1

    goto :goto_8f

    .line 2043
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v1    # "appInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v2    # "appInfo$iterator":Ljava/util/Iterator;
    .end local v3    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v4    # "defaultHomePackage":Ljava/lang/String;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v8    # "res":Landroid/content/pm/ResolveInfo;
    .end local v9    # "targetKilled":Z
    .end local v10    # "uid":I
    :catch_b0
    move-exception v7

    .local v7, "remoteException":Landroid/os/RemoteException;
    goto :goto_a8
.end method
