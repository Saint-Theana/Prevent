.class Lcom/android/server/policy/PhoneWindowManager$3;
.super Landroid/pocket/IPocketCallback$Stub;
.source "PhoneWindowManager.java"


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
    .line 888
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$3;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Landroid/pocket/IPocketCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(ZI)V
    .registers 6
    .param p1, "isDeviceInPocket"    # Z
    .param p2, "reason"    # I

    .prologue
    const/4 v2, 0x0

    .line 892
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$3;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->-get2(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result v0

    .line 893
    .local v0, "wasDeviceInPocket":Z
    if-nez p2, :cond_1c

    .line 894
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$3;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v1, p1}, Lcom/android/server/policy/PhoneWindowManager;->-set2(Lcom/android/server/policy/PhoneWindowManager;Z)Z

    .line 898
    :goto_e
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$3;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->-get2(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result v1

    if-eq v0, v1, :cond_1b

    .line 899
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$3;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->-wrap15(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 891
    :cond_1b
    return-void

    .line 896
    :cond_1c
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$3;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->-set2(Lcom/android/server/policy/PhoneWindowManager;Z)Z

    goto :goto_e
.end method
