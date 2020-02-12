.class public Lio/olvid/engine/datatypes/containers/ProtocolReceivedMessage;
.super Ljava/lang/Object;
.source "ProtocolReceivedMessage.java"


# instance fields
.field private final encodedElements:Lio/olvid/engine/encoder/Encoded;

.field private final messageUid:Lio/olvid/engine/datatypes/UID;

.field private final receptionChannelInfo:Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

.field private final serverTimestamp:J

.field private final toIdentity:Lio/olvid/engine/datatypes/Identity;


# direct methods
.method public constructor <init>(Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/encoder/Encoded;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;J)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lio/olvid/engine/datatypes/containers/ProtocolReceivedMessage;->messageUid:Lio/olvid/engine/datatypes/UID;

    .line 18
    iput-object p2, p0, Lio/olvid/engine/datatypes/containers/ProtocolReceivedMessage;->toIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 19
    iput-object p3, p0, Lio/olvid/engine/datatypes/containers/ProtocolReceivedMessage;->encodedElements:Lio/olvid/engine/encoder/Encoded;

    .line 20
    iput-object p4, p0, Lio/olvid/engine/datatypes/containers/ProtocolReceivedMessage;->receptionChannelInfo:Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    .line 21
    iput-wide p5, p0, Lio/olvid/engine/datatypes/containers/ProtocolReceivedMessage;->serverTimestamp:J

    return-void
.end method

.method public static of(Lio/olvid/engine/channel/datatypes/ChannelReceivedMessage;)Lio/olvid/engine/datatypes/containers/ProtocolReceivedMessage;
    .locals 8

    .line 45
    invoke-virtual {p0}, Lio/olvid/engine/channel/datatypes/ChannelReceivedMessage;->getMessageType()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 48
    :cond_0
    new-instance v7, Lio/olvid/engine/datatypes/containers/ProtocolReceivedMessage;

    invoke-virtual {p0}, Lio/olvid/engine/channel/datatypes/ChannelReceivedMessage;->getMessageUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    .line 49
    invoke-virtual {p0}, Lio/olvid/engine/channel/datatypes/ChannelReceivedMessage;->getToIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    .line 50
    invoke-virtual {p0}, Lio/olvid/engine/channel/datatypes/ChannelReceivedMessage;->getEncodedElements()Lio/olvid/engine/encoder/Encoded;

    move-result-object v3

    .line 51
    invoke-virtual {p0}, Lio/olvid/engine/channel/datatypes/ChannelReceivedMessage;->getReceptionChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v4

    .line 52
    invoke-virtual {p0}, Lio/olvid/engine/channel/datatypes/ChannelReceivedMessage;->getMessage()Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage;

    move-result-object p0

    invoke-virtual {p0}, Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage;->getServerTimestamp()J

    move-result-wide v5

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lio/olvid/engine/datatypes/containers/ProtocolReceivedMessage;-><init>(Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/encoder/Encoded;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;J)V

    return-object v7
.end method


# virtual methods
.method public getEncodedElements()Lio/olvid/engine/encoder/Encoded;
    .locals 1

    .line 33
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/ProtocolReceivedMessage;->encodedElements:Lio/olvid/engine/encoder/Encoded;

    return-object v0
.end method

.method public getMessageUid()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 25
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/ProtocolReceivedMessage;->messageUid:Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method

.method public getReceptionChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;
    .locals 1

    .line 37
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/ProtocolReceivedMessage;->receptionChannelInfo:Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    return-object v0
.end method

.method public getServerTimestamp()J
    .locals 2

    .line 41
    iget-wide v0, p0, Lio/olvid/engine/datatypes/containers/ProtocolReceivedMessage;->serverTimestamp:J

    return-wide v0
.end method

.method public getToIdentity()Lio/olvid/engine/datatypes/Identity;
    .locals 1

    .line 29
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/ProtocolReceivedMessage;->toIdentity:Lio/olvid/engine/datatypes/Identity;

    return-object v0
.end method
