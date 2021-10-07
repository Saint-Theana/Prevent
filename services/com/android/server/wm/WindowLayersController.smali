.class public Lcom/android/server/wm/WindowLayersController;
.super Ljava/lang/Object;
.source "WindowLayersController.java"


# instance fields
.field private mDockDivider:Lcom/android/server/wm/WindowState;

.field private mDockedWindows:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mHighestApplicationLayer:I

.field private mInputMethodAnimLayerAdjustment:I

.field private mInputMethodWindows:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mPinnedWindows:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mReplacingWindows:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 3
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/WindowLayersController;->mHighestApplicationLayer:I

    .line 61
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mPinnedWindows:Ljava/util/ArrayDeque;

    .line 62
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mDockedWindows:Ljava/util/ArrayDeque;

    .line 63
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodWindows:Ljava/util/ArrayDeque;

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mDockDivider:Lcom/android/server/wm/WindowState;

    .line 65
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mReplacingWindows:Ljava/util/ArrayDeque;

    .line 57
    iput-object p1, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 56
    return-void
.end method

.method private adjustSpecialWindows()V
    .registers 4

    .prologue
    .line 201
    iget v2, p0, Lcom/android/server/wm/WindowLayersController;->mHighestApplicationLayer:I

    add-int/lit8 v0, v2, 0x5

    .line 204
    .local v0, "layer":I
    :goto_4
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mDockedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_19

    .line 205
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mDockedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v2, v0}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v0

    goto :goto_4

    .line 208
    :cond_19
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mDockDivider:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v2, v0}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v0

    .line 210
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mDockDivider:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_44

    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mDockDivider:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 211
    :cond_2b
    :goto_2b
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_44

    .line 212
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 214
    .local v1, "w":Lcom/android/server/wm/WindowState;
    iget v2, v1, Lcom/android/server/wm/WindowState;->mLayer:I

    if-le v0, v2, :cond_2b

    .line 215
    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v0

    goto :goto_2b

    .line 223
    .end local v1    # "w":Lcom/android/server/wm/WindowState;
    :cond_44
    :goto_44
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mReplacingWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_59

    .line 224
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mReplacingWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v2, v0}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v0

    goto :goto_44

    .line 227
    :cond_59
    :goto_59
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mPinnedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6e

    .line 228
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mPinnedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v2, v0}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v0

    goto :goto_59

    .line 200
    :cond_6e
    return-void
.end method

.method private assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I
    .registers 3
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "layer"    # I

    .prologue
    .line 233
    if-eqz p1, :cond_7

    .line 234
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowLayersController;->assignAnimLayer(Lcom/android/server/wm/WindowState;I)V

    .line 236
    add-int/lit8 p2, p2, 0x5

    .line 238
    :cond_7
    return p2
.end method

.method private assignAnimLayer(Lcom/android/server/wm/WindowState;I)V
    .registers 6
    .param p1, "w"    # Lcom/android/server/wm/WindowState;
    .param p2, "layer"    # I

    .prologue
    .line 242
    iput p2, p1, Lcom/android/server/wm/WindowState;->mLayer:I

    .line 243
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, p1, Lcom/android/server/wm/WindowState;->mLayer:I

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAnimLayerAdjustment()I

    move-result v2

    add-int/2addr v1, v2

    .line 244
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowLayersController;->getSpecialWindowAnimLayerAdjustment(Lcom/android/server/wm/WindowState;)I

    move-result v2

    .line 243
    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 245
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_34

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget v0, v0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailForceAboveLayer:I

    if-lez v0, :cond_34

    .line 246
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget v1, v1, Lcom/android/server/wm/AppWindowAnimator;->thumbnailForceAboveLayer:I

    if-le v0, v1, :cond_34

    .line 247
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iput v1, v0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailForceAboveLayer:I

    .line 241
    :cond_34
    return-void
.end method

