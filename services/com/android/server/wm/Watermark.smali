.class Lcom/android/server/wm/Watermark;
.super Ljava/lang/Object;
.source "Watermark.java"


# instance fields
.field private final mDeltaX:I

.field private final mDeltaY:I

.field private final mDisplay:Landroid/view/Display;

.field private mDrawNeeded:Z

.field private mLastDH:I

.field private mLastDW:I

.field private final mSurface:Landroid/view/Surface;

.field private final mSurfaceControl:Landroid/view/SurfaceControl;

.field private final mText:Ljava/lang/String;

.field private final mTextHeight:I

.field private final mTextPaint:Landroid/graphics/Paint;

.field private final mTextWidth:I

.field private final mTokens:[Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/view/Display;Landroid/util/DisplayMetrics;Landroid/view/SurfaceSession;[Ljava/lang/String;)V
    .registers 28
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "dm"    # Landroid/util/DisplayMetrics;
    .param p3, "session"    # Landroid/view/SurfaceSession;
    .param p4, "tokens"    # [Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v3, Landroid/view/Surface;

    invoke-direct {v3}, Landroid/view/Surface;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    .line 64
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/Watermark;->mDisplay:Landroid/view/Display;

    .line 65
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/Watermark;->mTokens:[Ljava/lang/String;

    .line 67
    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 68
    .local v9, "builder":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/Watermark;->mTokens:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v18

    .line 69
    .local v18, "len":I
    and-int/lit8 v18, v18, -0x2

    .line 70
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_2e
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_92

    .line 71
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/Watermark;->mTokens:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 72
    .local v10, "c1":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/Watermark;->mTokens:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    add-int/lit8 v4, v17, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 73
    .local v11, "c2":I
    const/16 v3, 0x61

    if-lt v10, v3, :cond_72

    const/16 v3, 0x66

    if-gt v10, v3, :cond_72

    add-int/lit8 v3, v10, -0x61

    add-int/lit8 v10, v3, 0xa

    .line 76
    :goto_5a
    const/16 v3, 0x61

    if-lt v11, v3, :cond_82

    const/16 v3, 0x66

    if-gt v11, v3, :cond_82

    add-int/lit8 v3, v11, -0x61

    add-int/lit8 v11, v3, 0xa

    .line 79
    :goto_66
    mul-int/lit8 v3, v10, 0x10

    add-int/2addr v3, v11

    rsub-int v3, v3, 0xff

    int-to-char v3, v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    add-int/lit8 v17, v17, 0x2

    goto :goto_2e

    .line 74
    :cond_72
    const/16 v3, 0x41

    if-lt v10, v3, :cond_7f

    const/16 v3, 0x46

    if-gt v10, v3, :cond_7f

    add-int/lit8 v3, v10, -0x41

    add-int/lit8 v10, v3, 0xa

    goto :goto_5a

    .line 75
    :cond_7f
    add-int/lit8 v10, v10, -0x30

    goto :goto_5a

    .line 77
    :cond_82
    const/16 v3, 0x41

    if-lt v11, v3, :cond_8f

    const/16 v3, 0x46

    if-gt v11, v3, :cond_8f

    add-int/lit8 v3, v11, -0x41

    add-int/lit8 v11, v3, 0xa

    goto :goto_66

    .line 78
    :cond_8f
    add-int/lit8 v11, v11, -0x30

    goto :goto_66

    .line 81
    .end local v10    # "c1":I
    .end local v11    # "c2":I
    :cond_92
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/wm/Watermark;->mText:Ljava/lang/String;

    .line 86
    const/4 v3, 0x1

    .line 87
    const/4 v4, 0x1

    const/16 v5, 0x14

    .line 86
    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v0, v3, v4, v5, v1}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v16

    .line 89
    .local v16, "fontSize":I
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    .line 90
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    move/from16 v0, v16

    int-to-float v4, v0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 91
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 93
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v15

    .line 94
    .local v15, "fm":Landroid/graphics/Paint$FontMetricsInt;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/Watermark;->mText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    .line 95
    iget v3, v15, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v4, v15, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wm/Watermark;->mTextHeight:I

    .line 98
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    mul-int/lit8 v3, v3, 0x2

    .line 97
    const/4 v4, 0x2

    .line 98
    const/4 v5, 0x0

    .line 97
    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v0, v4, v5, v3, v1}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wm/Watermark;->mDeltaX:I

    .line 100
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/Watermark;->mTextHeight:I

    mul-int/lit8 v3, v3, 0x3

    .line 99
    const/4 v4, 0x3

    .line 100
    const/4 v5, 0x0

    .line 99
    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v0, v4, v5, v3, v1}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wm/Watermark;->mDeltaY:I

    .line 101
    const/4 v3, 0x4

    .line 102
    const/4 v4, 0x0

    const/high16 v5, -0x50000000

    .line 101
    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v0, v3, v4, v5, v1}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v19

    .line 103
    .local v19, "shadowColor":I
    const/4 v3, 0x5

    .line 104
    const/4 v4, 0x0

    const v5, 0x60ffffff

    .line 103
    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v0, v3, v4, v5, v1}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v12

    .line 105
    .local v12, "color":I
    const/4 v3, 0x6

    .line 106
    const/4 v4, 0x0

    const/4 v5, 0x7

    .line 105
    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v0, v3, v4, v5, v1}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v22

    .line 107
    .local v22, "shadowRadius":I
    const/16 v3, 0x8

    .line 108
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 107
    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v0, v3, v4, v5, v1}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v20

    .line 109
    .local v20, "shadowDx":I
    const/16 v3, 0x9

    .line 110
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 109
    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v0, v3, v4, v5, v1}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v21

    .line 112
    .local v21, "shadowDy":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    move/from16 v0, v22

    int-to-float v4, v0

    move/from16 v0, v20

    int-to-float v5, v0

    move/from16 v0, v21

    int-to-float v6, v0

    move/from16 v0, v19

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 115
    const/4 v13, 0x0

    .line 117
    .local v13, "ctrl":Landroid/view/SurfaceControl;
    :try_start_168
    new-instance v2, Landroid/view/SurfaceControl;

    const-string/jumbo v4, "WatermarkSurface"

    .line 118
    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, -0x3

    const/4 v8, 0x4

    move-object/from16 v3, p3

    .line 117
    invoke-direct/range {v2 .. v8}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V
    :try_end_176
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_168 .. :try_end_176} :catch_19b

    .line 119
    .local v2, "ctrl":Landroid/view/SurfaceControl;
    :try_start_176
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/Watermark;->mDisplay:Landroid/view/Display;

    .end local v13    # "ctrl":Landroid/view/SurfaceControl;
    invoke-virtual {v3}, Landroid/view/Display;->getLayerStack()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 120
    const v3, 0xf4240

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 121
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 122
    invoke-virtual {v2}, Landroid/view/SurfaceControl;->show()V

    .line 123
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3, v2}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V
    :try_end_196
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_176 .. :try_end_196} :catch_19e

    .line 126
    :goto_196
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/Watermark;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 56
    return-void

    .line 124
    .end local v2    # "ctrl":Landroid/view/SurfaceControl;
    .restart local v13    # "ctrl":Landroid/view/SurfaceControl;
    :catch_19b
    move-exception v14

    .local v14, "e":Landroid/view/Surface$OutOfResourcesException;
    move-object v2, v13

    .restart local v2    # "ctrl":Landroid/view/SurfaceControl;
    goto :goto_196

    .end local v13    # "ctrl":Landroid/view/SurfaceControl;
    .end local v14    # "e":Landroid/view/Surface$OutOfResourcesException;
    :catch_19e
    move-exception v14

    .restart local v14    # "e":Landroid/view/Surface$OutOfResourcesException;
    goto :goto_196
