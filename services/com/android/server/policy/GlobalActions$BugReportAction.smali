.class Lcom/android/server/policy/GlobalActions$BugReportAction;
.super Lcom/android/server/policy/GlobalActions$SinglePressAction;
.source "GlobalActions.java"

# interfaces
.implements Lcom/android/server/policy/GlobalActions$LongPressAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BugReportAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 740
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$BugReportAction;->this$0:Lcom/android/server/policy/GlobalActions;

    .line 741
    const v0, 0x10803a2

    const v1, 0x10401c4

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/GlobalActions$SinglePressAction;-><init>(II)V

    .line 740
    return-void
.end method


# virtual methods
.method public bridge synthetic getStatus()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 796
    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions$BugReportAction;->getStatus()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .registers 5

    .prologue
    .line 797
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$BugReportAction;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get5(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 799
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 800
    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 798
    const v2, 0x10401ca

    .line 797
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onLongPress()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 773
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 774
    return v3

    .line 778
    :cond_8
    :try_start_8
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$BugReportAction;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->-get5(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x125

    invoke-static {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 779
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 780
    const/4 v2, 0x0

    .line 779
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->requestBugReport(I)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1b} :catch_1c

    .line 783
    :goto_1b
    return v3

    .line 781
    :catch_1c
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1b
.end method

.method public onPress()V
    .registers 5

    .prologue
    .line 748
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 749
    return-void

    .line 754
    :cond_7
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$BugReportAction;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get9(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/policy/GlobalActions$BugReportAction$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$BugReportAction$1;-><init>(Lcom/android/server/policy/GlobalActions$BugReportAction;)V

    .line 766
    const-wide/16 v2, 0x1f4

    .line 754
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 745
    return-void
.end method

.method public showBeforeProvisioning()Z
    .registers 2

    .prologue
    .line 792
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .registers 2

    .prologue
    .line 787
    const/4 v0, 0x1

    return v0
.end method
