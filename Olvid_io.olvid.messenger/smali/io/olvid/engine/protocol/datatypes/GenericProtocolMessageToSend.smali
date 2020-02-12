.class public Lio/olvid/engine/protocol/datatypes/GenericProtocolMessageToSend;
.super Ljava/lang/Object;
.source "GenericProtocolMessageToSend.java"


# instance fields
.field private final encodedElements:Lio/olvid/engine/encoder/Encoded;

.field private final partOfFullRatchetProtocolOfTheSendSeed:Z

.field private final sendChannelInfo:Lio/olvid/engine/datatypes/containers/SendChannelInfo;


# direct methods
.method public constructor <init>(Lio/olvid/engine/datatypes/containers/SendChannelInfo;ILio/olvid/engine/datatypes/UID;I[Lio/olvid/engine/encoder/Encoded;Z)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lio/olvid/engine/protocol/datatypes/GenericProtocolMessageToSend;->sendChannelInfo:Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    .line 18
    invoke-static {p2, p3, p4, p5}, Lio/olvid/engine/protocol/datatypes/GenericProtocolMessageToSend;->encode(ILio/olvid/engine/datatypes/UID;I[Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/protocol/datatypes/GenericProtocolMessageToSend;->encodedElements:Lio/olvid/engine/encoder/Encoded;

    .line 19
    iput-boolean p6, p0, Lio/olvid/engine/protocol/datatypes/GenericProtocolMessageToSend;->partOfFullRatchetProtocolOfTheSendSeed:Z

    return-void
.end method

.method private static encode(ILio/olvid/engine/datatypes/UID;I[Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lio/olvid/engine/encoder/Encoded;

    int-to-long v1, p0

    .line 24
    invoke-static {v1, v2}, Lio/olvid/engine/encoder/Encoded;->of(J)Lio/olvid/engine/encoder/Encoded;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 25
    invoke-static {p1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/encoder/Encoded;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    int-to-long p0, p2

    .line 26
    invoke-static {p0, p1}, Lio/olvid/engine/encoder/Encoded;->of(J)Lio/olvid/engine/encoder/Encoded;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v0, p1

    .line 27
    invoke-static {p3}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object p0

    const/4 p1, 0x3

    aput-object p0, v0, p1

    .line 23
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public generateChannelDialogMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelDialogMessageToSend;
    .locals 5

    .line 46
    iget-object v0, p0, Lio/olvid/engine/protocol/datatypes/GenericProtocolMessageToSend;->sendChannelInfo:Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->getChannelType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 48
    :cond_0
    new-instance v0, Lio/olvid/engine/datatypes/containers/ChannelDialogMessageToSend;

    iget-object v1, p0, Lio/olvid/engine/protocol/datatypes/GenericProtocolMessageToSend;->sendChannelInfo:Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->getDialogUuid()Ljava/util/UUID;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/engine/protocol/datatypes/GenericProtocolMessageToSend;->sendChannelInfo:Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->getToIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/engine/protocol/datatypes/GenericProtocolMessageToSend;->sendChannelInfo:Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    invoke-virtual {v3}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->getDialogType()Lio/olvid/engine/datatypes/containers/DialogType;

    move-result-object v3

    iget-object v4, p0, Lio/olvid/engine/protocol/datatypes/GenericProtocolMessageToSend;->encodedElements:Lio/olvid/engine/encoder/Encoded;

    invoke-direct {v0, v1, v2, v3, v4}, Lio/olvid/engine/datatypes/containers/ChannelDialogMessageToSend;-><init>(Ljava/util/UUID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/DialogType;Lio/olvid/engine/encoder/Encoded;)V

    return-object v0
.end method

.method public generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;
    .locals 4

    .line 32
    iget-object v0, p0, Lio/olvid/engine/protocol/datatypes/GenericProtocolMessageToSend;->sendChannelInfo:Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->getChannelType()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 39
    :cond_0
    new-instance v0, Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    iget-object v1, p0, Lio/olvid/engine/protocol/datatypes/GenericProtocolMessageToSend;->sendChannelInfo:Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    iget-object v2, p0, Lio/olvid/engine/protocol/datatypes/GenericProtocolMessageToSend;->encodedElements:Lio/olvid/engine/encoder/Encoded;

    iget-boolean v3, p0, Lio/olvid/engine/protocol/datatypes/GenericProtocolMessageToSend;->partOfFullRatchetProtocolOfTheSendSeed:Z

    invoke-direct {v0, v1, v2, v3}, Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;-><init>(Lio/olvid/engine/datatypes/containers/SendChannelInfo;Lio/olvid/engine/encoder/Encoded;Z)V

    return-object v0
.end method

.method public generateChannelServerQueryMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelServerQueryMessageToSend;
    .locals 4

    .line 55
    iget-object v0, p0, Lio/olvid/engine/protocol/datatypes/GenericProtocolMessageToSend;->sendChannelInfo:Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->getChannelType()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 57
    :cond_0
    new-instance v0, Lio/olvid/engine/datatypes/containers/ChannelServerQueryMessageToSend;

    iget-object v1, p0, Lio/olvid/engine/protocol/datatypes/GenericProtocolMessageToSend;->sendChannelInfo:Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->getToIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/engine/protocol/datatypes/GenericProtocolMessageToSend;->sendChannelInfo:Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->getServerQueryType()Lio/olvid/engine/datatypes/containers/ServerQuery$Type;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/engine/protocol/datatypes/GenericProtocolMessageToSend;->encodedElements:Lio/olvid/engine/encoder/Encoded;

    invoke-direct {v0, v1, v2, v3}, Lio/olvid/engine/datatypes/containers/ChannelServerQueryMessageToSend;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/ServerQuery$Type;Lio/olvid/engine/encoder/Encoded;)V

    return-object v0
.end method
