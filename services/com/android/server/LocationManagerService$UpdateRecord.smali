.class Lcom/android/server/LocationManagerService$UpdateRecord;
.super Ljava/lang/Object;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateRecord"
.end annotation


# instance fields
.field mLastFixBroadcast:Landroid/location/Location;

.field mLastStatusBroadcast:J

.field final mProvider:Ljava/lang/String;

.field final mReceiver:Lcom/android/server/LocationManagerService$Receiver;

.field final mRequest:Landroid/location/LocationRequest;

.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;Landroid/location/LocationRequest;Lcom/android/server/LocationManagerService$Receiver;)V
    .registers 11
    .param p1, "this$0"    # Lcom/android/server/LocationManagerService;
    .param p2, "provider"    # Ljava/lang/String;
    .param p3, "request"    # Landroid/location/LocationRequest;
    .param p4, "receiver"    # Lcom/android/server/LocationManagerService$Receiver;

    .prologue
    .line 1489
    iput-object p1, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1490
    iput-object p2, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    .line 1491
    iput-object p3, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    .line 1492
    iput-object p4, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    .line 1494
    invoke-static {p1}, Lcom/android/server/LocationManagerService;->-get8(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1495
    .local v0, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-nez v0, :cond_23

    .line 1496
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1497
    .restart local v0    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    invoke-static {p1}, Lcom/android/server/LocationManagerService;->-get8(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1499
    :cond_23
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 1500
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1504
    :cond_2c
    invoke-static {p1}, Lcom/android/server/LocationManagerService;->-get9(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationRequestStatistics;

    move-result-object v1

    .line 1505
    iget-object v2, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v2, v2, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    invoke-virtual {p3}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v4

    .line 1504
    invoke-virtual {v1, v2, p2, v4, v5}, Lcom/android/server/location/LocationRequestStatistics;->startRequesting(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1489
    return-void
.end method


# virtual methods
.method disposeLocked(Z)V
    .registers 7
    .param p1, "removeReceiver"    # Z

    .prologue
    .line 1512
    iget-object v2, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v2}, Lcom/android/server/LocationManagerService;->-get9(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationRequestStatistics;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v3, v3, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/location/LocationRequestStatistics;->stopRequesting(Ljava/lang/String;Ljava/lang/String;)V

    .line 1515
    iget-object v2, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v2}, Lcom/android/server/LocationManagerService;->-get8(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1516
    .local v0, "globalRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v0, :cond_22

    .line 1517
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1520
    :cond_22
    if-nez p1, :cond_25

    return-void

    .line 1523
    :cond_25
    iget-object v2, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v1, v2, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    .line 1524
    .local v1, "receiverRecords":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v1, :cond_3f

    .line 1525
    iget-object v2, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1528
    if-eqz p1, :cond_3f

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_3f

    .line 1529
    iget-object v2, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v3, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    invoke-static {v2, v3}, Lcom/android/server/LocationManagerService;->-wrap5(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$Receiver;)V

    .line 1511
    :cond_3f
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v3, 0x20

    .line 1536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1537
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "UpdateRecord["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1538
    iget-object v1, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1539
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v2, v2, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1540
    iget-object v1, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget v1, v1, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1541
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1542
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1543
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
