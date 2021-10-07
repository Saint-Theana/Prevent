.class public Lcom/android/server/policy/pocket/PocketLock;
.super Ljava/lang/Object;
.source "PocketLock.java"


# instance fields
.field private mAnimating:Z

.field private mAttached:Z

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHintContainer:Landroid/view/View;

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mView:Landroid/view/View;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/pocket/PocketLock;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mAnimating:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/pocket/PocketLock;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mAttached:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/policy/pocket/PocketLock;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/policy/pocket/PocketLock;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/policy/pocket/PocketLock;->mAnimating:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/pocket/PocketLock;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/pocket/PocketLock;->addView()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/policy/pocket/PocketLock;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/pocket/PocketLock;->removeView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/server/policy/pocket/PocketLock;->mContext:Landroid/content/Context;

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mHandler:Landroid/os/Handler;

    .line 53
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mWindowManager:Landroid/view/WindowManager;

    .line 54
    invoke-direct {p0}, Lcom/android/server/policy/pocket/PocketLock;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 55
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 56
    const v1, 0x10900a1

    const/4 v2, 0x0

    .line 55
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mView:Landroid/view/View;

    .line 57
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mView:Landroid/view/View;

    const/16 v1, 0x1006

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 50
    return-void
.end method

.method private addView()V
    .registers 4

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mAttached:Z

    if-eqz v0, :cond_9

    .line 153
    :cond_8
    :goto_8
    return-void

    .line 155
    :cond_9
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/policy/pocket/PocketLock;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/server/policy/pocket/PocketLock;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mAttached:Z

    goto :goto_8
.end method

.method private getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 169
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 170
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 171
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 172
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 173
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 174
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7da

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 175
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0xc0100

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 178
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method private removeView()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 161
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mAttached:Z

    if-eqz v0, :cond_14

    .line 162
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/policy/pocket/PocketLock;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 163
    iput-boolean v2, p0, Lcom/android/server/policy/pocket/PocketLock;->mAnimating:Z

    .line 164
    iput-boolean v2, p0, Lcom/android/server/policy/pocket/PocketLock;->mAttached:Z

    .line 160
    :cond_14
    return-void
.end method


# virtual methods
.method public hide(Z)V
    .registers 4
    .param p1, "animate"    # Z

    .prologue
    .line 111
    new-instance v0, Lcom/android/server/policy/pocket/PocketLock$2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/policy/pocket/PocketLock$2;-><init>(Lcom/android/server/policy/pocket/PocketLock;Z)V

    .line 150
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/server/policy/pocket/PocketLock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 110
    return-void
.end method

.method public show(Z)V
    .registers 4
    .param p1, "animate"    # Z

    .prologue
    .line 63
    new-instance v0, Lcom/android/server/policy/pocket/PocketLock$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/policy/pocket/PocketLock$1;-><init>(Lcom/android/server/policy/pocket/PocketLock;Z)V

    .line 107
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/server/policy/pocket/PocketLock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 62
    return-void
.end method
