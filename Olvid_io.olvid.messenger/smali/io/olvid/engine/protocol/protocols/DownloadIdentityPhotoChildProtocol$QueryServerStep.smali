.class public Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$QueryServerStep;
.super Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;
.source "DownloadIdentityPhotoChildProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueryServerStep"
.end annotation


# instance fields
.field private final receivedMessage:Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$InitialMessage;

.field private final startState:Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$InitialMessage;Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 223
    invoke-virtual {p3}, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    invoke-static {}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->createLocalChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;)V

    .line 224
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$QueryServerStep;->startState:Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;

    .line 225
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$QueryServerStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$InitialMessage;

    return-void
.end method


# virtual methods
.method public bridge synthetic executeStep()Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 218
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$QueryServerStep;->executeStep()Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$DownloadingPhotoState;

    move-result-object v0

    return-object v0
.end method

.method public executeStep()Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$DownloadingPhotoState;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 230
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$QueryServerStep;->getProtocolManagerSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0

    .line 232
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$QueryServerStep;->protocol:Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;

    invoke-virtual {v1}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->getJsonObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$QueryServerStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$InitialMessage;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$InitialMessage;->access$000(Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$InitialMessage;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;

    .line 234
    invoke-virtual {v1}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->getPhotoServerLabel()[B

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->getPhotoServerKey()[B

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 237
    :cond_0
    new-instance v2, Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v1}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->getPhotoServerLabel()[B

    move-result-object v1

    invoke-direct {v2, v1}, Lio/olvid/engine/datatypes/UID;-><init>([B)V

    .line 239
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$QueryServerStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$QueryServerStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$InitialMessage;

    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$InitialMessage;->access$100(Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$InitialMessage;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    invoke-static {v4, v2}, Lio/olvid/engine/datatypes/containers/ServerQuery$Type;->createGetUserDataQuery(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/datatypes/containers/ServerQuery$Type;

    move-result-object v2

    invoke-static {v1, v2}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createServerQueryChannelInfo(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/ServerQuery$Type;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$QueryServerStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v1

    .line 240
    new-instance v2, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$ServerGetPhotoMessage;

    invoke-direct {v2, v1, v3}, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$ServerGetPhotoMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$1;)V

    invoke-virtual {v2}, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$ServerGetPhotoMessage;->generateChannelServerQueryMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelServerQueryMessageToSend;

    move-result-object v1

    .line 241
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v0, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$QueryServerStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v3

    invoke-interface {v2, v0, v1, v3}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 242
    new-instance v0, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$DownloadingPhotoState;

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$QueryServerStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$InitialMessage;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$InitialMessage;->access$100(Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$InitialMessage;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$QueryServerStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$InitialMessage;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$InitialMessage;->access$000(Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$InitialMessage;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$DownloadingPhotoState;-><init>(Lio/olvid/engine/datatypes/Identity;Ljava/lang/String;)V

    return-object v0

    :cond_1
    :goto_0
    return-object v3
.end method
