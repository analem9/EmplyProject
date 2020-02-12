.class public Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$RecoverK2CreateChannelAndSendAckStep;
.super Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;
.source "ChannelCreationWithContactDeviceProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecoverK2CreateChannelAndSendAckStep"
.end annotation


# instance fields
.field private final receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$K2Message;

.field private final startState:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK2State;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK2State;Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$K2Message;Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 989
    invoke-static {p3}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol;->access$1500(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    invoke-static {}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->createAsymmetricChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;)V

    .line 990
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$RecoverK2CreateChannelAndSendAckStep;->startState:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK2State;

    .line 991
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$RecoverK2CreateChannelAndSendAckStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$K2Message;

    return-void
.end method


# virtual methods
.method public executeStep()Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 996
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$RecoverK2CreateChannelAndSendAckStep;->getProtocolManagerSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0

    .line 998
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$RecoverK2CreateChannelAndSendAckStep;->startState:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK2State;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK2State;->access$1600(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK2State;)Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPrivateKey;

    move-result-object v1

    invoke-static {v1}, Lio/olvid/engine/crypto/Suite;->getPublicKeyEncryption(Lio/olvid/engine/datatypes/key/CryptographicKey;)Lio/olvid/engine/crypto/PublicKeyEncryption;

    move-result-object v1

    .line 999
    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$RecoverK2CreateChannelAndSendAckStep;->startState:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK2State;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK2State;->access$1600(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK2State;)Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPrivateKey;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$RecoverK2CreateChannelAndSendAckStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$K2Message;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$K2Message;->access$1700(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$K2Message;)Lio/olvid/engine/datatypes/EncryptedBytes;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lio/olvid/engine/crypto/PublicKeyEncryption;->kemDecrypt(Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPrivateKey;Lio/olvid/engine/datatypes/EncryptedBytes;)Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "Could not recover k2."

    .line 1001
    invoke-static {v0}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 1002
    new-instance v0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$CancelledState;

    invoke-direct {v0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$CancelledState;-><init>()V

    return-object v0

    .line 1007
    :cond_0
    :try_start_0
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$RecoverK2CreateChannelAndSendAckStep;->startState:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK2State;

    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK2State;->access$1800(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK2State;)Lio/olvid/engine/datatypes/UID;

    move-result-object v4

    iget-object v5, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$RecoverK2CreateChannelAndSendAckStep;->startState:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK2State;

    invoke-static {v5}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK2State;->access$1900(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK2State;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v5

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$RecoverK2CreateChannelAndSendAckStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v6

    invoke-interface {v2, v3, v4, v5, v6}, Lio/olvid/engine/metamanager/IdentityDelegate;->addDeviceForContactIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "Exception when adding a contact device"

    .line 1009
    invoke-static {v2}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    .line 1013
    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$RecoverK2CreateChannelAndSendAckStep;->startState:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK2State;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK2State;->access$2000(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK2State;)Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-static {v2}, Lio/olvid/engine/datatypes/Seed;->of([Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;)Lio/olvid/engine/datatypes/Seed;

    move-result-object v10

    .line 1014
    iget-object v5, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v6, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    .line 1016
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$RecoverK2CreateChannelAndSendAckStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v7

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$RecoverK2CreateChannelAndSendAckStep;->startState:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK2State;

    .line 1017
    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK2State;->access$1800(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK2State;)Lio/olvid/engine/datatypes/UID;

    move-result-object v8

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$RecoverK2CreateChannelAndSendAckStep;->startState:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK2State;

    .line 1018
    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK2State;->access$1900(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK2State;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v9

    const/4 v11, 0x0

    .line 1014
    invoke-interface/range {v5 .. v11}, Lio/olvid/engine/metamanager/ChannelDelegate;->createObliviousChannel(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Seed;I)V

    .line 1025
    :try_start_1
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$RecoverK2CreateChannelAndSendAckStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Lio/olvid/engine/metamanager/IdentityDelegate;->getOwnedIdentityPublishedAndLatestDetails(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;

    move-result-object v1

    aget-object v1, v1, v4

    .line 1026
    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$RecoverK2CreateChannelAndSendAckStep;->protocol:Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;

    invoke-virtual {v2}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->getJsonObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 1028
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, ""

    .line 1031
    :goto_1
    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$RecoverK2CreateChannelAndSendAckStep;->startState:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK2State;

    .line 1032
    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK2State;->access$1900(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK2State;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    .line 1033
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$RecoverK2CreateChannelAndSendAckStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v5

    new-array v3, v3, [Lio/olvid/engine/datatypes/UID;

    iget-object v6, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$RecoverK2CreateChannelAndSendAckStep;->startState:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK2State;

    .line 1034
    invoke-static {v6}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK2State;->access$1800(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK2State;)Lio/olvid/engine/datatypes/UID;

    move-result-object v6

    aput-object v6, v3, v4

    .line 1035
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 1031
    invoke-static {v2, v5, v3, v4}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createObliviousChannelInfo(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/datatypes/UID;Ljava/lang/Boolean;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$RecoverK2CreateChannelAndSendAckStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v2

    .line 1037
    new-instance v3, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$FirstAckMessage;

    invoke-direct {v3, v2, v1}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$FirstAckMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Ljava/lang/String;)V

    invoke-virtual {v3}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$FirstAckMessage;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object v1

    .line 1038
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v0, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$RecoverK2CreateChannelAndSendAckStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v3

    invoke-interface {v2, v0, v1, v3}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 1040
    new-instance v0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForSecondAckState;

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$RecoverK2CreateChannelAndSendAckStep;->startState:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK2State;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK2State;->access$1900(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK2State;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$RecoverK2CreateChannelAndSendAckStep;->startState:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK2State;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK2State;->access$1800(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK2State;)Lio/olvid/engine/datatypes/UID;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForSecondAckState;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;)V

    return-object v0
.end method
