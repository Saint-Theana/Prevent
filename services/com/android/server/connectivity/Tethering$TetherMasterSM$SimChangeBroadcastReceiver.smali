.class Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering$TetherMasterSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SimChangeBroadcastReceiver"
.end annotation


# instance fields
.field private final mGenerationNumber:I

.field private mSimNotLoadedSeen:Z

.field final synthetic this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;I)V
    .registers 4
    .param p1, "this$1"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;
    .param p2, "generationNumber"    # I

    .prologue
    .line 1849
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .line 1850
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1847
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mSimNotLoadedSeen:Z

    .line 1851
    iput p2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mGenerationNumber:I

    .line 1849
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1860
    iget v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mGenerationNumber:I

    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v11}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get8(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v11

    if-eq v10, v11, :cond_f

    return-void

    .line 1863
    :cond_f
    const-string/jumbo v10, "ss"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1865
    .local v5, "state":Ljava/lang/String;
    const-string/jumbo v10, "Tethering"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "got Sim changed to state "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", mSimNotLoadedSeen="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1866
    iget-boolean v12, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mSimNotLoadedSeen:Z

    .line 1865
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    iget-boolean v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mSimNotLoadedSeen:Z

    if-nez v10, :cond_4a

    const-string/jumbo v10, "LOADED"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a6

    .line 1871
    :cond_4a
    :goto_4a
    iget-boolean v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mSimNotLoadedSeen:Z

    if-eqz v10, :cond_d9

    const-string/jumbo v10, "LOADED"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d9

    .line 1872
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mSimNotLoadedSeen:Z

    .line 1874
    :try_start_5a
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->-get2(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1040098

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_120

    .line 1876
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1877
    .local v9, "tethered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->-get9(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11
    :try_end_81
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5a .. :try_end_81} :catch_cf

    .line 1878
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_82
    :try_start_82
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->-get12(Lcom/android/server/connectivity/Tethering;)Landroid/util/ArrayMap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-ge v1, v10, :cond_da

    .line 1879
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->-get12(Lcom/android/server/connectivity/Tethering;)Landroid/util/ArrayMap;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 1880
    .local v6, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    iget v10, v6, Lcom/android/server/connectivity/Tethering$TetherState;->mLastState:I
    :try_end_a0
    .catchall {:try_start_82 .. :try_end_a0} :catchall_cc

    .line 1881
    const/4 v12, 0x2

    .line 1880
    if-eq v10, v12, :cond_aa

    .line 1878
    :cond_a3
    :goto_a3
    add-int/lit8 v1, v1, 0x1

    goto :goto_82

    .line 1868
    .end local v1    # "i":I
    .end local v6    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    .end local v9    # "tethered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_a6
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mSimNotLoadedSeen:Z

    goto :goto_4a

    .line 1884
    .restart local v1    # "i":I
    .restart local v6    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    .restart local v9    # "tethered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_aa
    :try_start_aa
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->-get12(Lcom/android/server/connectivity/Tethering;)Landroid/util/ArrayMap;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1885
    .local v2, "iface":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v10, v2}, Lcom/android/server/connectivity/Tethering;->-wrap3(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)I

    move-result v3

    .line 1886
    .local v3, "interfaceType":I
    const/4 v10, -0x1

    if-eq v3, v10, :cond_a3

    .line 1887
    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_cb
    .catchall {:try_start_aa .. :try_end_cb} :catchall_cc

    goto :goto_a3

    .line 1877
    .end local v2    # "iface":Ljava/lang/String;
    .end local v3    # "interfaceType":I
    .end local v6    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :catchall_cc
    move-exception v10

    :try_start_cd
    monitor-exit v11

    throw v10
    :try_end_cf
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_cd .. :try_end_cf} :catch_cf

    .line 1904
    .end local v1    # "i":I
    .end local v9    # "tethered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_cf
    move-exception v0

    .line 1905
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v10, "Tethering"

    const-string/jumbo v11, "no prov-check needed for new SIM"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_d9
    :goto_d9
    return-void

    .restart local v1    # "i":I
    .restart local v9    # "tethered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_da
    :try_start_da
    monitor-exit v11

    .line 1891
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "tetherType$iterator":Ljava/util/Iterator;
    :goto_df
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_116

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1892
    .local v7, "tetherType":I
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1894
    .local v4, "startProvIntent":Landroid/content/Intent;
    const-string/jumbo v10, "extraAddTetherType"

    .line 1893
    invoke-virtual {v4, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1896
    const-string/jumbo v10, "extraRunProvision"

    const/4 v11, 0x1

    .line 1895
    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1897
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get0()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1898
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->-get2(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v10

    sget-object v11, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v10, v4, v11}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    goto :goto_df

    .line 1900
    .end local v4    # "startProvIntent":Landroid/content/Intent;
    .end local v7    # "tetherType":I
    :cond_116
    const-string/jumbo v10, "Tethering"

    const-string/jumbo v11, "re-evaluate provisioning"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d9

    .line 1902
    .end local v1    # "i":I
    .end local v8    # "tetherType$iterator":Ljava/util/Iterator;
    .end local v9    # "tethered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_120
    const-string/jumbo v10, "Tethering"

    const-string/jumbo v11, "no prov-check needed for new SIM"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_129
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_da .. :try_end_129} :catch_cf

    goto :goto_d9
.end method
