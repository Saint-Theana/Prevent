.class Lcom/android/server/hdmi/HdmiControlService$2;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService;->addHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;

.field final synthetic val$listener:Landroid/hardware/hdmi/IHdmiHotplugEventListener;

.field final synthetic val$record:Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p2, "val$record"    # Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;
    .param p3, "val$listener"    # Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    .prologue
    .line 1731
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$2;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$2;->val$record:Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;

    iput-object p3, p0, Lcom/android/server/hdmi/HdmiControlService$2;->val$listener:Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 1734
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$2;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v3}, Lcom/android/server/hdmi/HdmiControlService;->-get12(Lcom/android/server/hdmi/HdmiControlService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1735
    :try_start_7
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$2;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v3}, Lcom/android/server/hdmi/HdmiControlService;->-get8(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/hdmi/HdmiControlService$2;->val$record:Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_55

    move-result v3

    if-nez v3, :cond_17

    monitor-exit v4

    return-void

    :cond_17
    monitor-exit v4

    .line 1737
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$2;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v3}, Lcom/android/server/hdmi/HdmiControlService;->-get15(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "port$iterator":Ljava/util/Iterator;
    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiPortInfo;

    .line 1738
    .local v1, "port":Landroid/hardware/hdmi/HdmiPortInfo;
    new-instance v0, Landroid/hardware/hdmi/HdmiHotplugEvent;

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v3

    .line 1739
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService$2;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v4}, Lcom/android/server/hdmi/HdmiControlService;->-get4(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object v4

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/hdmi/HdmiCecController;->isConnected(I)Z

    move-result v4

    .line 1738
    invoke-direct {v0, v3, v4}, Landroid/hardware/hdmi/HdmiHotplugEvent;-><init>(IZ)V

    .line 1740
    .local v0, "event":Landroid/hardware/hdmi/HdmiHotplugEvent;
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$2;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v3}, Lcom/android/server/hdmi/HdmiControlService;->-get12(Lcom/android/server/hdmi/HdmiControlService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1741
    :try_start_4c
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$2;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v5, p0, Lcom/android/server/hdmi/HdmiControlService$2;->val$listener:Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    invoke-static {v3, v5, v0}, Lcom/android/server/hdmi/HdmiControlService;->-wrap13(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiHotplugEventListener;Landroid/hardware/hdmi/HdmiHotplugEvent;)V
    :try_end_53
    .catchall {:try_start_4c .. :try_end_53} :catchall_58

    monitor-exit v4

    goto :goto_22

    .line 1734
    .end local v0    # "event":Landroid/hardware/hdmi/HdmiHotplugEvent;
    .end local v1    # "port":Landroid/hardware/hdmi/HdmiPortInfo;
    .end local v2    # "port$iterator":Ljava/util/Iterator;
    :catchall_55
    move-exception v3

    monitor-exit v4

    throw v3

    .line 1740
    .restart local v0    # "event":Landroid/hardware/hdmi/HdmiHotplugEvent;
    .restart local v1    # "port":Landroid/hardware/hdmi/HdmiPortInfo;
    .restart local v2    # "port$iterator":Ljava/util/Iterator;
    :catchall_58
    move-exception v3

    monitor-exit v4

    throw v3

    .line 1733
    .end local v0    # "event":Landroid/hardware/hdmi/HdmiHotplugEvent;
    .end local v1    # "port":Landroid/hardware/hdmi/HdmiPortInfo;
    :cond_5b
    return-void
.end method
