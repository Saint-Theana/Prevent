.class final Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SecurityPolicy"
.end annotation


# static fields
.field public static final INVALID_WINDOW_ID:I = -0x1

.field private static final RETRIEVAL_ALLOWING_EVENT_TYPES:I = 0x3b9bf


# instance fields
.field public mAccessibilityFocusNodeId:J

.field public mAccessibilityFocusedWindowId:I

.field public mActiveWindowId:I

.field public mFocusedWindowId:I

.field private mTouchInteractionInProgress:Z

.field public mWindows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 3
    .param p1, "windowId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->findWindowById(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canDispatchAccessibilityEventLocked(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;I)I
    .registers 3
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveProfileParentLocked(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "function"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    const/4 v0, -0x1

    .line 3747
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3768
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    .line 3769
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mFocusedWindowId:I

    .line 3770
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    .line 3771
    const-wide/32 v0, 0x7fffffff

    iput-wide v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusNodeId:J

    .line 3747
    return-void
.end method

.method private canDispatchAccessibilityEventLocked(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 3776
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    .line 3777
    .local v0, "eventType":I
    sparse-switch v0, :sswitch_data_12

    .line 3804
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->isRetrievalAllowingWindow(I)Z

    move-result v1

    return v1

    .line 3797
    :sswitch_10
    const/4 v1, 0x1

    return v1

    .line 3777
    :sswitch_data_12
    .sparse-switch
        0x20 -> :sswitch_10
        0x40 -> :sswitch_10
        0x80 -> :sswitch_10
        0x100 -> :sswitch_10
        0x200 -> :sswitch_10
        0x400 -> :sswitch_10
        0x4000 -> :sswitch_10
        0x40000 -> :sswitch_10
        0x80000 -> :sswitch_10
        0x100000 -> :sswitch_10
        0x200000 -> :sswitch_10
        0x400000 -> :sswitch_10
        0x1000000 -> :sswitch_10
    .end sparse-switch
.end method

.method private enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "function"    # Ljava/lang/String;

    .prologue
    .line 4177
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get0()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 4178
    return-void

    .line 4180
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_54

    .line 4181
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "You do not have "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4182
    const-string/jumbo v2, " required to call "

    .line 4181
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4182
    const-string/jumbo v2, " from pid="

    .line 4181
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4183
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 4181
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4183
    const-string/jumbo v2, ", uid="

    .line 4181
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4183
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 4181
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4176
    :cond_54
    return-void
.end method

.method private findWindowById(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 7
    .param p1, "windowId"    # I

    .prologue
    const/4 v4, 0x0

    .line 4164
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    if-eqz v3, :cond_20

    .line 4165
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 4166
    .local v2, "windowCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    if-ge v0, v2, :cond_20

    .line 4167
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 4168
    .local v1, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v3

    if-ne v3, p1, :cond_1d

    .line 4169
    return-object v1

    .line 4166
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 4173
    .end local v0    # "i":I
    .end local v1    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v2    # "windowCount":I
    :cond_20
    return-object v4
.end method

.method private getFocusedWindowId()I
    .registers 4

    .prologue
    .line 4192
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get16(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/view/WindowManagerInternal;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowManagerInternal;->getFocusedWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 4193
    .local v0, "token":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 4194
    :try_start_11
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap14(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/IBinder;)I
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_19

    move-result v1

    monitor-exit v2

    return v1

    .line 4193
    :catchall_19
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private hasPermission(Ljava/lang/String;)Z
    .registers 4
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 4188
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get1(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method private isRetrievalAllowingWindow(I)Z
    .registers 5
    .param p1, "windowId"    # I

    .prologue
    const/4 v0, 0x1

    .line 4154
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_a

    .line 4155
    return v0

    .line 4157
    :cond_a
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    if-ne p1, v1, :cond_f

    .line 4158
    return v0

    .line 4160
    :cond_f
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->findWindowById(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v1

    if-eqz v1, :cond_16

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private notifyWindowsChanged()V
    .registers 7

    .prologue
    .line 4056
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get17(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    move-result-object v1

    if-nez v1, :cond_9

    .line 4057
    return-void

    .line 4059
    :cond_9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4063
    .local v2, "identity":J
    const/high16 v1, 0x400000

    .line 4062
    :try_start_f
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 4064
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/view/accessibility/AccessibilityEvent;->setEventTime(J)V

    .line 4065
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get2(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v4

    invoke-virtual {v1, v0, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;I)Z
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_29

    .line 4067
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4055
    return-void

    .line 4066
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :catchall_29
    move-exception v1

    .line 4067
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4066
    throw v1
.end method

.method private resolveProfileParentLocked(I)I
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 4095
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get2(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v3

    if-eq p1, v3, :cond_27

    .line 4096
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4098
    .local v0, "identity":J
    :try_start_c
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get15(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 4099
    .local v2, "parent":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_24

    .line 4100
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_28

    move-result v3

    .line 4103
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4100
    return v3

    .line 4103
    :cond_24
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4106
    .end local v0    # "identity":J
    .end local v2    # "parent":Landroid/content/pm/UserInfo;
    :cond_27
    return p1

    .line 4102
    .restart local v0    # "identity":J
    :catchall_28
    move-exception v3

    .line 4103
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4102
    throw v3
.end method

.method private setAccessibilityFocusedWindowLocked(I)V
    .registers 6
    .param p1, "windowId"    # I

    .prologue
    .line 4041
    iget v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    if-eq v3, p1, :cond_2d

    .line 4042
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    .line 4043
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    if-eqz v3, :cond_2a

    .line 4044
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 4045
    .local v2, "windowCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    if-ge v0, v2, :cond_2a

    .line 4046
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 4047
    .local v1, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v3

    if-ne v3, p1, :cond_28

    const/4 v3, 0x1

    :goto_22
    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->setAccessibilityFocused(Z)V

    .line 4045
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 4047
    :cond_28
    const/4 v3, 0x0

    goto :goto_22

    .line 4051
    .end local v0    # "i":I
    .end local v1    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v2    # "windowCount":I
    :cond_2a
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->notifyWindowsChanged()V

    .line 4040
    :cond_2d
    return-void
.end method

.method private setActiveWindowLocked(I)V
    .registers 6
    .param p1, "windowId"    # I

    .prologue
    .line 4027
    iget v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    if-eq v3, p1, :cond_2d

    .line 4028
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    .line 4029
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    if-eqz v3, :cond_2a

    .line 4030
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 4031
    .local v2, "windowCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    if-ge v0, v2, :cond_2a

    .line 4032
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 4033
    .local v1, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v3

    if-ne v3, p1, :cond_28

    const/4 v3, 0x1

    :goto_22
    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->setActive(Z)V

    .line 4031
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 4033
    :cond_28
    const/4 v3, 0x0

    goto :goto_22

    .line 4036
    .end local v0    # "i":I
    .end local v1    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v2    # "windowCount":I
    :cond_2a
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->notifyWindowsChanged()V

    .line 4026
    :cond_2d
    return-void
.end method


# virtual methods
.method public canControlMagnification(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z
    .registers 4
    .param p1, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .prologue
    const/4 v0, 0x0

    .line 4085
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v1

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method public canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)Z
    .registers 4
    .param p1, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .param p2, "windowId"    # I

    .prologue
    .line 4072
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowContentLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->isRetrievalAllowingWindow(I)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public canPerformGestures(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z
    .registers 4
    .param p1, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .prologue
    const/4 v0, 0x0

    .line 4090
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v1

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method public canRetrieveWindowContentLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z
    .registers 4
    .param p1, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .prologue
    const/4 v0, 0x0

    .line 4080
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method public canRetrieveWindowsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z
    .registers 3
    .param p1, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .prologue
    .line 4076
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowContentLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mRetrieveInteractiveWindows:Z

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public clearWindowsLocked()V
    .registers 4

    .prologue
    .line 3810
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 3811
    .local v1, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    .line 3812
    .local v0, "activeWindowId":I
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->updateWindowsLocked(Ljava/util/List;)V

    .line 3813
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    .line 3814
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    .line 3809
    return-void
.end method

.method public computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z
    .registers 11
    .param p1, "windowId"    # I
    .param p2, "outRegion"    # Landroid/graphics/Region;

    .prologue
    const/4 v7, 0x0

    .line 3878
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    if-nez v6, :cond_6

    .line 3879
    return v7

    .line 3886
    :cond_6
    const/4 v4, 0x0

    .line 3887
    .local v4, "windowInteractiveRegion":Landroid/graphics/Region;
    const/4 v5, 0x0

    .line 3889
    .local v5, "windowInteractiveRegionChanged":Z
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 3890
    .local v3, "windowCount":I
    add-int/lit8 v2, v3, -0x1

    .end local v4    # "windowInteractiveRegion":Landroid/graphics/Region;
    .local v2, "i":I
    :goto_10
    if-ltz v2, :cond_4c

    .line 3891
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 3892
    .local v0, "currentWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-nez v4, :cond_32

    .line 3893
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v6

    if-ne v6, p1, :cond_2f

    .line 3894
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get13(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Rect;

    move-result-object v1

    .line 3895
    .local v1, "currentWindowBounds":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 3896
    invoke-virtual {p2, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 3897
    move-object v4, p2

    .line 3890
    .end local v1    # "currentWindowBounds":Landroid/graphics/Rect;
    :cond_2f
    :goto_2f
    add-int/lit8 v2, v2, -0x1

    goto :goto_10

    .line 3900
    :cond_32
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getType()I

    move-result v6

    .line 3901
    const/4 v7, 0x4

    .line 3900
    if-eq v6, v7, :cond_2f

    .line 3902
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get13(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Rect;

    move-result-object v1

    .line 3903
    .restart local v1    # "currentWindowBounds":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 3904
    sget-object v6, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v4, v1, v6}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 3905
    const/4 v5, 0x1

    goto :goto_2f

    .line 3910
    .end local v0    # "currentWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v1    # "currentWindowBounds":Landroid/graphics/Rect;
    :cond_4c
    return v5
.end method

.method public getActiveWindowId()I
    .registers 3

    .prologue
    .line 4020
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mTouchInteractionInProgress:Z

    if-eqz v0, :cond_c

    .line 4023
    :cond_9
    :goto_9
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    return v0

    .line 4021
    :cond_c
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->getFocusedWindowId()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    goto :goto_9
.end method

.method public isCallerInteractingAcrossUsers(I)Z
    .registers 6
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x1

    .line 4145
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4146
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-eq v2, v3, :cond_13

    .line 4147
    const/16 v2, 0x7d0

    if-ne v0, v2, :cond_14

    .line 4146
    :cond_13
    :goto_13
    return v1

    .line 4148
    :cond_14
    const/4 v2, -0x2

    if-eq p1, v2, :cond_13

    .line 4149
    const/4 v2, -0x3

    if-eq p1, v2, :cond_13

    const/4 v1, 0x0

    goto :goto_13
.end method

.method public onTouchInteractionEnd()V
    .registers 6

    .prologue
    .line 3993
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 3994
    const/4 v1, 0x0

    :try_start_8
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mTouchInteractionInProgress:Z

    .line 4003
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get11(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v1

    iget v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    .line 4004
    .local v0, "oldActiveWindow":I
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mFocusedWindowId:I

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->setActiveWindowLocked(I)V

    .line 4010
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get11(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v1

    iget v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    if-eq v0, v1, :cond_3f

    .line 4011
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    if-ne v1, v0, :cond_3f

    .line 4012
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap11(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mAccessibilityFocusOnlyInActiveWindow:Z

    .line 4010
    if-eqz v1, :cond_3f

    .line 4013
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get8(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    move-result-object v1

    const/16 v3, 0x9

    .line 4014
    const/4 v4, 0x0

    .line 4013
    invoke-virtual {v1, v3, v0, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_3f
    .catchall {:try_start_8 .. :try_end_3f} :catchall_41

    :cond_3f
    monitor-exit v2

    .line 3992
    return-void

    .line 3993
    .end local v0    # "oldActiveWindow":I
    :catchall_41
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onTouchInteractionStart()V
    .registers 3

    .prologue
    .line 3987
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3988
    const/4 v1, 0x1

    :try_start_8
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mTouchInteractionInProgress:Z
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_c

    monitor-exit v0

    .line 3986
    return-void

    .line 3987
    :catchall_c
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public resolveCallingUserIdEnforcingPermissionsLocked(I)I
    .registers 8
    .param p1, "userId"    # I

    .prologue
    const/4 v5, -0x2

    const/4 v4, -0x3

    .line 4110
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4111
    .local v0, "callingUid":I
    if-eqz v0, :cond_c

    .line 4112
    const/16 v3, 0x3e8

    if-ne v0, v3, :cond_17

    .line 4114
    :cond_c
    if-eq p1, v5, :cond_10

    .line 4115
    if-ne p1, v4, :cond_26

    .line 4116
    :cond_10
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get2(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v3

    return v3

    .line 4113
    :cond_17
    const/16 v3, 0x7d0

    if-eq v0, v3, :cond_c

    .line 4120
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 4121
    .local v1, "callingUserId":I
    if-ne v1, p1, :cond_2b

    .line 4122
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveProfileParentLocked(I)I

    move-result v3

    return v3

    .line 4118
    .end local v1    # "callingUserId":I
    :cond_26
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveProfileParentLocked(I)I

    move-result v3

    return v3

    .line 4124
    .restart local v1    # "callingUserId":I
    :cond_2b
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveProfileParentLocked(I)I

    move-result v2

    .line 4125
    .local v2, "callingUserParentId":I
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get2(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v3

    if-ne v2, v3, :cond_42

    .line 4126
    if-eq p1, v5, :cond_3b

    .line 4127
    if-ne p1, v4, :cond_42

    .line 4128
    :cond_3b
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get2(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v3

    return v3

    .line 4130
    :cond_42
    const-string/jumbo v3, "android.permission.INTERACT_ACROSS_USERS"

    invoke-direct {p0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->hasPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_54

    .line 4131
    const-string/jumbo v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-direct {p0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->hasPermission(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 4136
    :cond_54
    if-eq p1, v5, :cond_58

    .line 4137
    if-ne p1, v4, :cond_92

    .line 4138
    :cond_58
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get2(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v3

    return v3

    .line 4132
    :cond_5f
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Call from user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " as user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4133
    const-string/jumbo v5, " without permission INTERACT_ACROSS_USERS or "

    .line 4132
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4134
    const-string/jumbo v5, "INTERACT_ACROSS_USERS_FULL not allowed."

    .line 4132
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4140
    :cond_92
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Calling user can be changed to only UserHandle.USER_CURRENT or UserHandle.USER_CURRENT_OR_SELF."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public updateActiveAndAccessibilityFocusedWindowLocked(IJII)V
    .registers 12
    .param p1, "windowId"    # I
    .param p2, "nodeId"    # J
    .param p4, "eventType"    # I
    .param p5, "eventAction"    # I

    .prologue
    const-wide/32 v4, 0x7fffffff

    .line 3929
    sparse-switch p4, :sswitch_data_90

    .line 3920
    :goto_6
    return-void

    .line 3937
    :sswitch_7
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3938
    :try_start_e
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get17(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    move-result-object v0

    if-nez v0, :cond_22

    .line 3939
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->getFocusedWindowId()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mFocusedWindowId:I

    .line 3940
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mFocusedWindowId:I

    if-ne p1, v0, :cond_22

    .line 3941
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I
    :try_end_22
    .catchall {:try_start_e .. :try_end_22} :catchall_24

    :cond_22
    :goto_22
    monitor-exit v1

    goto :goto_6

    .line 3937
    :catchall_24
    move-exception v0

    monitor-exit v1

    throw v0

    .line 3950
    :sswitch_27
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3951
    :try_start_2e
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mTouchInteractionInProgress:Z

    if-eqz v0, :cond_22

    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    if-eq v0, p1, :cond_22

    .line 3952
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->setActiveWindowLocked(I)V
    :try_end_39
    .catchall {:try_start_2e .. :try_end_39} :catchall_3a

    goto :goto_22

    .line 3950
    :catchall_3a
    move-exception v0

    monitor-exit v1

    throw v0

    .line 3958
    :sswitch_3d
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3959
    :try_start_44
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    if-eq v0, p1, :cond_22

    .line 3960
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get8(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    move-result-object v0

    .line 3961
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    .line 3960
    const/16 v3, 0x9

    .line 3961
    const/4 v4, 0x0

    .line 3960
    invoke-virtual {v0, v3, v2, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3962
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get11(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v0

    invoke-direct {v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->setAccessibilityFocusedWindowLocked(I)V

    .line 3963
    iput-wide p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusNodeId:J
    :try_end_65
    .catchall {:try_start_44 .. :try_end_65} :catchall_66

    goto :goto_22

    .line 3958
    :catchall_66
    move-exception v0

    monitor-exit v1

    throw v0

    .line 3969
    :sswitch_69
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3970
    :try_start_70
    iget-wide v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusNodeId:J

    cmp-long v0, v2, p2

    if-nez v0, :cond_7b

    .line 3971
    const-wide/32 v2, 0x7fffffff

    iput-wide v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusNodeId:J

    .line 3975
    :cond_7b
    iget-wide v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusNodeId:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_22

    .line 3976
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    if-ne v0, p1, :cond_22

    .line 3977
    const/16 v0, 0x40

    if-eq p5, v0, :cond_22

    .line 3979
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I
    :try_end_8c
    .catchall {:try_start_70 .. :try_end_8c} :catchall_8d

    goto :goto_22

    .line 3969
    :catchall_8d
    move-exception v0

    monitor-exit v1

    throw v0

    .line 3929
    :sswitch_data_90
    .sparse-switch
        0x20 -> :sswitch_7
        0x80 -> :sswitch_27
        0x8000 -> :sswitch_3d
        0x10000 -> :sswitch_69
    .end sparse-switch
.end method

.method public updateEventSourceLocked(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 3914
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const v1, 0x3b9bf

    and-int/2addr v0, v1

    if-nez v0, :cond_e

    .line 3915
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 3913
    :cond_e
    return-void
.end method

.method public updateWindowsLocked(Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    const/4 v7, -0x1

    const/4 v8, 0x1

    .line 3818
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    if-nez v6, :cond_d

    .line 3819
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    .line 3822
    :cond_d
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    .line 3823
    .local v2, "oldWindowCount":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_15
    if-ltz v1, :cond_25

    .line 3824
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityWindowInfo;->recycle()V

    .line 3823
    add-int/lit8 v1, v1, -0x1

    goto :goto_15

    .line 3827
    :cond_25
    iput v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mFocusedWindowId:I

    .line 3828
    iget-boolean v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mTouchInteractionInProgress:Z

    if-nez v6, :cond_2d

    .line 3829
    iput v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    .line 3837
    :cond_2d
    const/4 v0, 0x1

    .line 3839
    .local v0, "activeWindowGone":Z
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 3840
    .local v4, "windowCount":I
    if-lez v4, :cond_8e

    .line 3841
    const/4 v1, 0x0

    :goto_35
    if-ge v1, v4, :cond_60

    .line 3842
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 3843
    .local v3, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v5

    .line 3844
    .local v5, "windowId":I
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->isFocused()Z

    move-result v6

    if-eqz v6, :cond_52

    .line 3845
    iput v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mFocusedWindowId:I

    .line 3846
    iget-boolean v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mTouchInteractionInProgress:Z

    if-nez v6, :cond_5a

    .line 3847
    iput v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    .line 3848
    invoke-virtual {v3, v8}, Landroid/view/accessibility/AccessibilityWindowInfo;->setActive(Z)V

    .line 3853
    :cond_52
    :goto_52
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3841
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 3849
    :cond_5a
    iget v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    if-ne v5, v6, :cond_52

    .line 3850
    const/4 v0, 0x0

    goto :goto_52

    .line 3856
    .end local v3    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v5    # "windowId":I
    :cond_60
    iget-boolean v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mTouchInteractionInProgress:Z

    if-eqz v6, :cond_6a

    if-eqz v0, :cond_6a

    .line 3857
    iget v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mFocusedWindowId:I

    iput v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    .line 3862
    :cond_6a
    const/4 v1, 0x0

    :goto_6b
    if-ge v1, v4, :cond_8e

    .line 3863
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 3864
    .restart local v3    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v6

    iget v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    if-ne v6, v7, :cond_80

    .line 3865
    invoke-virtual {v3, v8}, Landroid/view/accessibility/AccessibilityWindowInfo;->setActive(Z)V

    .line 3867
    :cond_80
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v6

    iget v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    if-ne v6, v7, :cond_8b

    .line 3868
    invoke-virtual {v3, v8}, Landroid/view/accessibility/AccessibilityWindowInfo;->setAccessibilityFocused(Z)V

    .line 3862
    :cond_8b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6b

    .line 3873
    .end local v3    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_8e
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->notifyWindowsChanged()V

    .line 3817
    return-void
.end method
