.class public final Lcom/android/server/notification/NotificationManagerService$DumpFilter;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DumpFilter"
.end annotation


# instance fields
.field public filtered:Z

.field public pkgFilter:Ljava/lang/String;

.field public redact:Z

.field public since:J

.field public stats:Z

.field public zen:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 4566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4567
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    .line 4572
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    .line 4566
    return-void
.end method

.method public static parseFromArguments([Ljava/lang/String;)Lcom/android/server/notification/NotificationManagerService$DumpFilter;
    .registers 8
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 4575
    new-instance v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    invoke-direct {v2}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;-><init>()V

    .line 4576
    .local v2, "filter":Lcom/android/server/notification/NotificationManagerService$DumpFilter;
    const/4 v1, 0x0

    .local v1, "ai":I
    :goto_7
    array-length v3, p0

    if-ge v1, v3, :cond_9c

    .line 4577
    aget-object v0, p0, v1

    .line 4578
    .local v0, "a":Ljava/lang/String;
    const-string/jumbo v3, "--noredact"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    const-string/jumbo v3, "--reveal"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 4579
    :cond_1e
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    .line 4576
    :cond_21
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 4580
    :cond_24
    const-string/jumbo v3, "p"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f

    const-string/jumbo v3, "pkg"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f

    const-string/jumbo v3, "--package"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 4581
    :cond_3f
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_21

    .line 4582
    add-int/lit8 v1, v1, 0x1

    .line 4583
    aget-object v3, p0, v1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->pkgFilter:Ljava/lang/String;

    .line 4584
    iget-object v3, v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->pkgFilter:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 4585
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->pkgFilter:Ljava/lang/String;

    goto :goto_21

    .line 4587
    :cond_5e
    iput-boolean v6, v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    goto :goto_21

    .line 4590
    :cond_61
    const-string/jumbo v3, "--zen"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_73

    const-string/jumbo v3, "zen"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_78

    .line 4591
    :cond_73
    iput-boolean v6, v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    .line 4592
    iput-boolean v6, v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->zen:Z

    goto :goto_21

    .line 4593
    :cond_78
    const-string/jumbo v3, "--stats"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 4594
    iput-boolean v6, v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->stats:Z

    .line 4595
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_97

    .line 4596
    add-int/lit8 v1, v1, 0x1

    .line 4597
    aget-object v3, p0, v1

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->since:J

    goto :goto_21

    .line 4599
    :cond_97
    const-wide/16 v4, 0x0

    iput-wide v4, v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->since:J

    goto :goto_21

    .line 4603
    .end local v0    # "a":Ljava/lang/String;
    :cond_9c
    return-object v2
.end method


# virtual methods
.method public matches(Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    const/4 v0, 0x1

    .line 4613
    iget-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-nez v1, :cond_6

    return v0

    .line 4614
    :cond_6
    iget-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->zen:Z

    if-eqz v1, :cond_b

    :goto_a
    return v0

    :cond_b
    if-eqz p1, :cond_16

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v0

    goto :goto_a

    :cond_16
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public matches(Landroid/service/notification/StatusBarNotification;)Z
    .registers 4
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v0, 0x1

    .line 4607
    iget-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-nez v1, :cond_6

    return v0

    .line 4608
    :cond_6
    iget-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->zen:Z

    if-eqz v1, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    if-eqz p1, :cond_20

    .line 4609
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v0

    goto :goto_a

    .line 4608
    :cond_20
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public matches(Ljava/lang/String;)Z
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 4618
    iget-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-nez v1, :cond_6

    return v0

    .line 4619
    :cond_6
    iget-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->zen:Z

    if-eqz v1, :cond_b

    :goto_a
    return v0

    :cond_b
    if-eqz p1, :cond_18

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->pkgFilter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_a

    :cond_18
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0x27

    .line 4624
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->stats:Z

    if-eqz v0, :cond_a

    const-string/jumbo v0, "stats"

    :goto_9
    return-object v0

    :cond_a
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->zen:Z

    if-eqz v0, :cond_12

    const-string/jumbo v0, "zen"

    goto :goto_9

    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->pkgFilter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method
