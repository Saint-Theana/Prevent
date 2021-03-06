.class public Lcom/android/server/os/SchedulingPolicyService;
.super Landroid/os/ISchedulingPolicyService$Stub;
.source "SchedulingPolicyService.java"


# static fields
.field private static final PRIORITY_MAX:I = 0x3

.field private static final PRIORITY_MIN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SchedulingPolicyService"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/os/ISchedulingPolicyService$Stub;-><init>()V

    return-void
.end method

.method private isPermittedCallingUid()Z
    .registers 3

    .prologue
    .line 67
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 68
    .local v0, "callingUid":I
    sparse-switch v0, :sswitch_data_c

    .line 73
    const/4 v1, 0x0

    return v1

    .line 71
    :sswitch_9
    const/4 v1, 0x1

    return v1

    .line 68
    nop

    :sswitch_data_c
    .sparse-switch
        0x411 -> :sswitch_9
        0x417 -> :sswitch_9
    .end sparse-switch
.end method


# virtual methods
.method public requestPriority(III)I
    .registers 8
    .param p1, "pid"    # I
    .param p2, "tid"    # I
    .param p3, "prio"    # I

    .prologue
    const/4 v1, 0x3

    const/4 v3, -0x1

    .line 49
    invoke-direct {p0}, Lcom/android/server/os/SchedulingPolicyService;->isPermittedCallingUid()Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x1

    if-ge p3, v2, :cond_c

    .line 51
    :cond_b
    return v3

    .line 50
    :cond_c
    if-gt p3, v1, :cond_b

    invoke-static {p2}, Landroid/os/Process;->getThreadGroupLeader(I)I

    move-result v2

    if-ne v2, p1, :cond_b

    .line 55
    :try_start_14
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    if-ne v2, p1, :cond_1b

    .line 56
    const/4 v1, 0x4

    .line 55
    :cond_1b
    invoke-static {p2, v1}, Landroid/os/Process;->setThreadGroup(II)V

    .line 58
    const v1, 0x40000001    # 2.0000002f

    invoke-static {p2, v1, p3}, Landroid/os/Process;->setThreadScheduler(III)V
    :try_end_24
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_24} :catch_26

    .line 63
    const/4 v1, 0x0

    return v1

    .line 60
    :catch_26
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/RuntimeException;
    return v3
.end method
