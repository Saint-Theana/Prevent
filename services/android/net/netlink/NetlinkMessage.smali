.class public Landroid/net/netlink/NetlinkMessage;
.super Ljava/lang/Object;
.source "NetlinkMessage.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetlinkMessage"


# instance fields
.field protected mHeader:Landroid/net/netlink/StructNlMsgHdr;


# direct methods
.method public constructor <init>(Landroid/net/netlink/StructNlMsgHdr;)V
    .registers 2
    .param p1, "nlmsghdr"    # Landroid/net/netlink/StructNlMsgHdr;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Landroid/net/netlink/NetlinkMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    .line 85
    return-void
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/NetlinkMessage;
    .registers 7
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v5, 0x0

    .line 46
    if-eqz p0, :cond_e

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 47
    .local v2, "startPosition":I
    :goto_7
    invoke-static {p0}, Landroid/net/netlink/StructNlMsgHdr;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNlMsgHdr;

    move-result-object v0

    .line 48
    .local v0, "nlmsghdr":Landroid/net/netlink/StructNlMsgHdr;
    if-nez v0, :cond_10

    .line 49
    return-object v5

    .line 46
    .end local v0    # "nlmsghdr":Landroid/net/netlink/StructNlMsgHdr;
    .end local v2    # "startPosition":I
    :cond_e
    const/4 v2, -0x1

    .restart local v2    # "startPosition":I
    goto :goto_7

    .line 52
    .restart local v0    # "nlmsghdr":Landroid/net/netlink/StructNlMsgHdr;
    :cond_10
    iget v3, v0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_len:I

    invoke-static {v3}, Landroid/net/netlink/NetlinkConstants;->alignedLengthOf(I)I

    move-result v1

    .line 53
    .local v1, "payloadLength":I
    add-int/lit8 v1, v1, -0x10

    .line 54
    if-ltz v1, :cond_20

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-le v1, v3, :cond_28

    .line 56
    :cond_20
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 57
    return-object v5

    .line 60
    :cond_28
    iget-short v3, v0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    sparse-switch v3, :sswitch_data_5a

    .line 73
    iget-short v3, v0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    const/16 v4, 0xf

    if-gt v3, v4, :cond_59

    .line 76
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 77
    new-instance v3, Landroid/net/netlink/NetlinkMessage;

    invoke-direct {v3, v0}, Landroid/net/netlink/NetlinkMessage;-><init>(Landroid/net/netlink/StructNlMsgHdr;)V

    return-object v3

    .line 63
    :sswitch_41
    invoke-static {v0, p0}, Landroid/net/netlink/NetlinkErrorMessage;->parse(Landroid/net/netlink/StructNlMsgHdr;Ljava/nio/ByteBuffer;)Landroid/net/netlink/NetlinkErrorMessage;

    move-result-object v3

    return-object v3

    .line 65
    :sswitch_46
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 66
    new-instance v3, Landroid/net/netlink/NetlinkMessage;

    invoke-direct {v3, v0}, Landroid/net/netlink/NetlinkMessage;-><init>(Landroid/net/netlink/StructNlMsgHdr;)V

    return-object v3

    .line 71
    :sswitch_54
    invoke-static {v0, p0}, Landroid/net/netlink/RtNetlinkNeighborMessage;->parse(Landroid/net/netlink/StructNlMsgHdr;Ljava/nio/ByteBuffer;)Landroid/net/netlink/RtNetlinkNeighborMessage;

    move-result-object v3

    return-object v3

    .line 79
    :cond_59
    return-object v5

    .line 60
    :sswitch_data_5a
    .sparse-switch
        0x2 -> :sswitch_41
        0x3 -> :sswitch_46
        0x1c -> :sswitch_54
        0x1d -> :sswitch_54
        0x1e -> :sswitch_54
    .end sparse-switch
.end method


# virtual methods
.method public getHeader()Landroid/net/netlink/StructNlMsgHdr;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Landroid/net/netlink/NetlinkMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NetlinkMessage{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Landroid/net/netlink/NetlinkMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    if-nez v0, :cond_23

    const-string/jumbo v0, ""

    :goto_13
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_23
    iget-object v0, p0, Landroid/net/netlink/NetlinkMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    invoke-virtual {v0}, Landroid/net/netlink/StructNlMsgHdr;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_13
.end method
