.class Lcom/android/server/CommonTimeManagementService$4;
.super Ljava/lang/Object;
.source "CommonTimeManagementService.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 135
    iput-object p1, p0, Lcom/android/server/CommonTimeManagementService$4;->this$0:Lcom/android/server/CommonTimeManagementService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService$4;->this$0:Lcom/android/server/CommonTimeManagementService;

    invoke-static {v0}, Lcom/android/server/CommonTimeManagementService;->-wrap0(Lcom/android/server/CommonTimeManagementService;)V

    return-void
.end method
