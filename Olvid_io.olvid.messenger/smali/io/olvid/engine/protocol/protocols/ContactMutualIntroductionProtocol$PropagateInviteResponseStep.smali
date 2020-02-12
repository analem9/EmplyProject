.class public Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateInviteResponseStep;
.super Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;
.source "ContactMutualIntroductionProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PropagateInviteResponseStep"
.end annotation


# instance fields
.field private final receivedMessage:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$DialogAcceptMediatorInviteMessage;

.field private final startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$DialogAcceptMediatorInviteMessage;Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 884
    invoke-virtual {p3}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    invoke-static {}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->createLocalChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;)V

    .line 885
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateInviteResponseStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;

    .line 886
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateInviteResponseStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$DialogAcceptMediatorInviteMessage;

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

    .line 891
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateInviteResponseStep;->getProtocolManagerSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0

    .line 893
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateInviteResponseStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;->access$700(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;)Ljava/util/UUID;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateInviteResponseStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$DialogAcceptMediatorInviteMessage;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$DialogAcceptMediatorInviteMessage;->access$900(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$DialogAcceptMediatorInviteMessage;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v0, "ObvDialog uuid mismatch in DialogAcceptMediatorInviteMessage."

    .line 894
    invoke-static {v0}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    return-object v2

    .line 899
    :cond_0
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateInviteResponseStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;

    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;->access$500(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateInviteResponseStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v5

    invoke-interface {v1, v3, v4, v5}, Lio/olvid/engine/metamanager/IdentityDelegate;->getContactIdentityTrustLevel(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/TrustLevel;

    move-result-object v1

    .line 900
    sget-object v3, Lio/olvid/engine/datatypes/Constants;->USER_CONFIRMATION_TRUST_LEVEL_THRESHOLD:Lio/olvid/engine/datatypes/TrustLevel;

    invoke-virtual {v1, v3}, Lio/olvid/engine/datatypes/TrustLevel;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_1

    const-string v0, "Received a DialogAcceptMediatorInviteMessage for a invitation by a mediator with a TrustLevel too low."

    .line 901
    invoke-static {v0}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    return-object v2

    .line 907
    :cond_1
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateInviteResponseStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lio/olvid/engine/metamanager/IdentityDelegate;->getOtherDeviceUidsOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_2

    .line 909
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateInviteResponseStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    invoke-static {v1}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createAllOwnedConfirmedObliviousChannelsInfo(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateInviteResponseStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v3

    .line 910
    new-instance v1, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateConfirmationMessage;

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateInviteResponseStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$DialogAcceptMediatorInviteMessage;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$DialogAcceptMediatorInviteMessage;->access$1000(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$DialogAcceptMediatorInviteMessage;)Z

    move-result v4

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateInviteResponseStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;->access$600(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v5

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateInviteResponseStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;->access$800(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;)Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateInviteResponseStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;->access$500(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v7

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateConfirmationMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;ZLio/olvid/engine/datatypes/Identity;Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;)V

    invoke-virtual {v1}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateConfirmationMessage;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object v1

    .line 911
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateInviteResponseStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v4

    invoke-interface {v2, v3, v1, v4}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 915
    :cond_2
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateInviteResponseStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$DialogAcceptMediatorInviteMessage;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$DialogAcceptMediatorInviteMessage;->access$1000(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$DialogAcceptMediatorInviteMessage;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 918
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateInviteResponseStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateInviteResponseStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;->access$800(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateInviteResponseStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;->access$600(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateInviteResponseStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;

    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;->access$500(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lio/olvid/engine/datatypes/containers/DialogType;->createMediatorInviteAcceptedDialog(Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/DialogType;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateInviteResponseStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;->access$700(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;)Ljava/util/UUID;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createUserInterfaceChannelInfo(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/DialogType;Ljava/util/UUID;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateInviteResponseStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v1

    .line 919
    new-instance v2, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;

    invoke-direct {v2, v1}, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    invoke-virtual {v2}, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;->generateChannelDialogMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelDialogMessageToSend;

    move-result-object v1

    .line 920
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateInviteResponseStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v4

    invoke-interface {v2, v3, v1, v4}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 924
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateInviteResponseStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lio/olvid/engine/metamanager/IdentityDelegate;->getDeviceUidsOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    .line 926
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    .line 928
    invoke-static {}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol;->access$300()[B

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Lio/olvid/engine/datatypes/Identity;

    const/4 v6, 0x0

    iget-object v7, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateInviteResponseStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;

    .line 929
    invoke-static {v7}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;->access$500(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateInviteResponseStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;

    invoke-static {v7}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;->access$600(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateInviteResponseStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v7

    aput-object v7, v5, v6

    .line 930
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateInviteResponseStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v6

    .line 931
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateInviteResponseStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v7

    .line 926
    invoke-interface/range {v2 .. v7}, Lio/olvid/engine/metamanager/IdentityDelegate;->signIdentities(Lio/olvid/engine/datatypes/Session;[B[Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/crypto/PRNGService;)[B

    move-result-object v2

    .line 935
    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateInviteResponseStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;->access$600(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    invoke-static {v3}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createAsymmetricBroadcastChannelInfo(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateInviteResponseStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v3

    .line 936
    new-instance v4, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$NotifyContactOfAcceptedInvitationMessage;

    invoke-direct {v4, v3, v1, v2}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$NotifyContactOfAcceptedInvitationMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;[Lio/olvid/engine/datatypes/UID;[B)V

    invoke-virtual {v4}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$NotifyContactOfAcceptedInvitationMessage;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object v1

    .line 937
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v0, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateInviteResponseStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v3

    invoke-interface {v2, v0, v1, v3}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 941
    new-instance v0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateInviteResponseStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;->access$600(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v5

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateInviteResponseStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;->access$800(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;)Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateInviteResponseStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;->access$500(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v7

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateInviteResponseStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;->access$700(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;)Ljava/util/UUID;

    move-result-object v8

    const/4 v9, 0x2

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;-><init>(Lio/olvid/engine/datatypes/Identity;Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;Ljava/util/UUID;I)V

    return-object v0

    .line 945
    :cond_3
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateInviteResponseStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    invoke-static {}, Lio/olvid/engine/datatypes/containers/DialogType;->createDeleteDialog()Lio/olvid/engine/datatypes/containers/DialogType;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateInviteResponseStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;->access$700(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;)Ljava/util/UUID;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createUserInterfaceChannelInfo(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/DialogType;Ljava/util/UUID;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateInviteResponseStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v1

    .line 946
    new-instance v2, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;

    invoke-direct {v2, v1}, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    invoke-virtual {v2}, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;->generateChannelDialogMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelDialogMessageToSend;

    move-result-object v1

    .line 947
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v0, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateInviteResponseStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v3

    invoke-interface {v2, v0, v1, v3}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 950
    new-instance v0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationRejectedState;

    invoke-direct {v0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationRejectedState;-><init>()V

    return-object v0
.end method
