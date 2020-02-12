.class public Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateNotificationAddTrustAndSendAckStep;
.super Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;
.source "ContactMutualIntroductionProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PropagateNotificationAddTrustAndSendAckStep"
.end annotation


# instance fields
.field private final receivedMessage:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$NotifyContactOfAcceptedInvitationMessage;

.field private final startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$NotifyContactOfAcceptedInvitationMessage;Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1000
    invoke-virtual {p3}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    invoke-static {}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->createAsymmetricChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;)V

    .line 1001
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateNotificationAddTrustAndSendAckStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;

    .line 1002
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateNotificationAddTrustAndSendAckStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$NotifyContactOfAcceptedInvitationMessage;

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

    .line 1007
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateNotificationAddTrustAndSendAckStep;->getProtocolManagerSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0

    .line 1009
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    .line 1010
    invoke-static {}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol;->access$300()[B

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Lio/olvid/engine/datatypes/Identity;

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateNotificationAddTrustAndSendAckStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;

    .line 1011
    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;->access$1500(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateNotificationAddTrustAndSendAckStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateNotificationAddTrustAndSendAckStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;

    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;->access$1600(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v3, v6

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateNotificationAddTrustAndSendAckStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;

    .line 1012
    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;->access$1600(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    iget-object v6, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateNotificationAddTrustAndSendAckStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$NotifyContactOfAcceptedInvitationMessage;

    .line 1013
    invoke-static {v6}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$NotifyContactOfAcceptedInvitationMessage;->access$1700(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$NotifyContactOfAcceptedInvitationMessage;)[B

    move-result-object v6

    .line 1009
    invoke-interface {v1, v2, v3, v4, v6}, Lio/olvid/engine/metamanager/IdentityDelegate;->verifyIdentitiesSignature([B[Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;[B)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "Received a NotifyContactOfAcceptedInvitationMessage with an invalid signature"

    .line 1017
    invoke-static {v0}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 1022
    :cond_0
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateNotificationAddTrustAndSendAckStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;->access$1600(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateNotificationAddTrustAndSendAckStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lio/olvid/engine/metamanager/IdentityDelegate;->isIdentityAContactIdentityOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1023
    iget-object v6, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v7, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateNotificationAddTrustAndSendAckStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;->access$1600(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v8

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateNotificationAddTrustAndSendAckStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;->access$1800(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateNotificationAddTrustAndSendAckStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateNotificationAddTrustAndSendAckStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;->access$1500(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lio/olvid/engine/datatypes/containers/TrustOrigin;->createIntroductionTrustOrigin(JLio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/TrustOrigin;

    move-result-object v11

    invoke-interface/range {v6 .. v11}, Lio/olvid/engine/metamanager/IdentityDelegate;->addContactIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/TrustOrigin;)V

    goto :goto_0

    .line 1025
    :cond_1
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateNotificationAddTrustAndSendAckStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;->access$1600(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateNotificationAddTrustAndSendAckStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateNotificationAddTrustAndSendAckStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;

    invoke-static {v8}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;->access$1500(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lio/olvid/engine/datatypes/containers/TrustOrigin;->createIntroductionTrustOrigin(JLio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/TrustOrigin;

    move-result-object v6

    invoke-interface {v1, v2, v3, v4, v6}, Lio/olvid/engine/metamanager/IdentityDelegate;->addTrustOriginToContact(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/TrustOrigin;)V

    .line 1027
    :goto_0
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateNotificationAddTrustAndSendAckStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$NotifyContactOfAcceptedInvitationMessage;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$NotifyContactOfAcceptedInvitationMessage;->access$1900(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$NotifyContactOfAcceptedInvitationMessage;)[Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    array-length v2, v1

    :goto_1
    if-ge v5, v2, :cond_2

    aget-object v3, v1, v5

    .line 1028
    iget-object v4, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v6, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v7, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateNotificationAddTrustAndSendAckStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;

    invoke-static {v7}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;->access$1600(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v7

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateNotificationAddTrustAndSendAckStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v8

    invoke-interface {v4, v6, v3, v7, v8}, Lio/olvid/engine/metamanager/IdentityDelegate;->addDeviceForContactIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1034
    :cond_2
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateNotificationAddTrustAndSendAckStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lio/olvid/engine/metamanager/IdentityDelegate;->getOtherDeviceUidsOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_3

    .line 1036
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateNotificationAddTrustAndSendAckStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    invoke-static {v1}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createAllOwnedConfirmedObliviousChannelsInfo(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateNotificationAddTrustAndSendAckStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v1

    .line 1037
    new-instance v2, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateNotificationMessage;

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateNotificationAddTrustAndSendAckStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$NotifyContactOfAcceptedInvitationMessage;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$NotifyContactOfAcceptedInvitationMessage;->access$1900(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$NotifyContactOfAcceptedInvitationMessage;)[Lio/olvid/engine/datatypes/UID;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateNotificationMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;[Lio/olvid/engine/datatypes/UID;)V

    invoke-virtual {v2}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateNotificationMessage;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object v1

    .line 1038
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateNotificationAddTrustAndSendAckStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v4

    invoke-interface {v2, v3, v1, v4}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 1044
    :cond_3
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateNotificationAddTrustAndSendAckStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;->access$1600(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateNotificationAddTrustAndSendAckStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$NotifyContactOfAcceptedInvitationMessage;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$NotifyContactOfAcceptedInvitationMessage;->access$1900(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$NotifyContactOfAcceptedInvitationMessage;)[Lio/olvid/engine/datatypes/UID;

    move-result-object v2

    invoke-static {v1, v2}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createAsymmetricChannelInfo(Lio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateNotificationAddTrustAndSendAckStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v1

    .line 1045
    new-instance v2, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$AckMessage;

    invoke-direct {v2, v1}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$AckMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    invoke-virtual {v2}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$AckMessage;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object v1

    .line 1046
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v0, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateNotificationAddTrustAndSendAckStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v3

    invoke-interface {v2, v0, v1, v3}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 1049
    new-instance v0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$WaitingForAckState;

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateNotificationAddTrustAndSendAckStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;->access$1600(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v5

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateNotificationAddTrustAndSendAckStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;->access$1800(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;)Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateNotificationAddTrustAndSendAckStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;->access$1500(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v7

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateNotificationAddTrustAndSendAckStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;->access$2000(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;)Ljava/util/UUID;

    move-result-object v8

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateNotificationAddTrustAndSendAckStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;->access$2100(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;)I

    move-result v9

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$WaitingForAckState;-><init>(Lio/olvid/engine/datatypes/Identity;Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;Ljava/util/UUID;I)V

    return-object v0
.end method
