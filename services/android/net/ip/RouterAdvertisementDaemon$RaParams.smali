.class public Landroid/net/ip/RouterAdvertisementDaemon$RaParams;
.super Ljava/lang/Object;
.source "RouterAdvertisementDaemon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/RouterAdvertisementDaemon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RaParams"
.end annotation


# instance fields
.field public dnses:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/net/Inet6Address;",
            ">;"
        }
    .end annotation
.end field

.field public hasDefaultRoute:Z

.field public mtu:I

.field public prefixes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/net/IpPrefix;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->hasDefaultRoute:Z

    .line 128
    const/16 v0, 0x500

    iput v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->mtu:I

    .line 129
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    .line 130
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)V
    .registers 3
    .param p1, "other"    # Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iget-boolean v0, p1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->hasDefaultRoute:Z

    iput-boolean v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->hasDefaultRoute:Z

    .line 135
    iget v0, p1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->mtu:I

    iput v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->mtu:I

    .line 136
    iget-object v0, p1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    .line 137
    iget-object v0, p1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    .line 133
    return-void
.end method

.method public static getDeprecatedRaParams(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)Landroid/net/ip/RouterAdvertisementDaemon$RaParams;
    .registers 8
    .param p0, "oldRa"    # Landroid/net/ip/RouterAdvertisementDaemon$RaParams;
    .param p1, "newRa"    # Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    .prologue
    .line 145
    new-instance v4, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    invoke-direct {v4}, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;-><init>()V

    .line 147
    .local v4, "newlyDeprecated":Landroid/net/ip/RouterAdvertisementDaemon$RaParams;
    if-eqz p0, :cond_4b

    .line 148
    iget-object v5, p0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "ipp$iterator":Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/IpPrefix;

    .line 149
    .local v2, "ipp":Landroid/net/IpPrefix;
    if-eqz p1, :cond_23

    iget-object v5, p1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    invoke-virtual {v5, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 150
    :cond_23
    iget-object v5, v4, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    invoke-virtual {v5, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 154
    .end local v2    # "ipp":Landroid/net/IpPrefix;
    :cond_29
    iget-object v5, p0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "dns$iterator":Ljava/util/Iterator;
    :cond_2f
    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Inet6Address;

    .line 155
    .local v0, "dns":Ljava/net/Inet6Address;
    if-eqz p1, :cond_45

    iget-object v5, p1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2f

    .line 156
    :cond_45
    iget-object v5, v4, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 161
    .end local v0    # "dns":Ljava/net/Inet6Address;
    .end local v1    # "dns$iterator":Ljava/util/Iterator;
    .end local v3    # "ipp$iterator":Ljava/util/Iterator;
    :cond_4b
    return-object v4
.end method
