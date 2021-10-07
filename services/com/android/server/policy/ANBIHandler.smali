.class public Lcom/android/server/policy/ANBIHandler;
.super Ljava/lang/Object;
.source "ANBIHandler.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mScreenTouched:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-class v0, Lcom/android/server/policy/ANBIHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/ANBIHandler;->TAG:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/server/policy/ANBIHandler;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method


# virtual methods
.method public isScreenTouched()Z
    .registers 2

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/server/policy/ANBIHandler;->mScreenTouched:Z

    return v0
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 40
    .local v0, "action":I
    packed-switch v0, :pswitch_data_10

    .line 47
    :pswitch_7
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/policy/ANBIHandler;->mScreenTouched:Z

    .line 38
    :goto_a
    return-void

    .line 44
    :pswitch_b
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/ANBIHandler;->mScreenTouched:Z

    goto :goto_a

    .line 40
    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_b
        :pswitch_7
        :pswitch_b
        :pswitch_7
        :pswitch_7
        :pswitch_b
    .end packed-switch
.end method
