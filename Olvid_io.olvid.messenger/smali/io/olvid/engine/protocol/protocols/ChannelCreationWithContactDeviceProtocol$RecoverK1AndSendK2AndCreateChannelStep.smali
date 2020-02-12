.class public Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$RecoverK1AndSendK2AndCreateChannelStep;
.super Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;
.source "ChannelCreationWithContactDeviceProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecoverK1AndSendK2AndCreateChannelStep"
.end annotation


# instance fields
.field private final receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$BobEphemeralKeyAndK1Message;

.field private final startState:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK1State;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK1State;Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$BobEphemeralKeyAndK1Message;Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 942
    invoke-virtual {p3}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    invoke-static {}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->createAsymmetricChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;)V

    .line 943
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$RecoverK1AndSendK2AndCreateChannelStep;->startState:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK1State;

    .line 944
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$RecoverK1AndSendK2AndCreateChannelStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$BobEphemeralKeyAndK1Message;

    return-void
.end method


# virtual methods
.method public executeStep()Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 949
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$RecoverK1AndSendK2AndCreateChannelStep;->getProtocolManagerSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0

    .line 951
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$RecoverK1AndSendK2AndCreateChannelStep;->startState:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK1State;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK1State;->access$1000(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK1State;)Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPrivateKey;

    move-result-object v1

    invoke-static {v1}, Lio/olvid/engine/crypto/Suite;->getPublicKeyEncryption(Lio/olvid/engine/datatypes/key/CryptographicKey;)Lio/olvid/engine/crypto/PublicKeyEncryption;

    move-result-object v1

    .line 952
    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$RecoverK1AndSendK2AndCreateChannelStep;->startState:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK1State;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK1State;->access$1000(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK1State;)Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPrivateKey;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$RecoverK1AndSendK2AndCreateChannelStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$BobEphemeralKeyAndK1Message;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$BobEphemeralKeyAndK1Message;->access$1100(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$BobEphemeralKeyAndK1Message;)Lio/olvid/engine/datatypes/EncryptedBytes;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lio/olvid/engine/crypto/PublicKeyEncryption;->kemDecrypt(Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPrivateKey;Lio/olvid/engine/datatypes/EncryptedBytes;)Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "Could not recover k1."

    .line 954
    invoke-static {v0}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 955
    new-instance v0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$CancelledState;

    invoke-direct {v0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$CancelledState;-><init>()V

    return-object v0

    .line 959
    :cond_0
    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$RecoverK1AndSendK2AndCreateChannelStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$BobEphemeralKeyAndK1Message;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$BobEphemeralKeyAndK1Message;->access$1200(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$BobEphemeralKeyAndK1Message;)Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;

    move-result-object v2

    invoke-static {v2}, Lio/olvid/engine/crypto/Suite;->getPublicKeyEncryption(Lio/olvid/engine/datatypes/key/CryptographicKey;)Lio/olvid/engine/crypto/PublicKeyEncryption;

    move-result-object v2

    .line 960
    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$RecoverK1AndSendK2AndCreateChannelStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$BobEphemeralKeyAndK1Message;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$BobEphemeralKeyAndK1Message;->access$1200(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$BobEphemeralKeyAndK1Message;)Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;

    move-result-object v3

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$RecoverK1AndSendK2AndCreateChannelStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lio/olvid/engine/crypto/PublicKeyEncryption;->kemEncrypt(Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/containers/CiphertextAndKey;

    move-result-object v2

    .line 961
    invoke-virtual {v2}, Lio/olvid/engine/datatypes/containers/CiphertextAndKey;->getKey()Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    move-result-object v3

    .line 962
    invoke-virtual {v2}, Lio/olvid/engine/datatypes/containers/CiphertextAndKey;->getCiphertext()Lio/olvid/engine/datatypes/EncryptedBytes;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v3, v4, v1

    .line 964
    invoke-static {v4}, Lio/olvid/engine/datatypes/Seed;->of([Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;)Lio/olvid/engine/datatypes/Seed;

    move-result-object v11

    .line 966
    iget-object v6, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v7, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    .line 968
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$RecoverK1AndSendK2AndCreateChannelStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v8

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$RecoverK1AndSendK2AndCreateChannelStep;->startState:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK1State;

    .line 969
    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK1State;->access$1300(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK1State;)Lio/olvid/engine/datatypes/UID;

    move-result-object v9

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$RecoverK1AndSendK2AndCreateChannelStep;->startState:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK1State;

    .line 970
    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK1State;->access$1400(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK1State;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v10

    const/4 v12, 0x0

    .line 966
    invoke-interface/range {v6 .. v12}, Lio/olvid/engine/metamanager/ChannelDelegate;->createObliviousChannel(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Seed;I)V

    .line 975
    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$RecoverK1AndSendK2AndCreateChannelStep;->startState:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK1State;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK1State;->access$1400(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK1State;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    new-array v1, v1, [Lio/olvid/engine/datatypes/UID;

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$RecoverK1AndSendK2AndCreateChannelStep;->startState:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK1State;

    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK1State;->access$1300(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK1State;)Lio/olvid/engine/datatypes/UID;

    move-result-object v4

    aput-object v4, v1, v5

    invoke-static {v3, v1}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createAsymmetricChannelInfo(Lio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$RecoverK1AndSendK2AndCreateChannelStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v1

    .line 976
    new-instance v3, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$K2Message;

    invoke-direct {v3, v1, v2}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$K2Message;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Lio/olvid/engine/datatypes/EncryptedBytes;)V

    invoke-virtual {v3}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$K2Message;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object v1

    .line 977
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v0, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$RecoverK1AndSendK2AndCreateChannelStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v3

    invoke-interface {v2, v0, v1, v3}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 979
    new-instance v0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForFirstAckState;

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$RecoverK1AndSendK2AndCreateChannelStep;->startState:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK1State;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK1State;->access$1400(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK1State;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$RecoverK1AndSendK2AndCreateChannelStep;->startState:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK1State;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK1State;->access$1300(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK1State;)Lio/olvid/engine/datatypes/UID;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForFirstAckState;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;)V

    return-object v0
.end method
