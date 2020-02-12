.class public Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$ConfirmChannelAndSendAckStep;
.super Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;
.source "ChannelCreationWithContactDeviceProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmChannelAndSendAckStep"
.end annotation


# instance fields
.field private final receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$FirstAckMessage;

.field private final startState:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForFirstAckState;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForFirstAckState;Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$FirstAckMessage;Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1050
    invoke-static {p3}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol;->access$2100(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    invoke-static {p1}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForFirstAckState;->access$2200(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForFirstAckState;)Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    invoke-static {p1}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForFirstAckState;->access$2300(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForFirstAckState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->createObliviousChannelInfo(Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Z)Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;)V

    .line 1051
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$ConfirmChannelAndSendAckStep;->startState:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForFirstAckState;

    .line 1052
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$ConfirmChannelAndSendAckStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$FirstAckMessage;

    return-void
.end method


# virtual methods
.method public executeStep()Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1057
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$ConfirmChannelAndSendAckStep;->getProtocolManagerSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0

    .line 1060
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    .line 1062
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$ConfirmChannelAndSendAckStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$ConfirmChannelAndSendAckStep;->startState:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForFirstAckState;

    .line 1063
    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForFirstAckState;->access$2200(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForFirstAckState;)Lio/olvid/engine/datatypes/UID;

    move-result-object v4

    iget-object v5, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$ConfirmChannelAndSendAckStep;->startState:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForFirstAckState;

    .line 1064
    invoke-static {v5}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForFirstAckState;->access$2300(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForFirstAckState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v5

    .line 1060
    invoke-interface {v1, v2, v3, v4, v5}, Lio/olvid/engine/metamanager/ChannelDelegate;->confirmObliviousChannel(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1070
    :try_start_0
    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$ConfirmChannelAndSendAckStep;->protocol:Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;

    invoke-virtual {v3}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->getJsonObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v3

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$ConfirmChannelAndSendAckStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$FirstAckMessage;

    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$FirstAckMessage;->access$2400(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$FirstAckMessage;)Ljava/lang/String;

    move-result-object v4

    const-class v5, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;

    invoke-virtual {v3, v4, v5}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;

    if-eqz v3, :cond_1

    .line 1072
    iget-object v4, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v5, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v6, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$ConfirmChannelAndSendAckStep;->startState:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForFirstAckState;

    invoke-static {v6}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForFirstAckState;->access$2300(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForFirstAckState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v6

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$ConfirmChannelAndSendAckStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7, v3}, Lio/olvid/engine/metamanager/IdentityDelegate;->setContactPublishedDetails(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;)V

    .line 1073
    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v4, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$ConfirmChannelAndSendAckStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v5

    iget-object v6, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$ConfirmChannelAndSendAckStep;->startState:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForFirstAckState;

    invoke-static {v6}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForFirstAckState;->access$2300(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForFirstAckState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lio/olvid/engine/metamanager/IdentityDelegate;->getContactPublishedAndTrustedDetails(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;

    move-result-object v3

    .line 1074
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 1076
    aget-object v4, v3, v1

    invoke-virtual {v4}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->getPhotoServerKey()[B

    move-result-object v4

    aget-object v5, v3, v2

    invoke-virtual {v5}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->getPhotoServerKey()[B

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_0

    aget-object v4, v3, v1

    .line 1077
    invoke-virtual {v4}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->getPhotoServerLabel()[B

    move-result-object v4

    aget-object v5, v3, v2

    invoke-virtual {v5}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->getPhotoServerLabel()[B

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_0

    aget-object v4, v3, v1

    .line 1078
    invoke-virtual {v4}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->getIdentityDetails()Lio/olvid/engine/engine/types/JsonIdentityDetails;

    move-result-object v4

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->getIdentityDetails()Lio/olvid/engine/engine/types/JsonIdentityDetails;

    move-result-object v3

    invoke-virtual {v4, v3}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 1080
    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v4, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v5, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$ConfirmChannelAndSendAckStep;->startState:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForFirstAckState;

    invoke-static {v5}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForFirstAckState;->access$2300(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForFirstAckState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v5

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$ConfirmChannelAndSendAckStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lio/olvid/engine/metamanager/IdentityDelegate;->trustPublishedContactDetails(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 1085
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1091
    :cond_1
    :goto_1
    :try_start_1
    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$ConfirmChannelAndSendAckStep;->startState:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForFirstAckState;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForFirstAckState;->access$2200(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForFirstAckState;)Lio/olvid/engine/datatypes/UID;

    move-result-object v3

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$ConfirmChannelAndSendAckStep;->startState:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForFirstAckState;

    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForFirstAckState;->access$2300(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForFirstAckState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$ConfirmChannelAndSendAckStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v5

    invoke-static {v0, v3, v4, v5}, Lio/olvid/engine/protocol/databases/ChannelCreationProtocolInstance;->get(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/protocol/databases/ChannelCreationProtocolInstance;

    move-result-object v3

    .line 1092
    invoke-virtual {v3}, Lio/olvid/engine/protocol/databases/ChannelCreationProtocolInstance;->delete()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    const-string v3, "Exception when deleting a ChannelCreationProtocolInstance"

    .line 1094
    invoke-static {v3}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    .line 1099
    :goto_2
    :try_start_2
    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v4, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$ConfirmChannelAndSendAckStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lio/olvid/engine/metamanager/IdentityDelegate;->getOwnedIdentityPublishedAndLatestDetails(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;

    move-result-object v3

    aget-object v3, v3, v1

    .line 1100
    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$ConfirmChannelAndSendAckStep;->protocol:Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;

    invoke-virtual {v4}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->getJsonObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v3

    .line 1102
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    const-string v3, ""

    .line 1105
    :goto_3
    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$ConfirmChannelAndSendAckStep;->startState:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForFirstAckState;

    .line 1106
    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForFirstAckState;->access$2300(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForFirstAckState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    .line 1107
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$ConfirmChannelAndSendAckStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v5

    new-array v6, v2, [Lio/olvid/engine/datatypes/UID;

    iget-object v7, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$ConfirmChannelAndSendAckStep;->startState:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForFirstAckState;

    .line 1108
    invoke-static {v7}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForFirstAckState;->access$2200(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForFirstAckState;)Lio/olvid/engine/datatypes/UID;

    move-result-object v7

    aput-object v7, v6, v1

    .line 1109
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1105
    invoke-static {v4, v5, v6, v1}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createObliviousChannelInfo(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/datatypes/UID;Ljava/lang/Boolean;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$ConfirmChannelAndSendAckStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v1

    .line 1111
    new-instance v2, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SecondAckMessage;

    invoke-direct {v2, v1, v3}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SecondAckMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Ljava/lang/String;)V

    invoke-virtual {v2}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SecondAckMessage;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object v1

    .line 1112
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v0, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$ConfirmChannelAndSendAckStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v3

    invoke-interface {v2, v0, v1, v3}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 1114
    new-instance v0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$ChannelConfirmedState;

    invoke-direct {v0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$ChannelConfirmedState;-><init>()V

    return-object v0
.end method
