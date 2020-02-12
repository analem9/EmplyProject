.class public Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;
.super Ljava/lang/Object;
.source "CoreProtocolMessage.java"


# instance fields
.field private final associatedOwnedIdentity:Lio/olvid/engine/datatypes/Identity;

.field private final partOfFullRatchetProtocolOfTheSendSeed:Z

.field private final protocolId:I

.field private final protocolInstanceUid:Lio/olvid/engine/datatypes/UID;

.field private final receptionChannelInfo:Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

.field private final sendChannelInfo:Lio/olvid/engine/datatypes/containers/SendChannelInfo;

.field private final serverTimestamp:J

.field private final toIdentity:Lio/olvid/engine/datatypes/Identity;


# direct methods
.method public constructor <init>(Lio/olvid/engine/datatypes/containers/SendChannelInfo;ILio/olvid/engine/datatypes/UID;Z)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;->sendChannelInfo:Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;->receptionChannelInfo:Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    .line 34
    iput-object p1, p0, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;->toIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 35
    iput p2, p0, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;->protocolId:I

    .line 36
    iput-object p3, p0, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;->protocolInstanceUid:Lio/olvid/engine/datatypes/UID;

    .line 37
    iput-boolean p4, p0, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;->partOfFullRatchetProtocolOfTheSendSeed:Z

    .line 38
    iput-object p1, p0, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;->associatedOwnedIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;->serverTimestamp:J

    return-void
.end method

.method public constructor <init>(Lio/olvid/engine/protocol/databases/ReceivedMessage;)V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;->sendChannelInfo:Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    .line 22
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getReceptionChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;->receptionChannelInfo:Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    .line 23
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getToIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;->toIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 24
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getProtocolId()I

    move-result v0

    iput v0, p0, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;->protocolId:I

    .line 25
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getProtocolInstanceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;->protocolInstanceUid:Lio/olvid/engine/datatypes/UID;

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;->partOfFullRatchetProtocolOfTheSendSeed:Z

    .line 27
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getAssociatedOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;->associatedOwnedIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 28
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getServerTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;->serverTimestamp:J

    return-void
.end method


# virtual methods
.method public getAssociatedOwnedIdentity()Lio/olvid/engine/datatypes/Identity;
    .locals 1

    .line 67
    iget-object v0, p0, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;->associatedOwnedIdentity:Lio/olvid/engine/datatypes/Identity;

    return-object v0
.end method

.method public getProtocolId()I
    .locals 1

    .line 55
    iget v0, p0, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;->protocolId:I

    return v0
.end method

.method public getProtocolInstanceUid()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 59
    iget-object v0, p0, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;->protocolInstanceUid:Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method

.method public getReceptionChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;
    .locals 1

    .line 47
    iget-object v0, p0, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;->receptionChannelInfo:Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    return-object v0
.end method

.method public getSendChannelInfo()Lio/olvid/engine/datatypes/containers/SendChannelInfo;
    .locals 1

    .line 43
    iget-object v0, p0, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;->sendChannelInfo:Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    return-object v0
.end method

.method public getServerTimestamp()J
    .locals 2

    .line 71
    iget-wide v0, p0, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;->serverTimestamp:J

    return-wide v0
.end method

.method public getToIdentity()Lio/olvid/engine/datatypes/Identity;
    .locals 1

    .line 51
    iget-object v0, p0, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;->toIdentity:Lio/olvid/engine/datatypes/Identity;

    return-object v0
.end method

.method public isPartOfFullRatchetProtocolOfTheSendSeed()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;->partOfFullRatchetProtocolOfTheSendSeed:Z

    return v0
.end method
