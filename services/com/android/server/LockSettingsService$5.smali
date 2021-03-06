.class Lcom/android/server/LockSettingsService$5;
.super Ljava/lang/Object;
.source "LockSettingsService.java"

# interfaces
.implements Lcom/android/server/LockSettingsService$CredentialUtil;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LockSettingsService;->doVerifyPattern(Ljava/lang/String;Lcom/android/server/LockSettingsStorage$CredentialHash;ZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LockSettingsService;


# direct methods
.method constructor <init>(Lcom/android/server/LockSettingsService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/LockSettingsService;

    .prologue
    .line 1327
    iput-object p1, p0, Lcom/android/server/LockSettingsService$5;->this$0:Lcom/android/server/LockSettingsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adjustForKeystore(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 1344
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternStringToBaseZero(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCredential(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "oldPattern"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1331
    iget-object v0, p0, Lcom/android/server/LockSettingsService$5;->this$0:Lcom/android/server/LockSettingsService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/LockSettingsService;->-wrap3(Lcom/android/server/LockSettingsService;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1330
    return-void
.end method

.method public toHash(Ljava/lang/String;I)[B
    .registers 5
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1336
    iget-object v1, p0, Lcom/android/server/LockSettingsService$5;->this$0:Lcom/android/server/LockSettingsService;

    invoke-virtual {v1, p2}, Lcom/android/server/LockSettingsService;->getLockPatternSize(I)B

    move-result v0

    .line 1338
    .local v0, "lockPatternSize":B
    invoke-static {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;B)Ljava/util/List;

    move-result-object v1

    .line 1337
    invoke-static {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;B)[B

    move-result-object v1

    return-object v1
.end method
