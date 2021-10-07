.class public Lcom/android/server/notification/NotificationComparator;
.super Ljava/lang/Object;
.source "NotificationComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/notification/NotificationRecord;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)I
    .registers 15
    .param p1, "left"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "right"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 28
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v0

    .line 29
    .local v0, "leftImportance":I
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v4

    .line 30
    .local v4, "rightImportance":I
    if-eq v0, v4, :cond_11

    .line 32
    invoke-static {v0, v4}, Ljava/lang/Integer;->compare(II)I

    move-result v8

    mul-int/lit8 v8, v8, -0x1

    return v8

    .line 36
    :cond_11
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getPackagePriority()I

    move-result v1

    .line 37
    .local v1, "leftPackagePriority":I
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getPackagePriority()I

    move-result v5

    .line 38
    .local v5, "rightPackagePriority":I
    if-eq v1, v5, :cond_22

    .line 40
    invoke-static {v1, v5}, Ljava/lang/Integer;->compare(II)I

    move-result v8

    mul-int/lit8 v8, v8, -0x1

    return v8

    .line 43
    :cond_22
    iget-object v8, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    iget v3, v8, Landroid/app/Notification;->priority:I

    .line 44
    .local v3, "leftPriority":I
    iget-object v8, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    iget v7, v8, Landroid/app/Notification;->priority:I

    .line 45
    .local v7, "rightPriority":I
    if-eq v3, v7, :cond_3b

    .line 47
    invoke-static {v3, v7}, Ljava/lang/Integer;->compare(II)I

    move-result v8

    mul-int/lit8 v8, v8, -0x1

    return v8

    .line 50
    :cond_3b
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getContactAffinity()F

    move-result v2

    .line 51
    .local v2, "leftPeople":F
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getContactAffinity()F

    move-result v6

    .line 52
    .local v6, "rightPeople":F
    cmpl-float v8, v2, v6

    if-eqz v8, :cond_4e

    .line 54
    invoke-static {v2, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    mul-int/lit8 v8, v8, -0x1

    return v8

    .line 58
    :cond_4e
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getRankingTimeMs()J

    move-result-wide v8

    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getRankingTimeMs()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Long;->compare(JJ)I

    move-result v8

    mul-int/lit8 v8, v8, -0x1

    return v8
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "left"    # Ljava/lang/Object;
    .param p2, "right"    # Ljava/lang/Object;

    .prologue
    .line 27
    check-cast p1, Lcom/android/server/notification/NotificationRecord;

    .end local p1    # "left":Ljava/lang/Object;
    check-cast p2, Lcom/android/server/notification/NotificationRecord;

    .end local p2    # "right":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationComparator;->compare(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)I

    move-result v0

    return v0
.end method