.end method


# virtual methods
.method drawIfNeeded()V
    .registers 22

    .prologue
    .line 139
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/Watermark;->mDrawNeeded:Z

    move/from16 v17, v0

    if-eqz v17, :cond_c7

    .line 140
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/Watermark;->mLastDW:I

    .line 141
    .local v10, "dw":I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/Watermark;->mLastDH:I

    .line 143
    .local v7, "dh":I
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/Watermark;->mDrawNeeded:Z

    .line 144
    new-instance v8, Landroid/graphics/Rect;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v8, v0, v1, v10, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 145
    .local v8, "dirty":Landroid/graphics/Rect;
    const/4 v4, 0x0

    .line 147
    .local v4, "c":Landroid/graphics/Canvas;
    :try_start_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_31
    .catch Ljava/lang/IllegalArgumentException; {:try_start_26 .. :try_end_31} :catch_c8
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_26 .. :try_end_31} :catch_cb

    move-result-object v4

    .line 151
    .end local v4    # "c":Landroid/graphics/Canvas;
    :goto_32
    if-eqz v4, :cond_c7

    .line 152
    sget-object v17, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 154
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/Watermark;->mDeltaX:I

    .line 155
    .local v5, "deltaX":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/Watermark;->mDeltaY:I

    .line 159
    .local v6, "deltaY":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    move/from16 v17, v0

    add-int v17, v17, v10

    div-int v9, v17, v5

    .line 160
    .local v9, "div":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    move/from16 v17, v0

    add-int v17, v17, v10

    mul-int v18, v9, v5

    sub-int v14, v17, v18

    .line 161
    .local v14, "rem":I
    div-int/lit8 v13, v5, 0x4

    .line 162
    .local v13, "qdelta":I
    if-lt v14, v13, :cond_67

    sub-int v17, v5, v13

    move/from16 v0, v17

    if-le v14, v0, :cond_6b

    .line 163
    :cond_67
    div-int/lit8 v17, v5, 0x3

    add-int v5, v5, v17

    .line 166
    :cond_6b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/Watermark;->mTextHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v16, v0

    .line 167
    .local v16, "y":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    neg-int v15, v0

    .line 168
    .local v15, "x":I
    :cond_7f
    :goto_7f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/Watermark;->mTextHeight:I

    move/from16 v17, v0

    add-int v17, v17, v7

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_bc

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/Watermark;->mText:Ljava/lang/String;

    move-object/from16 v17, v0

    int-to-float v0, v15

    move/from16 v18, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 170
    add-int/2addr v15, v5

    .line 171
    if-lt v15, v10, :cond_7f

    .line 172
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    move/from16 v17, v0

    add-int v17, v17, v10

    sub-int v15, v15, v17

    .line 173
    add-int v16, v16, v6

    goto :goto_7f

    .line 176
    :cond_bc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 138
    .end local v5    # "deltaX":I
    .end local v6    # "deltaY":I
    .end local v7    # "dh":I
    .end local v8    # "dirty":Landroid/graphics/Rect;
    .end local v9    # "div":I
    .end local v10    # "dw":I
    .end local v13    # "qdelta":I
    .end local v14    # "rem":I
    .end local v15    # "x":I
    .end local v16    # "y":I
    :cond_c7
    return-void

    .line 148
    .restart local v4    # "c":Landroid/graphics/Canvas;
    .restart local v7    # "dh":I
    .restart local v8    # "dirty":Landroid/graphics/Rect;
    .restart local v10    # "dw":I
    :catch_c8
    move-exception v12

    .local v12, "e":Ljava/lang/IllegalArgumentException;
    goto/16 :goto_32

    .line 149
    .end local v12    # "e":Ljava/lang/IllegalArgumentException;
    :catch_cb
    move-exception v11

    .local v11, "e":Landroid/view/Surface$OutOfResourcesException;
    goto/16 :goto_32
.end method

.method positionSurface(II)V
    .registers 4
    .param p1, "dw"    # I
    .param p2, "dh"    # I

    .prologue
    .line 130
    iget v0, p0, Lcom/android/server/wm/Watermark;->mLastDW:I

    if-ne v0, p1, :cond_8

    iget v0, p0, Lcom/android/server/wm/Watermark;->mLastDH:I

    if-eq v0, p2, :cond_14

    .line 131
    :cond_8
    iput p1, p0, Lcom/android/server/wm/Watermark;->mLastDW:I

    .line 132
    iput p2, p0, Lcom/android/server/wm/Watermark;->mLastDH:I

    .line 133
    iget-object v0, p0, Lcom/android/server/wm/Watermark;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl;->setSize(II)V

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Watermark;->mDrawNeeded:Z

    .line 129
    :cond_14
    return-void
.end method
