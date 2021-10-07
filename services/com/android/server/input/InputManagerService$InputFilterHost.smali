.class final Lcom/android/server/input/InputManagerService$InputFilterHost;
.super Landroid/view/IInputFilterHost$Stub;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputFilterHost"
.end annotation


# instance fields
.field private mDisconnected:Z

.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/input/InputManagerService;

    .prologue
    .line 2228
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$InputFilterHost;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Landroid/view/IInputFilterHost$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public disconnectLocked()V
    .registers 2

    .prologue
    .line 2232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService$InputFilterHost;->mDisconnected:Z

    .line 2231
    return-void
.end method

.method public sendInputEvent(Landroid/view/InputEvent;I)V
    .registers 13
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 2237
    if-nez p1, :cond_b

    .line 2238
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "event must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2241
    :cond_b
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputFilterHost;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object v9, v0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v9

    .line 2242
    :try_start_10
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService$InputFilterHost;->mDisconnected:Z

    if-nez v0, :cond_27

    .line 2243
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputFilterHost;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->-get2(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v0

    .line 2245
    const/high16 v2, 0x4000000

    or-int v8, p2, v2

    .line 2243
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2244
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    .line 2243
    invoke-static/range {v0 .. v8}, Lcom/android/server/input/InputManagerService;->-wrap2(JLandroid/view/InputEvent;IIIIII)I
    :try_end_27
    .catchall {:try_start_10 .. :try_end_27} :catchall_29

    :cond_27
    monitor-exit v9

    .line 2236
    return-void

    .line 2241
    :catchall_29
    move-exception v0

    monitor-exit v9

    throw v0
.end method
