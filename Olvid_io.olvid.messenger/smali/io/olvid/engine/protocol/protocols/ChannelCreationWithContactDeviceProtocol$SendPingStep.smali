.class public Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingStep;
.super Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;
.source "ChannelCreationWithContactDeviceProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SendPingStep"
.end annotation


# instance fields
.field private final receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$InitialMessage;

.field private final startState:Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$InitialMessage;Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 646
    invoke-virtual {p3}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    invoke-static {}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->createLocalChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;)V

    .line 647
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingStep;->startState:Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;

    .line 648
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$InitialMessage;

    return-void
.end method


# virtual methods
.method public executeStep()Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 653
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingStep;->getProtocolManagerSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0

    .line 656
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$InitialMessage;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$InitialMessage;->access$000(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$InitialMessage;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lio/olvid/engine/metamanager/IdentityDelegate;->isIdentityAContactIdentityOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "Trying to run a ChannelCreationWithContactDeviceProtocol with an untrusted ContactIdentity"

    .line 657
    invoke-static {v0}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    .line 658
    new-instance v0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$CancelledState;

    invoke-direct {v0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$CancelledState;-><init>()V

    return-object v0

    .line 662
    :cond_0
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$InitialMessage;

    .line 664
    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$InitialMessage;->access$100(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$InitialMessage;)Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$InitialMessage;

    .line 665
    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$InitialMessage;->access$000(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$InitialMessage;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    .line 666
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    .line 662
    invoke-static {v0, v1, v2, v3}, Lio/olvid/engine/protocol/databases/ChannelCreationProtocolInstance;->get(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/protocol/databases/ChannelCreationProtocolInstance;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 669
    invoke-virtual {v1}, Lio/olvid/engine/protocol/databases/ChannelCreationProtocolInstance;->delete()V

    .line 670
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->protocolDelegate:Lio/olvid/engine/metamanager/ProtocolDelegate;

    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1}, Lio/olvid/engine/protocol/databases/ChannelCreationProtocolInstance;->getProtocolInstanceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    invoke-interface {v2, v3, v1, v4}, Lio/olvid/engine/metamanager/ProtocolDelegate;->abortProtocol(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;)V

    .line 674
    :cond_1
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    .line 676
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$InitialMessage;

    .line 677
    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$InitialMessage;->access$100(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$InitialMessage;)Lio/olvid/engine/datatypes/UID;

    move-result-object v4

    iget-object v5, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$InitialMessage;

    .line 678
    invoke-static {v5}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$InitialMessage;->access$000(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$InitialMessage;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v5

    .line 674
    invoke-interface {v1, v2, v3, v4, v5}, Lio/olvid/engine/metamanager/ChannelDelegate;->deleteObliviousChannelIfItExists(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;)V

    .line 681
    invoke-static {}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol;->access$200()[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x40

    new-array v4, v1, [B

    .line 682
    invoke-static {}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol;->access$200()[B

    move-result-object v1

    invoke-static {}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol;->access$200()[B

    move-result-object v2

    array-length v2, v2

    const/4 v8, 0x0

    invoke-static {v1, v8, v4, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 683
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$InitialMessage;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$InitialMessage;->access$100(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$InitialMessage;)Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v1

    invoke-static {}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol;->access$200()[B

    move-result-object v2

    array-length v2, v2

    const/16 v3, 0x20

    invoke-static {v1, v8, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 684
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Lio/olvid/engine/metamanager/IdentityDelegate;->getCurrentDeviceUidOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    if-nez v1, :cond_2

    .line 686
    new-instance v0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$CancelledState;

    invoke-direct {v0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$CancelledState;-><init>()V

    return-object v0

    .line 688
    :cond_2
    invoke-virtual {v1}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    invoke-static {}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol;->access$200()[B

    move-result-object v5

    array-length v5, v5

    add-int/2addr v5, v3

    invoke-static {v2, v8, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 691
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const/4 v5, 0x2

    new-array v5, v5, [Lio/olvid/engine/datatypes/Identity;

    iget-object v6, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$InitialMessage;

    .line 694
    invoke-static {v6}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$InitialMessage;->access$000(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$InitialMessage;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v6

    const/4 v9, 0x1

    aput-object v6, v5, v9

    .line 695
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v6

    .line 696
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v7

    .line 691
    invoke-interface/range {v2 .. v7}, Lio/olvid/engine/metamanager/IdentityDelegate;->signIdentities(Lio/olvid/engine/datatypes/Session;[B[Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/crypto/PRNGService;)[B

    move-result-object v2

    .line 700
    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$InitialMessage;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$InitialMessage;->access$000(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$InitialMessage;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    new-array v4, v9, [Lio/olvid/engine/datatypes/UID;

    iget-object v5, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$InitialMessage;

    invoke-static {v5}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$InitialMessage;->access$100(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$InitialMessage;)Lio/olvid/engine/datatypes/UID;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createAsymmetricChannelInfo(Lio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v3

    .line 701
    new-instance v4, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v5

    invoke-direct {v4, v3, v5, v1, v2}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;[B)V

    invoke-virtual {v4}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object v1

    .line 702
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v0, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v3

    invoke-interface {v2, v0, v1, v3}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 704
    new-instance v0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingSentState;

    invoke-direct {v0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingSentState;-><init>()V

    return-object v0
.end method
