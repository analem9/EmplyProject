.class public Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$ConfirmChannelStep;
.super Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;
.source "ChannelCreationWithContactDeviceProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmChannelStep"
.end annotation


# instance fields
.field private final receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SecondAckMessage;

.field private final startState:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForSecondAckState;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForSecondAckState;Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SecondAckMessage;Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1124
    invoke-static {p3}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol;->access$2500(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    invoke-static {p1}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForSecondAckState;->access$2600(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForSecondAckState;)Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    invoke-static {p1}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForSecondAckState;->access$2700(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForSecondAckState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->createObliviousChannelInfo(Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Z)Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;)V

    .line 1125
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$ConfirmChannelStep;->startState:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForSecondAckState;

    .line 1126
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$ConfirmChannelStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SecondAckMessage;

    return-void
.end method


# virtual methods
.method public executeStep()Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1131
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$ConfirmChannelStep;->getProtocolManagerSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0

    .line 1134
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    .line 1136
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$ConfirmChannelStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$ConfirmChannelStep;->startState:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForSecondAckState;

    .line 1137
    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForSecondAckState;->access$2600(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForSecondAckState;)Lio/olvid/engine/datatypes/UID;

    move-result-object v4

    iget-object v5, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$ConfirmChannelStep;->startState:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForSecondAckState;

    .line 1138
    invoke-static {v5}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForSecondAckState;->access$2700(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForSecondAckState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v5

    .line 1134
    invoke-interface {v1, v2, v3, v4, v5}, Lio/olvid/engine/metamanager/ChannelDelegate;->confirmObliviousChannel(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;)V

    .line 1144
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$ConfirmChannelStep;->protocol:Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;

    invoke-virtual {v1}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->getJsonObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$ConfirmChannelStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SecondAckMessage;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SecondAckMessage;->access$2800(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SecondAckMessage;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;

    if-eqz v1, :cond_1

    .line 1146
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$ConfirmChannelStep;->startState:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForSecondAckState;

    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForSecondAckState;->access$2700(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForSecondAckState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$ConfirmChannelStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5, v1}, Lio/olvid/engine/metamanager/IdentityDelegate;->setContactPublishedDetails(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;)V

    .line 1147
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$ConfirmChannelStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$ConfirmChannelStep;->startState:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForSecondAckState;

    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForSecondAckState;->access$2700(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForSecondAckState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lio/olvid/engine/metamanager/IdentityDelegate;->getContactPublishedAndTrustedDetails(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;

    move-result-object v1

    .line 1148
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    .line 1150
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->getPhotoServerKey()[B

    move-result-object v3

    const/4 v4, 0x1

    aget-object v5, v1, v4

    invoke-virtual {v5}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->getPhotoServerKey()[B

    move-result-object v5

    invoke-static {v3, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v3, v1, v2

    .line 1151
    invoke-virtual {v3}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->getPhotoServerLabel()[B

    move-result-object v3

    aget-object v5, v1, v4

    invoke-virtual {v5}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->getPhotoServerLabel()[B

    move-result-object v5

    invoke-static {v3, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v3, v1, v2

    .line 1152
    invoke-virtual {v3}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->getIdentityDetails()Lio/olvid/engine/engine/types/JsonIdentityDetails;

    move-result-object v3

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->getIdentityDetails()Lio/olvid/engine/engine/types/JsonIdentityDetails;

    move-result-object v1

    invoke-virtual {v3, v1}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_1

    .line 1154
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$ConfirmChannelStep;->startState:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForSecondAckState;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForSecondAckState;->access$2700(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForSecondAckState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$ConfirmChannelStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lio/olvid/engine/metamanager/IdentityDelegate;->trustPublishedContactDetails(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1159
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1165
    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$ConfirmChannelStep;->startState:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForSecondAckState;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForSecondAckState;->access$2600(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForSecondAckState;)Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$ConfirmChannelStep;->startState:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForSecondAckState;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForSecondAckState;->access$2700(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForSecondAckState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$ConfirmChannelStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lio/olvid/engine/protocol/databases/ChannelCreationProtocolInstance;->get(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/protocol/databases/ChannelCreationProtocolInstance;

    move-result-object v0

    .line 1166
    invoke-virtual {v0}, Lio/olvid/engine/protocol/databases/ChannelCreationProtocolInstance;->delete()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string v0, "Exception when deleting a ChannelCreationProtocolInstance"

    .line 1168
    invoke-static {v0}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    .line 1171
    :goto_1
    new-instance v0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$ChannelConfirmedState;

    invoke-direct {v0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$ChannelConfirmedState;-><init>()V

    return-object v0
.end method
