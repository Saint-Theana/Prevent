.class Lcom/android/server/net/NetworkStatsCollection$Key;
.super Ljava/lang/Object;
.source "NetworkStatsCollection.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/server/net/NetworkStatsCollection$Key;",
        ">;"
    }
.end annotation


# instance fields
.field private final hashCode:I

.field public final ident:Lcom/android/server/net/NetworkIdentitySet;

.field public final set:I

.field public final tag:I

.field public final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/net/NetworkIdentitySet;III)V
    .registers 8
    .param p1, "ident"    # Lcom/android/server/net/NetworkIdentitySet;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I

    .prologue
    .line 620
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 621
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    .line 622
    iput p2, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    .line 623
    iput p3, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    .line 624
    iput p4, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    .line 625
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->hashCode:I

    .line 620
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/server/net/NetworkStatsCollection$Key;)I
    .registers 5
    .param p1, "another"    # Lcom/android/server/net/NetworkStatsCollection$Key;

    .prologue
    .line 645
    const/4 v0, 0x0

    .line 646
    .local v0, "res":I
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    if-eqz v1, :cond_11

    iget-object v1, p1, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    if-eqz v1, :cond_11

    .line 647
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    iget-object v2, p1, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v1, v2}, Lcom/android/server/net/NetworkIdentitySet;->compareTo(Lcom/android/server/net/NetworkIdentitySet;)I

    move-result v0

    .line 649
    :cond_11
    if-nez v0, :cond_1b

    .line 650
    iget v1, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    iget v2, p1, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 652
    :cond_1b
    if-nez v0, :cond_25

    .line 653
    iget v1, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    iget v2, p1, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 655
    :cond_25
    if-nez v0, :cond_2f

    .line 656
    iget v1, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    iget v2, p1, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 658
    :cond_2f
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "another"    # Ljava/lang/Object;

    .prologue
    .line 644
    check-cast p1, Lcom/android/server/net/NetworkStatsCollection$Key;

    .end local p1    # "another":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkStatsCollection$Key;->compareTo(Lcom/android/server/net/NetworkStatsCollection$Key;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 635
    instance-of v2, p1, Lcom/android/server/net/NetworkStatsCollection$Key;

    if-eqz v2, :cond_23

    move-object v0, p1

    .line 636
    check-cast v0, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 637
    .local v0, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget v2, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    iget v3, v0, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    if-ne v2, v3, :cond_22

    iget v2, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    iget v3, v0, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    if-ne v2, v3, :cond_22

    iget v2, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    iget v3, v0, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    if-ne v2, v3, :cond_22

    .line 638
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 637
    :cond_22
    return v1

    .line 640
    .end local v0    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    :cond_23
    return v1
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 630
    iget v0, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->hashCode:I

    return v0
.end method
