.class public abstract Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;
.super Ljava/lang/Object;
.source "ConcreteProtocolMessage.java"


# instance fields
.field private final coreProtocolMessage:Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;


# direct methods
.method protected constructor <init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;->coreProtocolMessage:Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    return-void
.end method


# virtual methods
.method public generateChannelDialogMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelDialogMessageToSend;
    .locals 1

    .line 65
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;->generateGenericProtocolMessageToSend()Lio/olvid/engine/protocol/datatypes/GenericProtocolMessageToSend;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/engine/protocol/datatypes/GenericProtocolMessageToSend;->generateChannelDialogMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelDialogMessageToSend;

    move-result-object v0

    return-object v0
.end method

.method public generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;->generateGenericProtocolMessageToSend()Lio/olvid/engine/protocol/datatypes/GenericProtocolMessageToSend;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/engine/protocol/datatypes/GenericProtocolMessageToSend;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object v0

    return-object v0
.end method

.method public generateChannelServerQueryMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelServerQueryMessageToSend;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;->generateGenericProtocolMessageToSend()Lio/olvid/engine/protocol/datatypes/GenericProtocolMessageToSend;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/engine/protocol/datatypes/GenericProtocolMessageToSend;->generateChannelServerQueryMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelServerQueryMessageToSend;

    move-result-object v0

    return-object v0
.end method

.method public generateGenericProtocolMessageToSend()Lio/olvid/engine/protocol/datatypes/GenericProtocolMessageToSend;
    .locals 8

    .line 49
    iget-object v0, p0, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;->coreProtocolMessage:Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    invoke-virtual {v0}, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;->getSendChannelInfo()Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 52
    :cond_0
    new-instance v0, Lio/olvid/engine/protocol/datatypes/GenericProtocolMessageToSend;

    iget-object v1, p0, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;->coreProtocolMessage:Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    invoke-virtual {v1}, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;->getSendChannelInfo()Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v2

    iget-object v1, p0, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;->coreProtocolMessage:Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    .line 53
    invoke-virtual {v1}, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;->getProtocolId()I

    move-result v3

    iget-object v1, p0, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;->coreProtocolMessage:Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    .line 54
    invoke-virtual {v1}, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;->getProtocolInstanceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v4

    .line 55
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;->getProtocolMessageId()I

    move-result v5

    .line 56
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;->getInputs()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v6

    iget-object v1, p0, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;->coreProtocolMessage:Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    .line 57
    invoke-virtual {v1}, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;->isPartOfFullRatchetProtocolOfTheSendSeed()Z

    move-result v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lio/olvid/engine/protocol/datatypes/GenericProtocolMessageToSend;-><init>(Lio/olvid/engine/datatypes/containers/SendChannelInfo;ILio/olvid/engine/datatypes/UID;I[Lio/olvid/engine/encoder/Encoded;Z)V

    return-object v0
.end method

.method public getAssociatedOwnedIdentity()Lio/olvid/engine/datatypes/Identity;
    .locals 1

    .line 37
    iget-object v0, p0, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;->coreProtocolMessage:Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    invoke-virtual {v0}, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;->getAssociatedOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    return-object v0
.end method

.method public abstract getInputs()[Lio/olvid/engine/encoder/Encoded;
.end method

.method public getProtocolId()I
    .locals 1

    .line 25
    iget-object v0, p0, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;->coreProtocolMessage:Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    invoke-virtual {v0}, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;->getProtocolId()I

    move-result v0

    return v0
.end method

.method public getProtocolInstanceUid()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 45
    iget-object v0, p0, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;->coreProtocolMessage:Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    invoke-virtual {v0}, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;->getProtocolInstanceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v0

    return-object v0
.end method

.method public abstract getProtocolMessageId()I
.end method

.method public getReceptionChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;
    .locals 1

    .line 29
    iget-object v0, p0, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;->coreProtocolMessage:Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    invoke-virtual {v0}, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;->getReceptionChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v0

    return-object v0
.end method

.method public getServerTimestamp()J
    .locals 2

    .line 41
    iget-object v0, p0, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;->coreProtocolMessage:Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    invoke-virtual {v0}, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;->getServerTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getToIdentity()Lio/olvid/engine/datatypes/Identity;
    .locals 1

    .line 33
    iget-object v0, p0, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;->coreProtocolMessage:Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    invoke-virtual {v0}, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;->getToIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    return-object v0
.end method
