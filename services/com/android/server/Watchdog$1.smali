.class Lcom/android/server/Watchdog$1;
.super Ljava/lang/Object;
.source "Watchdog.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/Watchdog;->getSystemNotRespondingAction(Landroid/app/IActivityController;Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/Watchdog;

.field final synthetic val$controller:Landroid/app/IActivityController;

.field final synthetic val$subject:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/Watchdog;Landroid/app/IActivityController;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/Watchdog;
    .param p2, "val$controller"    # Landroid/app/IActivityController;
    .param p3, "val$subject"    # Ljava/lang/String;

    .prologue
    .line 358
    iput-object p1, p0, Lcom/android/server/Watchdog$1;->this$0:Lcom/android/server/Watchdog;

    iput-object p2, p0, Lcom/android/server/Watchdog$1;->val$controller:Landroid/app/IActivityController;

    iput-object p3, p0, Lcom/android/server/Watchdog$1;->val$subject:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 361
    const/4 v1, -0x1

    .line 363
    .local v1, "res":I
    :try_start_1
    iget-object v2, p0, Lcom/android/server/Watchdog$1;->val$controller:Landroid/app/IActivityController;

    iget-object v3, p0, Lcom/android/server/Watchdog$1;->val$subject:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/app/IActivityController;->systemNotResponding(Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_e

    move-result v1

    .line 366
    :goto_9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 364
    :catch_e
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_9
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/android/server/Watchdog$1;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
