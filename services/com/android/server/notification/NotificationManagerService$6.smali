.class Lcom/android/server/notification/NotificationManagerService$6;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Lcom/android/server/notification/NotificationManagerInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 2690
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enqueueNotification(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;[II)V
    .registers 20
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "id"    # I
    .param p7, "notification"    # Landroid/app/Notification;
    .param p8, "idReceived"    # [I
    .param p9, "userId"    # I

    .prologue
    .line 2694
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/notification/NotificationManagerService;->enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;[II)V

    .line 2693
    return-void
.end method

.method public removeForegroundServiceFlagFromNotification(Ljava/lang/String;II)V
    .registers 11
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "notificationId"    # I
    .param p3, "userId"    # I

    .prologue
    .line 2701
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-wrap17()V

    .line 2702
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 2703
    :try_start_8
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->indexOfNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    .line 2704
    .local v0, "i":I
    if-gez v0, :cond_43

    .line 2705
    const-string/jumbo v3, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "stripForegroundServiceFlag: Could not find notification with pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2706
    const-string/jumbo v6, " / id="

    .line 2705
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2706
    const-string/jumbo v6, " / userId="

    .line 2705
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_8 .. :try_end_41} :catchall_71

    monitor-exit v4

    .line 2707
    return-void

    .line 2709
    :cond_43
    :try_start_43
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    .line 2710
    .local v1, "r":Lcom/android/server/notification/NotificationRecord;
    iget-object v2, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 2715
    .local v2, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    .line 2716
    iget v5, v1, Lcom/android/server/notification/NotificationRecord;->mOriginalFlags:I

    and-int/lit8 v5, v5, -0x41

    .line 2715
    iput v5, v3, Landroid/app/Notification;->flags:I

    .line 2717
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-get24(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Lcom/android/server/notification/RankingHelper;->sort(Ljava/util/ArrayList;)V

    .line 2718
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-get16(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v3

    invoke-virtual {v3, v2, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyPostedLocked(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/StatusBarNotification;)V
    :try_end_6f
    .catchall {:try_start_43 .. :try_end_6f} :catchall_71

    monitor-exit v4

    .line 2700
    return-void

    .line 2702
    .end local v0    # "i":I
    .end local v1    # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v2    # "sbn":Landroid/service/notification/StatusBarNotification;
    :catchall_71
    move-exception v3

    monitor-exit v4

    throw v3
.end method
