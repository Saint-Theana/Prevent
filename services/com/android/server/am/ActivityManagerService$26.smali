.class Lcom/android/server/am/ActivityManagerService$26;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->reportMemUsage(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/am/ProcessMemInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 16889
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$26;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/am/ProcessMemInfo;Lcom/android/server/am/ProcessMemInfo;)I
    .registers 9
    .param p1, "lhs"    # Lcom/android/server/am/ProcessMemInfo;
    .param p2, "rhs"    # Lcom/android/server/am/ProcessMemInfo;

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 16891
    iget v2, p1, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    iget v3, p2, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-eq v2, v3, :cond_11

    .line 16892
    iget v2, p1, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    iget v3, p2, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-ge v2, v3, :cond_f

    :goto_e
    return v0

    :cond_f
    move v0, v1

    goto :goto_e

    .line 16894
    :cond_11
    iget-wide v2, p1, Lcom/android/server/am/ProcessMemInfo;->pss:J

    iget-wide v4, p2, Lcom/android/server/am/ProcessMemInfo;->pss:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_24

    .line 16895
    iget-wide v2, p1, Lcom/android/server/am/ProcessMemInfo;->pss:J

    iget-wide v4, p2, Lcom/android/server/am/ProcessMemInfo;->pss:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_22

    :goto_21
    return v1

    :cond_22
    move v1, v0

    goto :goto_21

    .line 16897
    :cond_24
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .prologue
    .line 16890
    check-cast p1, Lcom/android/server/am/ProcessMemInfo;

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Lcom/android/server/am/ProcessMemInfo;

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService$26;->compare(Lcom/android/server/am/ProcessMemInfo;Lcom/android/server/am/ProcessMemInfo;)I

    move-result v0

    return v0
.end method
