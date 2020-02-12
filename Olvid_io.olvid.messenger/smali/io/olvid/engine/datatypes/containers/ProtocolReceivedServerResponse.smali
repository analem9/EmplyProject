.class public Lio/olvid/engine/datatypes/containers/ProtocolReceivedServerResponse;
.super Ljava/lang/Object;
.source "ProtocolReceivedServerResponse.java"


# instance fields
.field private final encodedElements:Lio/olvid/engine/encoder/Encoded;

.field private final receptionChannelInfo:Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

.field private final serverResponse:Lio/olvid/engine/encoder/Encoded;

.field private final toIdentity:Lio/olvid/engine/datatypes/Identity;


# direct methods
.method public constructor <init>(Lio/olvid/engine/encoder/Encoded;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/encoder/Encoded;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lio/olvid/engine/datatypes/containers/ProtocolReceivedServerResponse;->serverResponse:Lio/olvid/engine/encoder/Encoded;

    .line 14
    iput-object p2, p0, Lio/olvid/engine/datatypes/containers/ProtocolReceivedServerResponse;->toIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 15
    iput-object p3, p0, Lio/olvid/engine/datatypes/containers/ProtocolReceivedServerResponse;->encodedElements:Lio/olvid/engine/encoder/Encoded;

    .line 16
    iput-object p4, p0, Lio/olvid/engine/datatypes/containers/ProtocolReceivedServerResponse;->receptionChannelInfo:Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    return-void
.end method


# virtual methods
.method public getEncodedElements()Lio/olvid/engine/encoder/Encoded;
    .locals 1

    .line 28
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/ProtocolReceivedServerResponse;->encodedElements:Lio/olvid/engine/encoder/Encoded;

    return-object v0
.end method

.method public getReceptionChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;
    .locals 1

    .line 32
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/ProtocolReceivedServerResponse;->receptionChannelInfo:Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    return-object v0
.end method

.method public getServerResponse()Lio/olvid/engine/encoder/Encoded;
    .locals 1

    .line 20
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/ProtocolReceivedServerResponse;->serverResponse:Lio/olvid/engine/encoder/Encoded;

    return-object v0
.end method

.method public getToIdentity()Lio/olvid/engine/datatypes/Identity;
    .locals 1

    .line 24
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/ProtocolReceivedServerResponse;->toIdentity:Lio/olvid/engine/datatypes/Identity;

    return-object v0
.end method
