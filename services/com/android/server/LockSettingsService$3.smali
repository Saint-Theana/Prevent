.class Lcom/android/server/LockSettingsService$3;
.super Ljava/lang/Object;
.source "LockSettingsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LockSettingsService;->onUnlockUser(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LockSettingsService;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/LockSettingsService;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/LockSettingsService;
    .param p2, "val$userId"    # I

    .prologue
    .line 401
    iput-object p1, p0, Lcom/android/server/LockSettingsService$3;->this$0:Lcom/android/server/LockSettingsService;

    iput p2, p0, Lcom/android/server/LockSettingsService$3;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/server/LockSettingsService$3;->this$0:Lcom/android/server/LockSettingsService;

    iget v1, p0, Lcom/android/server/LockSettingsService$3;->val$userId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/LockSettingsService;->tieManagedProfileLockIfNecessary(ILjava/lang/String;)V

    .line 403
    return-void
.end method
