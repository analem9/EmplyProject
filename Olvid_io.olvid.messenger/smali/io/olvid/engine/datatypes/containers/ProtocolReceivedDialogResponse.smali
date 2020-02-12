.class public Lio/olvid/engine/datatypes/containers/ProtocolReceivedDialogResponse;
.super Ljava/lang/Object;
.source "ProtocolReceivedDialogResponse.java"


# instance fields
.field private final encodedElements:Lio/olvid/engine/encoder/Encoded;

.field private final receptionChannelInfo:Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

.field private final toIdentity:Lio/olvid/engine/datatypes/Identity;

.field private final userDialogResponse:Lio/olvid/engine/encoder/Encoded;

.field private final userDialogUuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Lio/olvid/engine/encoder/Encoded;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/encoder/Encoded;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lio/olvid/engine/datatypes/containers/ProtocolReceivedDialogResponse;->userDialogUuid:Ljava/util/UUID;

    .line 18
    iput-object p2, p0, Lio/olvid/engine/datatypes/containers/ProtocolReceivedDialogResponse;->userDialogResponse:Lio/olvid/engine/encoder/Encoded;

    .line 19
    iput-object p3, p0, Lio/olvid/engine/datatypes/containers/ProtocolReceivedDialogResponse;->toIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 20
    iput-object p4, p0, Lio/olvid/engine/datatypes/containers/ProtocolReceivedDialogResponse;->encodedElements:Lio/olvid/engine/encoder/Encoded;

    .line 21
    iput-object p5, p0, Lio/olvid/engine/datatypes/containers/ProtocolReceivedDialogResponse;->receptionChannelInfo:Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    return-void
.end method


# virtual methods
.method public getEncodedElements()Lio/olvid/engine/encoder/Encoded;
    .locals 1

    .line 37
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/ProtocolReceivedDialogResponse;->encodedElements:Lio/olvid/engine/encoder/Encoded;

    return-object v0
.end method

.method public getReceptionChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;
    .locals 1

    .line 41
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/ProtocolReceivedDialogResponse;->receptionChannelInfo:Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    return-object v0
.end method

.method public getToIdentity()Lio/olvid/engine/datatypes/Identity;
    .locals 1

    .line 33
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/ProtocolReceivedDialogResponse;->toIdentity:Lio/olvid/engine/datatypes/Identity;

    return-object v0
.end method

.method public getUserDialogResponse()Lio/olvid/engine/encoder/Encoded;
    .locals 1

    .line 25
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/ProtocolReceivedDialogResponse;->userDialogResponse:Lio/olvid/engine/encoder/Encoded;

    return-object v0
.end method

.method public getUserDialogUuid()Ljava/util/UUID;
    .locals 1

    .line 29
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/ProtocolReceivedDialogResponse;->userDialogUuid:Ljava/util/UUID;

    return-object v0
.end method
