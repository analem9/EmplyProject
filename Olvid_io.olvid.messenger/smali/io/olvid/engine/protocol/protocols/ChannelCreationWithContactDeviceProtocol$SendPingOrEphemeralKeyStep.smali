.class public Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingOrEphemeralKeyStep;
.super Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;
.source "ChannelCreationWithContactDeviceProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SendPingOrEphemeralKeyStep"
.end annotation


# instance fields
.field private final receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;

.field private final startState:Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 716
    invoke-virtual {p3}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    invoke-static {}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->createAsymmetricChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;)V

    .line 717
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingOrEphemeralKeyStep;->startState:Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;

    .line 718
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingOrEphemeralKeyStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;

    return-void
.end method


# virtual methods
.method public executeStep()Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 723
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingOrEphemeralKeyStep;->getProtocolManagerSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0

    .line 726
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingOrEphemeralKeyStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;->access$300(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingOrEphemeralKeyStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lio/olvid/engine/metamanager/IdentityDelegate;->isIdentityAContactIdentityOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "Received a ping for a ChannelCreationWithContactDeviceProtocol from an untrusted ContactIdentity"

    .line 727
    invoke-static {v0}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    .line 728
    new-instance v0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$CancelledState;

    invoke-direct {v0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$CancelledState;-><init>()V

    return-object v0

    .line 732
    :cond_0
    invoke-static {}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol;->access$200()[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x40

    new-array v4, v1, [B

    .line 733
    invoke-static {}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol;->access$200()[B

    move-result-object v1

    invoke-static {}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol;->access$200()[B

    move-result-object v2

    array-length v2, v2

    const/4 v8, 0x0

    invoke-static {v1, v8, v4, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 734
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingOrEphemeralKeyStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lio/olvid/engine/metamanager/IdentityDelegate;->getCurrentDeviceUidOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/UID;

    move-result-object v12

    if-nez v12, :cond_1

    .line 736
    new-instance v0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$CancelledState;

    invoke-direct {v0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$CancelledState;-><init>()V

    return-object v0

    .line 738
    :cond_1
    invoke-virtual {v12}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v1

    invoke-static {}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol;->access$200()[B

    move-result-object v2

    array-length v2, v2

    const/16 v3, 0x20

    invoke-static {v1, v8, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 739
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingOrEphemeralKeyStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;->access$400(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;)Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v1

    invoke-static {}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol;->access$200()[B

    move-result-object v2

    array-length v2, v2

    add-int/2addr v2, v3

    invoke-static {v1, v8, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 741
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    const/4 v2, 0x2

    new-array v5, v2, [Lio/olvid/engine/datatypes/Identity;

    .line 743
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingOrEphemeralKeyStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v6

    aput-object v6, v5, v8

    iget-object v6, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingOrEphemeralKeyStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;

    invoke-static {v6}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;->access$300(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v6

    const/4 v9, 0x1

    aput-object v6, v5, v9

    iget-object v6, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingOrEphemeralKeyStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;

    .line 744
    invoke-static {v6}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;->access$300(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v6

    iget-object v7, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingOrEphemeralKeyStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;

    .line 745
    invoke-static {v7}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;->access$500(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;)[B

    move-result-object v7

    .line 741
    invoke-interface {v1, v4, v5, v6, v7}, Lio/olvid/engine/metamanager/IdentityDelegate;->verifyIdentitiesSignature([B[Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;[B)Z

    move-result v1

    if-nez v1, :cond_2

    .line 749
    new-instance v0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$CancelledState;

    invoke-direct {v0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$CancelledState;-><init>()V

    return-object v0

    .line 755
    :cond_2
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingOrEphemeralKeyStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;

    .line 757
    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;->access$400(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;)Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    iget-object v5, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingOrEphemeralKeyStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;

    .line 758
    invoke-static {v5}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;->access$300(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v5

    .line 759
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingOrEphemeralKeyStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v6

    .line 755
    invoke-static {v0, v1, v5, v6}, Lio/olvid/engine/protocol/databases/ChannelCreationProtocolInstance;->get(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/protocol/databases/ChannelCreationProtocolInstance;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 762
    invoke-virtual {v1}, Lio/olvid/engine/protocol/databases/ChannelCreationProtocolInstance;->delete()V

    .line 763
    iget-object v5, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->protocolDelegate:Lio/olvid/engine/metamanager/ProtocolDelegate;

    iget-object v6, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1}, Lio/olvid/engine/protocol/databases/ChannelCreationProtocolInstance;->getProtocolInstanceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingOrEphemeralKeyStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v7

    invoke-interface {v5, v6, v1, v7}, Lio/olvid/engine/metamanager/ProtocolDelegate;->abortProtocol(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;)V

    .line 767
    :cond_3
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v5, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    .line 769
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingOrEphemeralKeyStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v6

    iget-object v7, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingOrEphemeralKeyStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;

    .line 770
    invoke-static {v7}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;->access$400(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;)Lio/olvid/engine/datatypes/UID;

    move-result-object v7

    iget-object v10, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingOrEphemeralKeyStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;

    .line 771
    invoke-static {v10}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;->access$300(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v10

    .line 767
    invoke-interface {v1, v5, v6, v7, v10}, Lio/olvid/engine/metamanager/ChannelDelegate;->deleteObliviousChannelIfItExists(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;)V

    .line 779
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingOrEphemeralKeyStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;->access$400(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;)Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v1

    invoke-static {}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol;->access$200()[B

    move-result-object v5

    array-length v5, v5

    invoke-static {v1, v8, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 780
    invoke-virtual {v12}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v1

    invoke-static {}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol;->access$200()[B

    move-result-object v5

    array-length v5, v5

    add-int/2addr v5, v3

    invoke-static {v1, v8, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 782
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    new-array v5, v2, [Lio/olvid/engine/datatypes/Identity;

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingOrEphemeralKeyStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;

    .line 785
    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;->access$300(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    aput-object v2, v5, v8

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingOrEphemeralKeyStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    aput-object v2, v5, v9

    .line 786
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingOrEphemeralKeyStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v6

    .line 787
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingOrEphemeralKeyStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v7

    move-object v2, v1

    .line 782
    invoke-interface/range {v2 .. v7}, Lio/olvid/engine/metamanager/IdentityDelegate;->signIdentities(Lio/olvid/engine/datatypes/Session;[B[Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/crypto/PRNGService;)[B

    move-result-object v13

    .line 794
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingOrEphemeralKeyStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;->access$400(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;)Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    invoke-virtual {v12, v1}, Lio/olvid/engine/datatypes/UID;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_4

    .line 798
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingOrEphemeralKeyStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;->access$300(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    new-array v2, v9, [Lio/olvid/engine/datatypes/UID;

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingOrEphemeralKeyStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;->access$400(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;)Lio/olvid/engine/datatypes/UID;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createAsymmetricChannelInfo(Lio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingOrEphemeralKeyStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v1

    .line 799
    new-instance v2, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingOrEphemeralKeyStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    invoke-direct {v2, v1, v3, v12, v13}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;[B)V

    invoke-virtual {v2}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object v1

    .line 800
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v0, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingOrEphemeralKeyStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v3

    invoke-interface {v2, v0, v1, v3}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 802
    new-instance v0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingSentState;

    invoke-direct {v0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingSentState;-><init>()V

    return-object v0

    .line 806
    :cond_4
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingOrEphemeralKeyStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;

    .line 808
    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;->access$400(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;)Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingOrEphemeralKeyStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;

    .line 809
    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;->access$300(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    .line 810
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingOrEphemeralKeyStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    .line 811
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingOrEphemeralKeyStep;->getProtocolInstanceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v4

    .line 806
    invoke-static {v0, v1, v2, v3, v4}, Lio/olvid/engine/protocol/databases/ChannelCreationProtocolInstance;->create(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/protocol/databases/ChannelCreationProtocolInstance;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 817
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingOrEphemeralKeyStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Identity;->getEncryptionPublicKey()Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;->getAlgorithmImplementation()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingOrEphemeralKeyStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v2

    invoke-static {v1, v2}, Lio/olvid/engine/crypto/Suite;->generateEncryptionKeyPair(Ljava/lang/Byte;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/key/asymmetric/KeyPair;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 822
    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingOrEphemeralKeyStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;->access$300(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    new-array v3, v9, [Lio/olvid/engine/datatypes/UID;

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingOrEphemeralKeyStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;

    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;->access$400(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;)Lio/olvid/engine/datatypes/UID;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createAsymmetricChannelInfo(Lio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingOrEphemeralKeyStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v10

    .line 823
    new-instance v2, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingOrEphemeralKeyStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v11

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/key/asymmetric/KeyPair;->getPublicKey()Lio/olvid/engine/datatypes/key/asymmetric/PublicKey;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;

    move-object v9, v2

    invoke-direct/range {v9 .. v14}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;[BLio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;)V

    invoke-virtual {v2}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object v2

    .line 824
    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v0, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingOrEphemeralKeyStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v4

    invoke-interface {v3, v0, v2, v4}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 826
    new-instance v0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK1State;

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingOrEphemeralKeyStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;->access$300(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$SendPingOrEphemeralKeyStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;->access$400(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$PingMessage;)Lio/olvid/engine/datatypes/UID;

    move-result-object v3

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/key/asymmetric/KeyPair;->getPrivateKey()Lio/olvid/engine/datatypes/key/asymmetric/PrivateKey;

    move-result-object v1

    check-cast v1, Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPrivateKey;

    invoke-direct {v0, v2, v3, v1}, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK1State;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPrivateKey;)V

    return-object v0

    .line 819
    :cond_5
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    .line 814
    :cond_6
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
.end method
