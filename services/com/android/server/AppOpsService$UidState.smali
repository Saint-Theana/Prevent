.class final Lcom/android/server/AppOpsService$UidState;
.super Ljava/lang/Object;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UidState"
.end annotation


# instance fields
.field public opModes:Landroid/util/SparseIntArray;

.field public pkgOps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/AppOpsService$Ops;",
            ">;"
        }
    .end annotation
.end field

.field public final uid:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput p1, p0, Lcom/android/server/AppOpsService$UidState;->uid:I

    .line 149
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 154
    iput-object v0, p0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 155
    iput-object v0, p0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 153
    return-void
.end method

.method public isDefault()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 159
    iget-object v2, p0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 160
    :cond_e
    iget-object v2, p0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-gtz v2, :cond_1b

    :cond_1a
    move v0, v1

    .line 159
    :cond_1b
    return v0
.end method
