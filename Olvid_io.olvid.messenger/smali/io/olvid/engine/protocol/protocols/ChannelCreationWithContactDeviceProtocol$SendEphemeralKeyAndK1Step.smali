.class public Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendEphemeralKeyAndK1Step;
.super Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;
.source "ChannelCreationWithContactDeviceProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SendEphemeralKeyAndK1Step"
.end annotation


# instance fields
.field private final receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;

.field private final startState:Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 838
    invoke-virtual {p3}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    invoke-static {}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->createAsymmetricChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;)V

    .line 839
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendEphemeralKeyAndK1Step;->startState:Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;

    .line 840
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendEphemeralKeyAndK1Step;->receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;

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

    .line 845
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendEphemeralKeyAndK1Step;->getProtocolManagerSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0

    .line 849
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendEphemeralKeyAndK1Step;->receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;->access$600(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendEphemeralKeyAndK1Step;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lio/olvid/engine/metamanager/IdentityDelegate;->isIdentityAContactIdentityOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "Received a ping for a ChannelCreationWithContactDeviceProtocol from an untrusted ContactIdentity"

    .line 850
    invoke-static {v0}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    .line 851
    new-instance v0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$CancelledState;

    invoke-direct {v0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$CancelledState;-><init>()V

    return-object v0

    .line 855
    :cond_0
    invoke-static {}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol;->access$200()[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x40

    new-array v1, v1, [B

    .line 856
    invoke-static {}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol;->access$200()[B

    move-result-object v2

    invoke-static {}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol;->access$200()[B

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 857
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendEphemeralKeyAndK1Step;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Lio/olvid/engine/metamanager/IdentityDelegate;->getCurrentDeviceUidOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/UID;

    move-result-object v2

    if-nez v2, :cond_1

    .line 859
    new-instance v0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$CancelledState;

    invoke-direct {v0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$CancelledState;-><init>()V

    return-object v0

    .line 861
    :cond_1
    invoke-virtual {v2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    invoke-static {}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol;->access$200()[B

    move-result-object v3

    array-length v3, v3

    const/16 v5, 0x20

    invoke-static {v2, v4, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 862
    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendEphemeralKeyAndK1Step;->receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;->access$700(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;)Lio/olvid/engine/datatypes/UID;

    move-result-object v2

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    invoke-static {}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol;->access$200()[B

    move-result-object v3

    array-length v3, v3

    add-int/2addr v3, v5

    invoke-static {v2, v4, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 864
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    const/4 v3, 0x2

    new-array v5, v3, [Lio/olvid/engine/datatypes/Identity;

    .line 866
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendEphemeralKeyAndK1Step;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v6

    aput-object v6, v5, v4

    const/4 v6, 0x1

    iget-object v7, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendEphemeralKeyAndK1Step;->receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;

    invoke-static {v7}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;->access$600(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v7

    aput-object v7, v5, v6

    iget-object v6, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendEphemeralKeyAndK1Step;->receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;

    .line 867
    invoke-static {v6}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;->access$600(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v6

    iget-object v7, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendEphemeralKeyAndK1Step;->receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;

    .line 868
    invoke-static {v7}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;->access$800(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;)[B

    move-result-object v7

    .line 864
    invoke-interface {v2, v1, v5, v6, v7}, Lio/olvid/engine/metamanager/IdentityDelegate;->verifyIdentitiesSignature([B[Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;[B)Z

    move-result v1

    if-nez v1, :cond_2

    .line 872
    new-instance v0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$CancelledState;

    invoke-direct {v0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$CancelledState;-><init>()V

    return-object v0

    .line 879
    :cond_2
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendEphemeralKeyAndK1Step;->receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;

    .line 881
    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;->access$700(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;)Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendEphemeralKeyAndK1Step;->receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;

    .line 882
    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;->access$600(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    .line 883
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendEphemeralKeyAndK1Step;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v5

    .line 879
    invoke-static {v0, v1, v2, v5}, Lio/olvid/engine/protocol/databases/ChannelCreationProtocolInstance;->get(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/protocol/databases/ChannelCreationProtocolInstance;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 887
    invoke-virtual {v1}, Lio/olvid/engine/protocol/databases/ChannelCreationProtocolInstance;->delete()V

    .line 888
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->protocolDelegate:Lio/olvid/engine/metamanager/ProtocolDelegate;

    iget-object v5, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1}, Lio/olvid/engine/protocol/databases/ChannelCreationProtocolInstance;->getProtocolInstanceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendEphemeralKeyAndK1Step;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v6

    invoke-interface {v2, v5, v1, v6}, Lio/olvid/engine/metamanager/ProtocolDelegate;->abortProtocol(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;)V

    .line 891
    new-instance v1, Lio/olvid/engine/datatypes/UID;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendEphemeralKeyAndK1Step;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/olvid/engine/datatypes/UID;-><init>(Lio/olvid/engine/crypto/PRNG;)V

    .line 892
    new-instance v2, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    .line 893
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendEphemeralKeyAndK1Step;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v5

    invoke-static {v5}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createLocalChannelInfo(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v5

    invoke-direct {v2, v5, v3, v1, v4}, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;-><init>(Lio/olvid/engine/datatypes/containers/SendChannelInfo;ILio/olvid/engine/datatypes/UID;Z)V

    .line 898
    new-instance v1, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$InitialMessage;

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendEphemeralKeyAndK1Step;->receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;->access$600(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendEphemeralKeyAndK1Step;->receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;

    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;->access$700(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;)Lio/olvid/engine/datatypes/UID;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$InitialMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;)V

    invoke-virtual {v1}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$InitialMessage;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object v1

    .line 899
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v0, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendEphemeralKeyAndK1Step;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v3

    invoke-interface {v2, v0, v1, v3}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 901
    new-instance v0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$CancelledState;

    invoke-direct {v0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$CancelledState;-><init>()V

    return-object v0

    .line 904
    :cond_3
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendEphemeralKeyAndK1Step;->receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;

    .line 906
    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;->access$700(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;)Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendEphemeralKeyAndK1Step;->receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;

    .line 907
    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;->access$600(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    .line 908
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendEphemeralKeyAndK1Step;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    .line 909
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendEphemeralKeyAndK1Step;->getProtocolInstanceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v4

    .line 904
    invoke-static {v0, v1, v2, v3, v4}, Lio/olvid/engine/protocol/databases/ChannelCreationProtocolInstance;->create(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/protocol/databases/ChannelCreationProtocolInstance;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 917
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendEphemeralKeyAndK1Step;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Identity;->getEncryptionPublicKey()Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;->getAlgorithmImplementation()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendEphemeralKeyAndK1Step;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v2

    invoke-static {v1, v2}, Lio/olvid/engine/crypto/Suite;->generateEncryptionKeyPair(Ljava/lang/Byte;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/key/asymmetric/KeyPair;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 923
    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendEphemeralKeyAndK1Step;->receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;->access$900(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;)Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;

    move-result-object v2

    invoke-static {v2}, Lio/olvid/engine/crypto/Suite;->getPublicKeyEncryption(Lio/olvid/engine/datatypes/key/CryptographicKey;)Lio/olvid/engine/crypto/PublicKeyEncryption;

    move-result-object v2

    .line 924
    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendEphemeralKeyAndK1Step;->receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;->access$900(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;)Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;

    move-result-object v3

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendEphemeralKeyAndK1Step;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lio/olvid/engine/crypto/PublicKeyEncryption;->kemEncrypt(Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/containers/CiphertextAndKey;

    move-result-object v2

    .line 925
    invoke-virtual {v2}, Lio/olvid/engine/datatypes/containers/CiphertextAndKey;->getKey()Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    move-result-object v3

    .line 926
    invoke-virtual {v2}, Lio/olvid/engine/datatypes/containers/CiphertextAndKey;->getCiphertext()Lio/olvid/engine/datatypes/EncryptedBytes;

    move-result-object v2

    .line 928
    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendEphemeralKeyAndK1Step;->receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;

    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;->access$600(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    invoke-static {v4}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createAsymmetricBroadcastChannelInfo(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendEphemeralKeyAndK1Step;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v4

    .line 929
    new-instance v5, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$BobEphemeralKeyAndK1Message;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/key/asymmetric/KeyPair;->getPublicKey()Lio/olvid/engine/datatypes/key/asymmetric/PublicKey;

    move-result-object v6

    check-cast v6, Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;

    invoke-direct {v5, v4, v6, v2}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$BobEphemeralKeyAndK1Message;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;Lio/olvid/engine/datatypes/EncryptedBytes;)V

    invoke-virtual {v5}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$BobEphemeralKeyAndK1Message;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object v2

    .line 930
    iget-object v4, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v0, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendEphemeralKeyAndK1Step;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v5

    invoke-interface {v4, v0, v2, v5}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 932
    new-instance v0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK2State;

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendEphemeralKeyAndK1Step;->receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;->access$600(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendEphemeralKeyAndK1Step;->receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;

    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;->access$700(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;)Lio/olvid/engine/datatypes/UID;

    move-result-object v4

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/key/asymmetric/KeyPair;->getPrivateKey()Lio/olvid/engine/datatypes/key/asymmetric/PrivateKey;

    move-result-object v1

    check-cast v1, Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPrivateKey;

    invoke-direct {v0, v2, v4, v1, v3}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK2State;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPrivateKey;Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;)V

    return-object v0

    .line 919
    :cond_4
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    .line 912
    :cond_5
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
.end method
