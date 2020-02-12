.class public Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$ReceiveDetailsStep;
.super Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;
.source "IdentityDetailsPublicationProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReceiveDetailsStep"
.end annotation


# instance fields
.field private final receivedMessage:Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$SendDetailsMessage;

.field private final startState:Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$SendDetailsMessage;Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 387
    invoke-virtual {p3}, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    invoke-static {}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->createAnyConfirmedObliviousChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;)V

    .line 388
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$ReceiveDetailsStep;->startState:Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;

    .line 389
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$ReceiveDetailsStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$SendDetailsMessage;

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

    .line 394
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$ReceiveDetailsStep;->getProtocolManagerSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0

    .line 396
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$ReceiveDetailsStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$SendDetailsMessage;

    invoke-virtual {v1}, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$SendDetailsMessage;->getReceptionChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->getRemoteIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    .line 397
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$ReceiveDetailsStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    .line 398
    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$ReceiveDetailsStep;->protocol:Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;

    invoke-virtual {v3}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->getJsonObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v3

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$ReceiveDetailsStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$SendDetailsMessage;

    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$SendDetailsMessage;->access$300(Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$SendDetailsMessage;)Ljava/lang/String;

    move-result-object v4

    const-class v5, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;

    invoke-virtual {v3, v4, v5}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;

    .line 400
    invoke-virtual {v3}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->getPhotoServerLabel()[B

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->getPhotoServerKey()[B

    move-result-object v4

    if-eqz v4, :cond_1

    .line 402
    iget-object v4, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v5, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-interface {v4, v5, v2, v1}, Lio/olvid/engine/metamanager/IdentityDelegate;->getContactPublishedAndTrustedDetails(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    .line 404
    invoke-virtual {v3}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->getPhotoServerLabel()[B

    move-result-object v6

    invoke-virtual {v4}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->getPhotoServerLabel()[B

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 405
    invoke-virtual {v3}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->getPhotoServerKey()[B

    move-result-object v6

    invoke-virtual {v4}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->getPhotoServerKey()[B

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 406
    invoke-virtual {v4}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->getPhotoUrl()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    .line 409
    :cond_0
    iget-object v6, p0, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$ReceiveDetailsStep;->protocol:Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;

    invoke-virtual {v6}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->getJsonObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 411
    new-instance v6, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    .line 412
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$ReceiveDetailsStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v7

    invoke-static {v7}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createLocalChannelInfo(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v7

    const/4 v8, 0x7

    new-instance v9, Lio/olvid/engine/datatypes/UID;

    .line 414
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$ReceiveDetailsStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v10

    invoke-direct {v9, v10}, Lio/olvid/engine/datatypes/UID;-><init>(Lio/olvid/engine/crypto/PRNG;)V

    invoke-direct {v6, v7, v8, v9, v5}, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;-><init>(Lio/olvid/engine/datatypes/containers/SendChannelInfo;ILio/olvid/engine/datatypes/UID;Z)V

    .line 417
    new-instance v5, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$InitialMessage;

    invoke-direct {v5, v6, v1, v4}, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$InitialMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Lio/olvid/engine/datatypes/Identity;Ljava/lang/String;)V

    invoke-virtual {v5}, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$InitialMessage;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object v4

    .line 418
    iget-object v5, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v6, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$ReceiveDetailsStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v7

    invoke-interface {v5, v6, v4, v7}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 423
    :cond_1
    iget-object v4, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v0, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-interface {v4, v0, v1, v2, v3}, Lio/olvid/engine/metamanager/IdentityDelegate;->setContactPublishedDetails(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;)V

    .line 425
    new-instance v0, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$DetailsReceivedState;

    invoke-direct {v0}, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$DetailsReceivedState;-><init>()V

    return-object v0
.end method
