.class Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$1;
.super Landroid/os/Handler;
.source "NotificationUsageStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 1059
    iput-object p1, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$1;->this$1:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1062
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    .line 1063
    .local v2, "r":Lcom/android/server/notification/NotificationRecord;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1064
    .local v0, "nowMs":J
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_4c

    .line 1078
    const-string/jumbo v3, "NotificationSQLiteLog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown message type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    :goto_29
    return-void

    .line 1066
    :pswitch_2a
    iget-object v3, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$1;->this$1:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    iget-object v4, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6, v2}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->-wrap0(Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;JILcom/android/server/notification/NotificationRecord;)V

    goto :goto_29

    .line 1069
    :pswitch_37
    iget-object v3, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$1;->this$1:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    const/4 v4, 0x2

    invoke-static {v3, v0, v1, v4, v2}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->-wrap0(Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;JILcom/android/server/notification/NotificationRecord;)V

    goto :goto_29

    .line 1072
    :pswitch_3e
    iget-object v3, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$1;->this$1:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    const/4 v4, 0x3

    invoke-static {v3, v0, v1, v4, v2}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->-wrap0(Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;JILcom/android/server/notification/NotificationRecord;)V

    goto :goto_29

    .line 1075
    :pswitch_45
    iget-object v3, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$1;->this$1:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    const/4 v4, 0x4

    invoke-static {v3, v0, v1, v4, v2}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->-wrap0(Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;JILcom/android/server/notification/NotificationRecord;)V

    goto :goto_29

    .line 1064
    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_37
        :pswitch_3e
        :pswitch_45
    .end packed-switch
.end method
