.class Lcom/android/server/policy/GlobalActions$BugReportAction$1;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions$BugReportAction;->onPress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/GlobalActions$BugReportAction;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions$BugReportAction;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/policy/GlobalActions$BugReportAction;

    .prologue
    .line 754
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$BugReportAction$1;->this$1:Lcom/android/server/policy/GlobalActions$BugReportAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 759
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$BugReportAction$1;->this$1:Lcom/android/server/policy/GlobalActions$BugReportAction;

    iget-object v1, v1, Lcom/android/server/policy/GlobalActions$BugReportAction;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->-get5(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v1

    .line 760
    const/16 v2, 0x124

    .line 759
    invoke-static {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 761
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 762
    const/4 v2, 0x1

    .line 761
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->requestBugReport(I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    .line 756
    :goto_15
    return-void

    .line 763
    :catch_16
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_15
.end method
