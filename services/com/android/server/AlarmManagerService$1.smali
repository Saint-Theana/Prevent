.class Lcom/android/server/AlarmManagerService$1;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/AlarmManagerService$Alarm;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 674
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$1;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/AlarmManagerService$Alarm;Lcom/android/server/AlarmManagerService$Alarm;)I
    .registers 9
    .param p1, "lhs"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "rhs"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 678
    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

    iget v0, v0, Lcom/android/server/AlarmManagerService$PriorityClass;->priority:I

    iget-object v1, p2, Lcom/android/server/AlarmManagerService$Alarm;->priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

    iget v1, v1, Lcom/android/server/AlarmManagerService$PriorityClass;->priority:I

    if-ge v0, v1, :cond_d

    .line 679
    return v4

    .line 680
    :cond_d
    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

    iget v0, v0, Lcom/android/server/AlarmManagerService$PriorityClass;->priority:I

    iget-object v1, p2, Lcom/android/server/AlarmManagerService$Alarm;->priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

    iget v1, v1, Lcom/android/server/AlarmManagerService$PriorityClass;->priority:I

    if-le v0, v1, :cond_18

    .line 681
    return v5

    .line 685
    :cond_18
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v2, p2, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_21

    .line 686
    return v4

    .line 687
    :cond_21
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v2, p2, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2a

    .line 688
    return v5

    .line 692
    :cond_2a
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .prologue
    .line 676
    check-cast p1, Lcom/android/server/AlarmManagerService$Alarm;

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Lcom/android/server/AlarmManagerService$Alarm;

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AlarmManagerService$1;->compare(Lcom/android/server/AlarmManagerService$Alarm;Lcom/android/server/AlarmManagerService$Alarm;)I

    move-result v0

    return v0
.end method