.method private clear()V
    .registers 2

    .prologue
    .line 169
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/WindowLayersController;->mHighestApplicationLayer:I

    .line 170
    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mPinnedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 171
    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 172
    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mDockedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 173
    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mReplacingWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mDockDivider:Lcom/android/server/wm/WindowState;

    .line 168
    return-void
.end method

.method private collectSpecialWindows(Lcom/android/server/wm/WindowState;)V
    .registers 5
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 178
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7f2

    if-ne v1, v2, :cond_b

    .line 179
    iput-object p1, p0, Lcom/android/server/wm/WindowLayersController;->mDockDivider:Lcom/android/server/wm/WindowState;

    .line 180
    return-void

    .line 182
    :cond_b
    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-eqz v1, :cond_14

    .line 183
    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mReplacingWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_14
    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v1, :cond_1e

    .line 186
    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 187
    return-void

    .line 189
    :cond_1e
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 190
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v0, :cond_25

    .line 191
    return-void

    .line 193
    :cond_25
    iget v1, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_30

    .line 194
    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mPinnedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_2f
    :goto_2f
    return-void

    .line 195
    :cond_30
    iget v1, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2f

    .line 196
    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mDockedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_2f
.end method

.method private logDebugLayers(Lcom/android/server/wm/WindowList;)V
    .registers 10
    .param p1, "windows"    # Lcom/android/server/wm/WindowList;

    .prologue
    .line 158
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    .local v1, "n":I
    :goto_5
    if-ge v0, v1, :cond_80

    .line 159
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 160
    .local v2, "w":Lcom/android/server/wm/WindowState;
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 161
    .local v3, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    const-string/jumbo v5, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Assign layer "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "mBase="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v2, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 162
    const-string/jumbo v6, " mLayer="

    .line 161
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 162
    iget v6, v2, Lcom/android/server/wm/WindowState;->mLayer:I

    .line 161
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 162
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v4, :cond_65

    .line 163
    const-string/jumbo v4, ""

    .line 161
    :goto_4a
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 164
    const-string/jumbo v6, " =mAnimLayer="

    .line 161
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 164
    iget v6, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 161
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 163
    :cond_65
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " mAppLayer="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v7, v7, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget v7, v7, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4a

    .line 157
    .end local v2    # "w":Lcom/android/server/wm/WindowState;
    .end local v3    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_80
    return-void
.end method


