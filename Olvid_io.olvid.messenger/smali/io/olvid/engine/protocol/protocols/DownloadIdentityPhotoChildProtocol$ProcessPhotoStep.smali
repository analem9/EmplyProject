.class public Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$ProcessPhotoStep;
.super Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;
.source "DownloadIdentityPhotoChildProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcessPhotoStep"
.end annotation


# instance fields
.field private final receivedMessage:Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$ServerGetPhotoMessage;

.field private final startState:Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$DownloadingPhotoState;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$DownloadingPhotoState;Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$ServerGetPhotoMessage;Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 251
    invoke-virtual {p3}, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    invoke-static {}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->createLocalChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;)V

    .line 252
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$ProcessPhotoStep;->startState:Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$DownloadingPhotoState;

    .line 253
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$ProcessPhotoStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$ServerGetPhotoMessage;

    return-void
.end method


# virtual methods
.method public executeStep()Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 258
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$ProcessPhotoStep;->getProtocolManagerSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0

    .line 260
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$ProcessPhotoStep;->protocol:Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;

    invoke-virtual {v1}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->getJsonObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$ProcessPhotoStep;->startState:Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$DownloadingPhotoState;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$DownloadingPhotoState;->access$300(Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$DownloadingPhotoState;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;

    .line 262
    new-instance v2, Lio/olvid/engine/encoder/Encoded;

    invoke-virtual {v1}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->getPhotoServerKey()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lio/olvid/engine/encoder/Encoded;-><init>([B)V

    invoke-virtual {v2}, Lio/olvid/engine/encoder/Encoded;->decodeSymmetricKey()Lio/olvid/engine/datatypes/key/symmetric/SymmetricKey;

    move-result-object v2

    check-cast v2, Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    .line 263
    invoke-static {v2}, Lio/olvid/engine/crypto/Suite;->getAuthEnc(Lio/olvid/engine/datatypes/key/CryptographicKey;)Lio/olvid/engine/crypto/AuthEnc;

    move-result-object v3

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$ProcessPhotoStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$ServerGetPhotoMessage;

    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$ServerGetPhotoMessage;->access$400(Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$ServerGetPhotoMessage;)Lio/olvid/engine/datatypes/EncryptedBytes;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lio/olvid/engine/crypto/AuthEnc;->decrypt(Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;Lio/olvid/engine/datatypes/EncryptedBytes;)[B

    move-result-object v10

    .line 265
    iget-object v5, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v6, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v0, p0, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$ProcessPhotoStep;->startState:Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$DownloadingPhotoState;

    invoke-static {v0}, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$DownloadingPhotoState;->access$500(Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$DownloadingPhotoState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v7

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$ProcessPhotoStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v8

    invoke-virtual {v1}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->getVersion()I

    move-result v9

    invoke-interface/range {v5 .. v10}, Lio/olvid/engine/metamanager/IdentityDelegate;->setContactDetailsPhoto(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;I[B)V

    .line 266
    new-instance v0, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$PhotoDownloadedState;

    invoke-direct {v0}, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$PhotoDownloadedState;-><init>()V

    return-object v0
.end method
