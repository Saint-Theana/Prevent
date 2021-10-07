.class final Lcom/android/server/AlarmManagerService$Batch;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Batch"
.end annotation


# instance fields
.field final alarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field end:J

.field flags:I

.field start:J

.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 404
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$Batch;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    .line 405
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 406
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 407
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    .line 404
    return-void
.end method

.method constructor <init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/AlarmManagerService;
    .param p2, "seed"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    .line 410
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$Batch;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    .line 411
    iget-wide v0, p2, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 412
    iget-wide v0, p2, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 413
    iget v0, p2, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    iput v0, p0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    .line 414
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    return-void
.end method


# virtual methods
.method add(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 8
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    .line 440
    const/4 v1, 0x0

    .line 442
    .local v1, "newStart":Z
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/server/AlarmManagerService;->sIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    invoke-static {v2, p1, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 443
    .local v0, "index":I
    if-gez v0, :cond_f

    .line 444
    rsub-int/lit8 v2, v0, 0x0

    add-int/lit8 v0, v2, -0x1

    .line 446
    :cond_f
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 450
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v4, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_21

    .line 451
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 452
    const/4 v1, 0x1

    .line 454
    :cond_21
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iget-wide v4, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_2d

    .line 455
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 457
    :cond_2d
    iget v2, p0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    iget v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    .line 462
    return v1
.end method

.method canHold(JJ)Z
    .registers 10
    .param p1, "whenElapsed"    # J
    .param p3, "maxWhen"    # J

    .prologue
    const/4 v0, 0x0

    .line 436
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    cmp-long v1, v2, p1

    if-ltz v1, :cond_e

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v1, v2, p3

    if-gtz v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method get(I)Lcom/android/server/AlarmManagerService$Alarm;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    return-object v0
.end method

.method getAlarmByElapsedTime(J)Lcom/android/server/AlarmManagerService$Alarm;
    .registers 8
    .param p1, "whenElapsed"    # J

    .prologue
    .line 426
    const/4 v0, 0x0

    .line 427
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    const/4 v1, 0x0

    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 428
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v2, v2, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_20

    .line 429
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 427
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 432
    :cond_23
    return-object v0
.end method

.method hasPackage(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 611
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 612
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_1c

    .line 613
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    .line 614
    .local v1, "a":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {v1, p1}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 615
    const/4 v3, 0x1

    return v3

    .line 612
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 618
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_1c
    const/4 v3, 0x0

    return v3
.end method

.method hasWakeups()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 622
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 623
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_1d

    .line 624
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    .line 626
    .local v1, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_1a

    .line 627
    const/4 v3, 0x1

    return v3

    .line 623
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 630
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_1d
    return v4
.end method

.method isRtcPowerOffWakeup()Z
    .registers 6

    .prologue
    .line 634
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 635
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_1b

    .line 636
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    .line 637
    .local v1, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_18

    .line 638
    const/4 v3, 0x1

    return v3

    .line 635
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 641
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_1b
    const/4 v3, 0x0

    return v3
.end method

.method remove(I)Z
    .registers 12
    .param p1, "userHandle"    # I

    .prologue
    .line 581
    const/4 v1, 0x0

    .line 582
    .local v1, "didRemove":Z
    const-wide/16 v6, 0x0

    .line 583
    .local v6, "newStart":J
    const-wide v4, 0x7fffffffffffffffL

    .line 584
    .local v4, "newEnd":J
    const/4 v2, 0x0

    .local v2, "i":I
    :cond_9
    :goto_9
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_45

    .line 585
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 586
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v3, p1, :cond_32

    .line 587
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 588
    const/4 v1, 0x1

    .line 589
    iget-object v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v3, :cond_9

    .line 590
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v8, 0x1

    invoke-static {v3, v8}, Lcom/android/server/AlarmManagerService;->-set2(Lcom/android/server/AlarmManagerService;Z)Z

    goto :goto_9

    .line 593
    :cond_32
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v3, v8, v6

    if-lez v3, :cond_3a

    .line 594
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 596
    :cond_3a
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    cmp-long v3, v8, v4

    if-gez v3, :cond_42

    .line 597
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 599
    :cond_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 602
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_45
    if-eqz v1, :cond_4b

    .line 604
    iput-wide v6, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 605
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 607
    :cond_4b
    return v1
.end method

.method remove(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z
    .registers 13
    .param p1, "operation"    # Landroid/app/PendingIntent;
    .param p2, "listener"    # Landroid/app/IAlarmListener;

    .prologue
    .line 466
    if-nez p1, :cond_6

    if-nez p2, :cond_6

    .line 471
    const/4 v8, 0x0

    return v8

    .line 473
    :cond_6
    const/4 v1, 0x0

    .line 474
    .local v1, "didRemove":Z
    const-wide/16 v6, 0x0

    .line 475
    .local v6, "newStart":J
    const-wide v4, 0x7fffffffffffffffL

    .line 476
    .local v4, "newEnd":J
    const/4 v3, 0x0

    .line 477
    .local v3, "newFlags":I
    const/4 v2, 0x0

    .local v2, "i":I
    :cond_10
    :goto_10
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_4d

    .line 478
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 479
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {v0, p1, p2}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    move-result v8

    if-eqz v8, :cond_37

    .line 480
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 481
    const/4 v1, 0x1

    .line 482
    iget-object v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v8, :cond_10

    .line 483
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$Batch;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/android/server/AlarmManagerService;->-set2(Lcom/android/server/AlarmManagerService;Z)Z

    goto :goto_10

    .line 486
    :cond_37
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v8, v8, v6

    if-lez v8, :cond_3f

    .line 487
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 489
    :cond_3f
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    cmp-long v8, v8, v4

    if-gez v8, :cond_47

    .line 490
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 492
    :cond_47
    iget v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    or-int/2addr v3, v8

    .line 493
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 496
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_4d
    if-eqz v1, :cond_55

    .line 498
    iput-wide v6, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 499
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 500
    iput v3, p0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    .line 502
    :cond_55
    return v1
.end method

.method remove(Ljava/lang/String;)Z
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 506
    if-nez p1, :cond_4

    .line 511
    return v8

    .line 513
    :cond_4
    const/4 v1, 0x0

    .line 514
    .local v1, "didRemove":Z
    const-wide/16 v6, 0x0

    .line 515
    .local v6, "newStart":J
    const-wide v4, 0x7fffffffffffffffL

    .line 516
    .local v4, "newEnd":J
    const/4 v3, 0x0

    .line 517
    .local v3, "newFlags":I
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    .local v2, "i":I
    :goto_15
    if-ltz v2, :cond_4c

    .line 518
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 519
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_38

    .line 520
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 521
    const/4 v1, 0x1

    .line 522
    iget-object v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v8, :cond_35

    .line 523
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$Batch;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/android/server/AlarmManagerService;->-set2(Lcom/android/server/AlarmManagerService;Z)Z

    .line 517
    :cond_35
    :goto_35
    add-int/lit8 v2, v2, -0x1

    goto :goto_15

    .line 526
    :cond_38
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v8, v8, v6

    if-lez v8, :cond_40

    .line 527
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 529
    :cond_40
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    cmp-long v8, v8, v4

    if-gez v8, :cond_48

    .line 530
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 532
    :cond_48
    iget v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    or-int/2addr v3, v8

    goto :goto_35

    .line 535
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_4c
    if-eqz v1, :cond_54

    .line 537
    iput-wide v6, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 538
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 539
    iput v3, p0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    .line 541
    :cond_54
    return v1
.end method

.method removeForStopped(I)Z
    .registers 14
    .param p1, "uid"    # I

    .prologue
    .line 545
    const/4 v1, 0x0

    .line 546
    .local v1, "didRemove":Z
    const-wide/16 v8, 0x0

    .line 547
    .local v8, "newStart":J
    const-wide v4, 0x7fffffffffffffffL

    .line 548
    .local v4, "newEnd":J
    const/4 v6, 0x0

    .line 549
    .local v6, "newFlags":I
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .local v3, "i":I
    :goto_11
    if-ltz v3, :cond_53

    .line 550
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 552
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :try_start_1b
    iget v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    if-ne v7, p1, :cond_3f

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    .line 553
    iget-object v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    .line 552
    invoke-interface {v7, p1, v10}, Landroid/app/IActivityManager;->getAppStartMode(ILjava/lang/String;)I

    move-result v7

    .line 553
    const/4 v10, 0x2

    .line 552
    if-ne v7, v10, :cond_3f

    .line 554
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 555
    const/4 v1, 0x1

    .line 556
    iget-object v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v7, :cond_3c

    .line 557
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$Batch;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v10, 0x1

    invoke-static {v7, v10}, Lcom/android/server/AlarmManagerService;->-set2(Lcom/android/server/AlarmManagerService;Z)Z

    .line 549
    :cond_3c
    :goto_3c
    add-int/lit8 v3, v3, -0x1

    goto :goto_11

    .line 560
    :cond_3f
    iget-wide v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v7, v10, v8

    if-lez v7, :cond_47

    .line 561
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 563
    :cond_47
    iget-wide v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    cmp-long v7, v10, v4

    if-gez v7, :cond_4f

    .line 564
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 566
    :cond_4f
    iget v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_51} :catch_5c

    or-int/2addr v6, v7

    goto :goto_3c

    .line 571
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_53
    if-eqz v1, :cond_5b

    .line 573
    iput-wide v8, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 574
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 575
    iput v6, p0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    .line 577
    :cond_5b
    return v1

    .line 568
    .restart local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :catch_5c
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_3c
.end method

.method size()I
    .registers 2

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 647
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "Batch{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$Batch;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    const-string/jumbo v1, " num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 649
    const-string/jumbo v1, " start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 650
    const-string/jumbo v1, " end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 651
    iget v1, p0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    if-eqz v1, :cond_4e

    .line 652
    const-string/jumbo v1, " flgs=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    iget v1, p0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    :cond_4e
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 656
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
