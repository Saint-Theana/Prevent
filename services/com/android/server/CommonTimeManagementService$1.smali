.class Lcom/android/server/CommonTimeManagementService$1;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "CommonTimeManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/CommonTimeManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/CommonTimeManagementService;


# direct methods
.method constructor <init>(Lcom/android/server/CommonTimeManagementService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/CommonTimeManagementService;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/server/CommonTimeManagementService$1;->this$0:Lcom/android/server/CommonTimeManagementService;

    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public interfaceAdded(Ljava/lang/String;)V
    .registers 3
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService$1;->this$0:Lcom/android/server/CommonTimeManagementService;

    invoke-static {v0}, Lcom/android/server/CommonTimeManagementService;->-wrap2(Lcom/android/server/CommonTimeManagementService;)V

    .line 113
    return-void
.end method

.method public interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService$1;->this$0:Lcom/android/server/CommonTimeManagementService;

    invoke-static {v0}, Lcom/android/server/CommonTimeManagementService;->-wrap2(Lcom/android/server/CommonTimeManagementService;)V

    .line 110
    return-void
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .registers 3
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService$1;->this$0:Lcom/android/server/CommonTimeManagementService;

    invoke-static {v0}, Lcom/android/server/CommonTimeManagementService;->-wrap2(Lcom/android/server/CommonTimeManagementService;)V

    .line 116
    return-void
.end method

.method public interfaceStatusChanged(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService$1;->this$0:Lcom/android/server/CommonTimeManagementService;

    invoke-static {v0}, Lcom/android/server/CommonTimeManagementService;->-wrap2(Lcom/android/server/CommonTimeManagementService;)V

    .line 107
    return-void
.end method
