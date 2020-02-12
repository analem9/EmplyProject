.class public Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$SendSeedAndPropagateConfirmationStep;
.super Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;
.source "TrustEstablishmentWithSasProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SendSeedAndPropagateConfirmationStep"
.end annotation


# instance fields
.field private final receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$BobDialogInvitationConfirmationMessage;

.field private final startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$BobDialogInvitationConfirmationMessage;Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1003
    invoke-virtual {p3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    invoke-static {}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->createLocalChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;)V

    .line 1004
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$SendSeedAndPropagateConfirmationStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;

    .line 1005
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$SendSeedAndPropagateConfirmationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$BobDialogInvitationConfirmationMessage;

    return-void
.end method


# virtual methods
.method public executeStep()Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1010
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$SendSeedAndPropagateConfirmationStep;->getProtocolManagerSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0

    .line 1012
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$SendSeedAndPropagateConfirmationStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;->access$1600(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;)Ljava/util/UUID;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$SendSeedAndPropagateConfirmationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$BobDialogInvitationConfirmationMessage;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$BobDialogInvitationConfirmationMessage;->access$1500(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$BobDialogInvitationConfirmationMessage;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "ObvDialog uuid mismatch in BobDialogInvitationConfirmationMessage."

    .line 1013
    invoke-static {v0}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 1019
    :cond_0
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$SendSeedAndPropagateConfirmationStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lio/olvid/engine/metamanager/IdentityDelegate;->getOtherDeviceUidsOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_1

    .line 1021
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$SendSeedAndPropagateConfirmationStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    invoke-static {v1}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createAllOwnedConfirmedObliviousChannelsInfo(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$SendSeedAndPropagateConfirmationStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v1

    .line 1022
    new-instance v2, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateConfirmationToBobDevicesMessage;

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$SendSeedAndPropagateConfirmationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$BobDialogInvitationConfirmationMessage;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$BobDialogInvitationConfirmationMessage;->access$1700(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$BobDialogInvitationConfirmationMessage;)Z

    move-result v3

    invoke-direct {v2, v1, v3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateConfirmationToBobDevicesMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Z)V

    invoke-virtual {v2}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateConfirmationToBobDevicesMessage;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object v1

    .line 1023
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$SendSeedAndPropagateConfirmationStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v4

    invoke-interface {v2, v3, v1, v4}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 1028
    :cond_1
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$SendSeedAndPropagateConfirmationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$BobDialogInvitationConfirmationMessage;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$BobDialogInvitationConfirmationMessage;->access$1700(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$BobDialogInvitationConfirmationMessage;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1030
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$SendSeedAndPropagateConfirmationStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    invoke-static {}, Lio/olvid/engine/datatypes/containers/DialogType;->createDeleteDialog()Lio/olvid/engine/datatypes/containers/DialogType;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$SendSeedAndPropagateConfirmationStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;->access$1600(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;)Ljava/util/UUID;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createUserInterfaceChannelInfo(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/DialogType;Ljava/util/UUID;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$SendSeedAndPropagateConfirmationStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v1

    .line 1031
    new-instance v2, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;

    invoke-direct {v2, v1}, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    invoke-virtual {v2}, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;->generateChannelDialogMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelDialogMessageToSend;

    move-result-object v1

    .line 1032
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v0, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$SendSeedAndPropagateConfirmationStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v3

    invoke-interface {v2, v0, v1, v3}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 1034
    new-instance v0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CancelledState;

    invoke-direct {v0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CancelledState;-><init>()V

    return-object v0

    .line 1039
    :cond_2
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$SendSeedAndPropagateConfirmationStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$SendSeedAndPropagateConfirmationStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;->access$1800(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$SendSeedAndPropagateConfirmationStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;->access$1900(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    invoke-static {v2, v3}, Lio/olvid/engine/datatypes/containers/DialogType;->createInviteAcceptedDialog(Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/DialogType;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$SendSeedAndPropagateConfirmationStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;->access$1600(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;)Ljava/util/UUID;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createUserInterfaceChannelInfo(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/DialogType;Ljava/util/UUID;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$SendSeedAndPropagateConfirmationStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v1

    .line 1040
    new-instance v2, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;

    invoke-direct {v2, v1}, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    invoke-virtual {v2}, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;->generateChannelDialogMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelDialogMessageToSend;

    move-result-object v1

    .line 1041
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$SendSeedAndPropagateConfirmationStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v4

    invoke-interface {v2, v3, v1, v4}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 1044
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$SendSeedAndPropagateConfirmationStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$SendSeedAndPropagateConfirmationStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;->access$2000(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;)[B

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lio/olvid/engine/metamanager/IdentityDelegate;->getDeterministicSeedForOwnedIdentity(Lio/olvid/engine/datatypes/Identity;[B)Lio/olvid/engine/datatypes/Seed;

    move-result-object v9

    .line 1045
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$SendSeedAndPropagateConfirmationStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lio/olvid/engine/metamanager/IdentityDelegate;->getDeviceUidsOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    .line 1046
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$SendSeedAndPropagateConfirmationStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lio/olvid/engine/metamanager/IdentityDelegate;->getSerializedPublishedDetailsOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)Ljava/lang/String;

    move-result-object v2

    .line 1049
    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$SendSeedAndPropagateConfirmationStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;->access$1900(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$SendSeedAndPropagateConfirmationStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;

    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;->access$2100(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;)[Lio/olvid/engine/datatypes/UID;

    move-result-object v4

    invoke-static {v3, v4}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createAsymmetricChannelInfo(Lio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$SendSeedAndPropagateConfirmationStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v3

    .line 1050
    new-instance v4, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$SendBobSeedMessage;

    invoke-direct {v4, v3, v9, v1, v2}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$SendBobSeedMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Lio/olvid/engine/datatypes/Seed;[Lio/olvid/engine/datatypes/UID;Ljava/lang/String;)V

    invoke-virtual {v4}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$SendBobSeedMessage;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object v1

    .line 1051
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v0, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$SendSeedAndPropagateConfirmationStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v3

    invoke-interface {v2, v0, v1, v3}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 1054
    new-instance v0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForDecommitmentState;

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$SendSeedAndPropagateConfirmationStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;

    .line 1055
    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;->access$1900(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v5

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$SendSeedAndPropagateConfirmationStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;

    .line 1056
    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;->access$1800(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;)Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$SendSeedAndPropagateConfirmationStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;

    .line 1057
    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;->access$2100(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;)[Lio/olvid/engine/datatypes/UID;

    move-result-object v7

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$SendSeedAndPropagateConfirmationStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;

    .line 1058
    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;->access$2000(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;)[B

    move-result-object v8

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$SendSeedAndPropagateConfirmationStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;

    .line 1060
    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;->access$1600(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;)Ljava/util/UUID;

    move-result-object v10

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForDecommitmentState;-><init>(Lio/olvid/engine/datatypes/Identity;Ljava/lang/String;[Lio/olvid/engine/datatypes/UID;[BLio/olvid/engine/datatypes/Seed;Ljava/util/UUID;)V

    return-object v0
.end method
