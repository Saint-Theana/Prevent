.class Lcom/android/server/VibratorService$Vibration;
.super Ljava/lang/Object;
.source "VibratorService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Vibration"
.end annotation


# instance fields
.field private final mOpPkg:Ljava/lang/String;

.field private final mPattern:[J

.field private final mRepeat:I

.field private final mStartTime:J

.field private final mTimeout:J

.field private final mToken:Landroid/os/IBinder;

.field private final mUid:I

.field private final mUsageHint:I

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method static synthetic -get0(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mOpPkg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/VibratorService$Vibration;)[J
    .registers 2

    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mPattern:[J

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/VibratorService$Vibration;)I
    .registers 2

    iget v0, p0, Lcom/android/server/VibratorService$Vibration;->mRepeat:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/VibratorService$Vibration;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/VibratorService$Vibration;->mStartTime:J

    return-wide v0
.end method

.method static synthetic -get4(Lcom/android/server/VibratorService$Vibration;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/VibratorService$Vibration;->mTimeout:J

    return-wide v0
.end method

.method static synthetic -get5(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/VibratorService$Vibration;)I
    .registers 2

    iget v0, p0, Lcom/android/server/VibratorService$Vibration;->mUid:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/server/VibratorService$Vibration;)I
    .registers 2

    iget v0, p0, Lcom/android/server/VibratorService$Vibration;->mUsageHint:I

    return v0
.end method

.method constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;JIILjava/lang/String;)V
    .registers 19
    .param p1, "this$0"    # Lcom/android/server/VibratorService;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "millis"    # J
    .param p5, "usageHint"    # I
    .param p6, "uid"    # I
    .param p7, "opPkg"    # Ljava/lang/String;

    .prologue
    .line 111
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;J[JIIILjava/lang/String;)V

    .line 110
    return-void
.end method

.method private constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;J[JIIILjava/lang/String;)V
    .registers 13
    .param p1, "this$0"    # Lcom/android/server/VibratorService;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "millis"    # J
    .param p5, "pattern"    # [J
    .param p6, "repeat"    # I
    .param p7, "usageHint"    # I
    .param p8, "uid"    # I
    .param p9, "opPkg"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p2, p0, Lcom/android/server/VibratorService$Vibration;->mToken:Landroid/os/IBinder;

    .line 122
    iput-wide p3, p0, Lcom/android/server/VibratorService$Vibration;->mTimeout:J

    .line 123
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/VibratorService$Vibration;->mStartTime:J

    .line 124
    iput-object p5, p0, Lcom/android/server/VibratorService$Vibration;->mPattern:[J

    .line 125
    iput p6, p0, Lcom/android/server/VibratorService$Vibration;->mRepeat:I

    .line 126
    iput p7, p0, Lcom/android/server/VibratorService$Vibration;->mUsageHint:I

    .line 127
    iput p8, p0, Lcom/android/server/VibratorService$Vibration;->mUid:I

    .line 128
    iput-object p9, p0, Lcom/android/server/VibratorService$Vibration;->mOpPkg:Ljava/lang/String;

    .line 120
    return-void
.end method

.method constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;[JIIILjava/lang/String;)V
    .registers 19
    .param p1, "this$0"    # Lcom/android/server/VibratorService;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pattern"    # [J
    .param p4, "repeat"    # I
    .param p5, "usageHint"    # I
    .param p6, "uid"    # I
    .param p7, "opPkg"    # Ljava/lang/String;

    .prologue
    .line 116
    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;J[JIIILjava/lang/String;)V

    .line 115
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->-get2(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v1

    monitor-enter v1

    .line 133
    :try_start_7
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->-get2(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 134
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->-get0(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;

    move-result-object v0

    if-ne p0, v0, :cond_22

    .line 135
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->-wrap0(Lcom/android/server/VibratorService;)V

    .line 136
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->-wrap2(Lcom/android/server/VibratorService;)V
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_24

    :cond_22
    monitor-exit v1

    .line 131
    return-void

    .line 132
    :catchall_24
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public hasLongerTimeout(J)Z
    .registers 8
    .param p1, "millis"    # J

    .prologue
    const/4 v4, 0x0

    .line 142
    iget-wide v0, p0, Lcom/android/server/VibratorService$Vibration;->mTimeout:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    .line 145
    return v4

    .line 147
    :cond_a
    iget-wide v0, p0, Lcom/android/server/VibratorService$Vibration;->mStartTime:J

    iget-wide v2, p0, Lcom/android/server/VibratorService$Vibration;->mTimeout:J

    add-long/2addr v0, v2

    .line 148
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p1

    .line 147
    cmp-long v0, v0, v2

    if-gez v0, :cond_19

    .line 151
    return v4

    .line 153
    :cond_19
    const/4 v0, 0x1

    return v0
.end method

.method public isSystemHapticFeedback()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 157
    iget v1, p0, Lcom/android/server/VibratorService$Vibration;->mUid:I

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_b

    iget v1, p0, Lcom/android/server/VibratorService$Vibration;->mUid:I

    if-nez v1, :cond_11

    .line 158
    :cond_b
    :goto_b
    iget v1, p0, Lcom/android/server/VibratorService$Vibration;->mRepeat:I

    if-gez v1, :cond_10

    const/4 v0, 0x1

    .line 157
    :cond_10
    return v0

    :cond_11
    const-string/jumbo v1, "com.android.systemui"

    iget-object v2, p0, Lcom/android/server/VibratorService$Vibration;->mOpPkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_b
.end method
