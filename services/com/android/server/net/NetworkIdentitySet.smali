.class public Lcom/android/server/net/NetworkIdentitySet;
.super Ljava/util/HashSet;
.source "NetworkIdentitySet.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet",
        "<",
        "Landroid/net/NetworkIdentity;",
        ">;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/server/net/NetworkIdentitySet;",
        ">;"
    }
.end annotation


# static fields
.field private static final VERSION_ADD_METERED:I = 0x4

.field private static final VERSION_ADD_NETWORK_ID:I = 0x3

.field private static final VERSION_ADD_ROAMING:I = 0x2

.field private static final VERSION_INIT:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;)V
    .registers 13
    .param p1, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 45
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    .line 46
    .local v10, "version":I
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    .line 47
    .local v9, "size":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_c
    if-ge v7, v9, :cond_4b

    .line 48
    const/4 v0, 0x1

    if-gt v10, v0, :cond_15

    .line 49
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 51
    :cond_15
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 52
    .local v1, "type":I
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 53
    .local v2, "subType":I
    invoke-static {p1}, Lcom/android/server/net/NetworkIdentitySet;->readOptionalString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, "subscriberId":Ljava/lang/String;
    const/4 v0, 0x3

    if-lt v10, v0, :cond_41

    .line 56
    invoke-static {p1}, Lcom/android/server/net/NetworkIdentitySet;->readOptionalString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v4

    .line 61
    :goto_28
    const/4 v0, 0x2

    if-lt v10, v0, :cond_43

    .line 62
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v5

    .line 68
    :goto_2f
    const/4 v0, 0x4

    if-lt v10, v0, :cond_45

    .line 69
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v6

    .line 77
    :goto_36
    new-instance v0, Landroid/net/NetworkIdentity;

    invoke-direct/range {v0 .. v6}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    .line 47
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    .line 58
    :cond_41
    const/4 v4, 0x0

    .local v4, "networkId":Ljava/lang/String;
    goto :goto_28

    .line 64
    .end local v4    # "networkId":Ljava/lang/String;
    :cond_43
    const/4 v5, 0x0

    .local v5, "roaming":Z
    goto :goto_2f

    .line 74
    .end local v5    # "roaming":Z
    :cond_45
    if-nez v1, :cond_49

    const/4 v6, 0x1

    .local v6, "metered":Z
    goto :goto_36

    .end local v6    # "metered":Z
    :cond_49
    const/4 v6, 0x0

    .restart local v6    # "metered":Z
    goto :goto_36

    .line 44
    .end local v1    # "type":I
    .end local v2    # "subType":I
    .end local v3    # "subscriberId":Ljava/lang/String;
    .end local v6    # "metered":Z
    :cond_4b
    return-void
.end method

.method private static readOptionalString(Ljava/io/DataInputStream;)Ljava/lang/String;
    .registers 2
    .param p0, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    if-eqz v0, :cond_b

    .line 118
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 120
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method private static writeOptionalString(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .registers 3
    .param p0, "out"    # Ljava/io/DataOutputStream;
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    if-eqz p1, :cond_a

    .line 109
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 110
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 107
    :goto_9
    return-void

    .line 112
    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_9
.end method


# virtual methods
.method public compareTo(Lcom/android/server/net/NetworkIdentitySet;)I
    .registers 5
    .param p1, "another"    # Lcom/android/server/net/NetworkIdentitySet;

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/android/server/net/NetworkIdentitySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, -0x1

    return v2

    .line 127
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/net/NetworkIdentitySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    return v2

    .line 129
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/net/NetworkIdentitySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkIdentity;

    .line 130
    .local v1, "ident":Landroid/net/NetworkIdentity;
    invoke-virtual {p1}, Lcom/android/server/net/NetworkIdentitySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkIdentity;

    .line 131
    .local v0, "anotherIdent":Landroid/net/NetworkIdentity;
    invoke-virtual {v1, v0}, Landroid/net/NetworkIdentity;->compareTo(Landroid/net/NetworkIdentity;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "another"    # Ljava/lang/Object;

    .prologue
    .line 125
    check-cast p1, Lcom/android/server/net/NetworkIdentitySet;

    .end local p1    # "another":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkIdentitySet;->compareTo(Lcom/android/server/net/NetworkIdentitySet;)I

    move-result v0

    return v0
.end method

.method public isAnyMemberRoaming()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 96
    invoke-virtual {p0}, Lcom/android/server/net/NetworkIdentitySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 97
    return v3

    .line 99
    :cond_8
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ident$iterator":Ljava/util/Iterator;
    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkIdentity;

    .line 100
    .local v0, "ident":Landroid/net/NetworkIdentity;
    invoke-virtual {v0}, Landroid/net/NetworkIdentity;->getRoaming()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 101
    const/4 v2, 0x1

    return v2

    .line 104
    .end local v0    # "ident":Landroid/net/NetworkIdentity;
    :cond_20
    return v3
.end method

.method public writeToStream(Ljava/io/DataOutputStream;)V
    .registers 5
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 83
    invoke-virtual {p0}, Lcom/android/server/net/NetworkIdentitySet;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 84
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ident$iterator":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkIdentity;

    .line 85
    .local v0, "ident":Landroid/net/NetworkIdentity;
    invoke-virtual {v0}, Landroid/net/NetworkIdentity;->getType()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 86
    invoke-virtual {v0}, Landroid/net/NetworkIdentity;->getSubType()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 87
    invoke-virtual {v0}, Landroid/net/NetworkIdentity;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/server/net/NetworkIdentitySet;->writeOptionalString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0}, Landroid/net/NetworkIdentity;->getNetworkId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/server/net/NetworkIdentitySet;->writeOptionalString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0}, Landroid/net/NetworkIdentity;->getRoaming()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 90
    invoke-virtual {v0}, Landroid/net/NetworkIdentity;->getMetered()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    goto :goto_f

    .line 81
    .end local v0    # "ident":Landroid/net/NetworkIdentity;
    :cond_46
    return-void
.end method