# virtual methods
.method final assignLayersLocked(Lcom/android/server/wm/WindowList;)V
    .registers 12
    .param p1, "windows"    # Lcom/android/server/wm/WindowList;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/server/wm/WindowLayersController;->clear()V

    .line 72
    const/4 v1, 0x0

    .line 73
    .local v1, "curBaseLayer":I
    const/4 v2, 0x0

    .line 74
    .local v2, "curLayer":I
    const/4 v0, 0x0

    .line 75
    .local v0, "anyLayerChanged":Z
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {p1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v7

    .local v7, "windowCount":I
    :goto_b
    if-ge v3, v7, :cond_54

    .line 76
    invoke-virtual {p1, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 77
    .local v6, "w":Lcom/android/server/wm/WindowState;
    const/4 v4, 0x0

    .line 79
    .local v4, "layerChanged":Z
    iget v5, v6, Lcom/android/server/wm/WindowState;->mLayer:I

    .line 80
    .local v5, "oldLayer":I
    iget v8, v6, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-eq v8, v1, :cond_24

    iget-boolean v8, v6, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v8, :cond_24

    if-lez v3, :cond_50

    iget-boolean v8, v6, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v8, :cond_50

    .line 81
    :cond_24
    add-int/lit8 v2, v2, 0x5

    .line 85
    :goto_26
    invoke-direct {p0, v6, v2}, Lcom/android/server/wm/WindowLayersController;->assignAnimLayer(Lcom/android/server/wm/WindowState;I)V

    .line 90
    iget v8, v6, Lcom/android/server/wm/WindowState;->mLayer:I

    if-ne v8, v5, :cond_33

    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v8, v8, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-eq v8, v5, :cond_35

    .line 91
    :cond_33
    const/4 v4, 0x1

    .line 92
    const/4 v0, 0x1

    .line 95
    :cond_35
    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v8, :cond_45

    .line 96
    iget v8, p0, Lcom/android/server/wm/WindowLayersController;->mHighestApplicationLayer:I

    .line 97
    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v9, v9, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 96
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, p0, Lcom/android/server/wm/WindowLayersController;->mHighestApplicationLayer:I

    .line 99
    :cond_45
    invoke-direct {p0, v6}, Lcom/android/server/wm/WindowLayersController;->collectSpecialWindows(Lcom/android/server/wm/WindowState;)V

    .line 101
    if-eqz v4, :cond_4d

    .line 102
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->scheduleAnimationIfDimming()V

    .line 75
    :cond_4d
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 83
    :cond_50
    iget v2, v6, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    move v1, v2

    goto :goto_26

    .line 106
    .end local v4    # "layerChanged":Z
    .end local v5    # "oldLayer":I
    .end local v6    # "w":Lcom/android/server/wm/WindowState;
    :cond_54
    invoke-direct {p0}, Lcom/android/server/wm/WindowLayersController;->adjustSpecialWindows()V

    .line 109
    iget-object v8, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v8, :cond_78

    if-eqz v0, :cond_78

    .line 110
    invoke-virtual {p1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p1, v8}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v8

    if-nez v8, :cond_78

    .line 111
    iget-object v8, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v8}, Lcom/android/server/wm/AccessibilityController;->onWindowLayersChangedLocked()V

    .line 67
    :cond_78
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 252
    iget v0, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodAnimLayerAdjustment:I

    if-nez v0, :cond_e

    .line 253
    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->getAnimLayerAdjustment()I

    move-result v0

    if-eqz v0, :cond_2a

    .line 254
    :cond_e
    const-string/jumbo v0, "  mInputMethodAnimLayerAdjustment="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 255
    iget v0, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodAnimLayerAdjustment:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 256
    const-string/jumbo v0, "  mWallpaperAnimLayerAdjustment="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->getAnimLayerAdjustment()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 251
    :cond_2a
    return-void
.end method

.method getResizeDimLayer()I
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mDockDivider:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mDockDivider:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/lit8 v0, v0, -0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method getSpecialWindowAnimLayerAdjustment(Lcom/android/server/wm/WindowState;)I
    .registers 3
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 141
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v0, :cond_7

    .line 142
    iget v0, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodAnimLayerAdjustment:I

    return v0

    .line 143
    :cond_7
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v0, :cond_14

    .line 144
    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->getAnimLayerAdjustment()I

    move-result v0

    return v0

    .line 146
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method setInputMethodAnimLayerAdjustment(I)V
    .registers 8
    .param p1, "adj"    # I

    .prologue
    .line 119
    iput p1, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodAnimLayerAdjustment:I

    .line 120
    iget-object v4, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v4, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 121
    .local v3, "imw":Lcom/android/server/wm/WindowState;
    if-eqz v3, :cond_2b

    .line 122
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v5, v3, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/2addr v5, p1

    iput v5, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 125
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_17
    if-ltz v2, :cond_2b

    .line 126
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 127
    .local v0, "childWindow":Lcom/android/server/wm/WindowState;
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v5, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/2addr v5, p1

    iput v5, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 125
    add-int/lit8 v2, v2, -0x1

    goto :goto_17

    .line 132
    .end local v0    # "childWindow":Lcom/android/server/wm/WindowState;
    .end local v2    # "i":I
    :cond_2b
    iget-object v4, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .restart local v2    # "i":I
    :goto_35
    if-ltz v2, :cond_4b

    .line 133
    iget-object v4, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 134
    .local v1, "dialog":Lcom/android/server/wm/WindowState;
    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v5, v1, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/2addr v5, p1

    iput v5, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 132
    add-int/lit8 v2, v2, -0x1

    goto :goto_35

    .line 117
    .end local v1    # "dialog":Lcom/android/server/wm/WindowState;
    :cond_4b
    return-void
.end method
