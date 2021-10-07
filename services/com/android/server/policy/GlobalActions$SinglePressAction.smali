.class abstract Lcom/android/server/policy/GlobalActions$SinglePressAction;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Lcom/android/server/policy/GlobalActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SinglePressAction"
.end annotation


# instance fields
.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mIconResId:I

.field private final mMessage:Ljava/lang/CharSequence;

.field private final mMessageResId:I

.field private mStatusMessage:Ljava/lang/CharSequence;


# direct methods
.method protected constructor <init>(II)V
    .registers 4
    .param p1, "iconResId"    # I
    .param p2, "messageResId"    # I

    .prologue
    const/4 v0, 0x0

    .line 1318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1319
    iput p1, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mIconResId:I

    .line 1320
    iput p2, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessageResId:I

    .line 1321
    iput-object v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 1322
    iput-object v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1318
    return-void
.end method

.method protected constructor <init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "iconResId"    # I
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 1325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1326
    iput p1, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mIconResId:I

    .line 1327
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessageResId:I

    .line 1328
    iput-object p3, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 1329
    iput-object p2, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1325
    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/4 v6, 0x0

    .line 1356
    const v5, 0x1090066

    invoke-virtual {p4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 1358
    .local v4, "v":Landroid/view/View;
    const v5, 0x1020006

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1359
    .local v0, "icon":Landroid/widget/ImageView;
    const v5, 0x102000b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1361
    .local v1, "messageView":Landroid/widget/TextView;
    const v5, 0x102036c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1362
    .local v3, "statusView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions$SinglePressAction;->getStatus()Ljava/lang/CharSequence;

    move-result-object v2

    .line 1363
    .local v2, "status":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_48

    .line 1364
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1368
    :goto_30
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_4e

    .line 1369
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1370
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1374
    :cond_3e
    :goto_3e
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    if-eqz v5, :cond_5c

    .line 1375
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1380
    :goto_47
    return-object v4

    .line 1366
    :cond_48
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_30

    .line 1371
    :cond_4e
    iget v5, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mIconResId:I

    if-eqz v5, :cond_3e

    .line 1372
    iget v5, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mIconResId:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3e

    .line 1377
    :cond_5c
    iget v5, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessageResId:I

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_47
.end method

.method public getLabelForAccessibility(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1347
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    .line 1348
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    return-object v0

    .line 1350
    :cond_7
    iget v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessageResId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 1337
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mStatusMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 1333
    const/4 v0, 0x1

    return v0
.end method

.method public abstract onPress()V
.end method

.method public setStatus(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "status"    # Ljava/lang/CharSequence;

    .prologue
    .line 1341
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mStatusMessage:Ljava/lang/CharSequence;

    .line 1340
    return-void
.end method
