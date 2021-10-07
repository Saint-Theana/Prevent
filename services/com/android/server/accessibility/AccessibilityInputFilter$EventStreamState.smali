.class Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;
.super Ljava/lang/Object;
.source "AccessibilityInputFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityInputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventStreamState"
.end annotation


# instance fields
.field private mDeviceId:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 518
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->mDeviceId:I

    .line 517
    return-void
.end method


# virtual methods
.method public deviceIdValid()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 542
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->mDeviceId:I

    if-ltz v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 549
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->mDeviceId:I

    .line 548
    return-void
.end method

.method public shouldProcessKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 572
    const/4 v0, 0x0

    return v0
.end method

.method public shouldProcessMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 564
    const/4 v0, 0x0

    return v0
.end method

.method public shouldProcessScroll()Z
    .registers 2

    .prologue
    .line 556
    const/4 v0, 0x0

    return v0
.end method

.method public updateDeviceId(I)Z
    .registers 3
    .param p1, "deviceId"    # I

    .prologue
    .line 529
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->mDeviceId:I

    if-ne v0, p1, :cond_6

    .line 530
    const/4 v0, 0x0

    return v0

    .line 533
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->reset()V

    .line 534
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->mDeviceId:I

    .line 535
    const/4 v0, 0x1

    return v0
.end method
