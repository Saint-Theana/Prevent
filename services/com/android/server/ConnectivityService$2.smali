.class Lcom/android/server/ConnectivityService$2;
.super Landroid/net/INetworkPolicyListener$Stub;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 1522
    iput-object p1, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Landroid/net/INetworkPolicyListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMeteredIfacesChanged([Ljava/lang/String;)V
    .registers 7
    .param p1, "meteredIfaces"    # [Ljava/lang/String;

    .prologue
    .line 1552
    iget-object v1, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get11(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1553
    :try_start_7
    iget-object v1, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get3(Lcom/android/server/ConnectivityService;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 1554
    const/4 v1, 0x0

    array-length v3, p1

    :goto_12
    if-ge v1, v3, :cond_22

    aget-object v0, p1, v1

    .line 1555
    .local v0, "iface":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->-get3(Lcom/android/server/ConnectivityService;)Landroid/util/ArraySet;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_24

    .line 1554
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .end local v0    # "iface":Ljava/lang/String;
    :cond_22
    monitor-exit v2

    .line 1546
    return-void

    .line 1552
    :catchall_24
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onRestrictBackgroundBlacklistChanged(IZ)V
    .registers 3
    .param p1, "uid"    # I
    .param p2, "blacklisted"    # Z

    .prologue
    .line 1586
    return-void
.end method

.method public onRestrictBackgroundChanged(Z)V
    .registers 4
    .param p1, "restrictBackground"    # Z

    .prologue
    .line 1567
    iget-object v0, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-get11(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1568
    :try_start_7
    iget-object v0, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0, p1}, Lcom/android/server/ConnectivityService;->-set0(Lcom/android/server/ConnectivityService;Z)Z
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_1f

    monitor-exit v1

    .line 1571
    if-eqz p1, :cond_1e

    .line 1572
    const-string/jumbo v0, "onRestrictBackgroundChanged(true): disabling tethering"

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-wrap23(Ljava/lang/String;)V

    .line 1573
    iget-object v0, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-get12(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/Tethering;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->untetherAll()V

    .line 1561
    :cond_1e
    return-void

    .line 1567
    :catchall_1f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onRestrictBackgroundWhitelistChanged(IZ)V
    .registers 3
    .param p1, "uid"    # I
    .param p2, "whitelisted"    # Z

    .prologue
    .line 1578
    return-void
.end method

.method public onUidRulesChanged(II)V
    .registers 7
    .param p1, "uid"    # I
    .param p2, "uidRules"    # I

    .prologue
    .line 1530
    iget-object v1, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get11(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1532
    :try_start_7
    iget-object v1, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get13(Lcom/android/server/ConnectivityService;)Landroid/util/SparseIntArray;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->get(II)I
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_2d

    move-result v0

    .line 1533
    .local v0, "oldRules":I
    if-ne v0, p2, :cond_16

    monitor-exit v2

    return-void

    .line 1535
    :cond_16
    if-nez p2, :cond_23

    .line 1536
    :try_start_18
    iget-object v1, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get13(Lcom/android/server/ConnectivityService;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_2d

    :goto_21
    monitor-exit v2

    .line 1524
    return-void

    .line 1538
    :cond_23
    :try_start_23
    iget-object v1, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get13(Lcom/android/server/ConnectivityService;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_2c
    .catchall {:try_start_23 .. :try_end_2c} :catchall_2d

    goto :goto_21

    .line 1530
    .end local v0    # "oldRules":I
    :catchall_2d
    move-exception v1

    monitor-exit v2

    throw v1
.end method
