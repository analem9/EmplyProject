.class public Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ProcessPropagatedInviteResponseStep;
.super Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;
.source "ContactMutualIntroductionProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcessPropagatedInviteResponseStep"
.end annotation


# instance fields
.field private final receivedMessage:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateConfirmationMessage;

.field private final startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateConfirmationMessage;Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 961
    invoke-virtual {p3}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    invoke-static {}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->createAnyConfirmedObliviousChannelWithOwnedDeviceInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;)V

    .line 962
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ProcessPropagatedInviteResponseStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;

    .line 963
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ProcessPropagatedInviteResponseStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateConfirmationMessage;

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

    .line 968
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ProcessPropagatedInviteResponseStep;->getProtocolManagerSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0

    .line 970
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ProcessPropagatedInviteResponseStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateConfirmationMessage;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateConfirmationMessage;->access$1100(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateConfirmationMessage;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 971
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    .line 975
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ProcessPropagatedInviteResponseStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ProcessPropagatedInviteResponseStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateConfirmationMessage;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateConfirmationMessage;->access$1200(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateConfirmationMessage;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ProcessPropagatedInviteResponseStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateConfirmationMessage;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateConfirmationMessage;->access$1300(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateConfirmationMessage;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ProcessPropagatedInviteResponseStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateConfirmationMessage;

    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateConfirmationMessage;->access$1400(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateConfirmationMessage;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lio/olvid/engine/datatypes/containers/DialogType;->createMediatorInviteAcceptedDialog(Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/DialogType;

    move-result-object v2

    invoke-static {v1, v2, v6}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createUserInterfaceChannelInfo(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/DialogType;Ljava/util/UUID;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ProcessPropagatedInviteResponseStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v1

    .line 976
    new-instance v2, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;

    invoke-direct {v2, v1}, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    invoke-virtual {v2}, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;->generateChannelDialogMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelDialogMessageToSend;

    move-result-object v1

    .line 977
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v0, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ProcessPropagatedInviteResponseStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v3

    invoke-interface {v2, v0, v1, v3}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 980
    new-instance v0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ProcessPropagatedInviteResponseStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateConfirmationMessage;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateConfirmationMessage;->access$1300(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateConfirmationMessage;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ProcessPropagatedInviteResponseStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateConfirmationMessage;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateConfirmationMessage;->access$1200(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateConfirmationMessage;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ProcessPropagatedInviteResponseStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateConfirmationMessage;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateConfirmationMessage;->access$1400(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$PropagateConfirmationMessage;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v5

    const/4 v7, 0x2

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;-><init>(Lio/olvid/engine/datatypes/Identity;Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;Ljava/util/UUID;I)V

    return-object v0

    .line 984
    :cond_0
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ProcessPropagatedInviteResponseStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    invoke-static {}, Lio/olvid/engine/datatypes/containers/DialogType;->createDeleteDialog()Lio/olvid/engine/datatypes/containers/DialogType;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ProcessPropagatedInviteResponseStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;->access$700(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;)Ljava/util/UUID;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createUserInterfaceChannelInfo(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/DialogType;Ljava/util/UUID;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ProcessPropagatedInviteResponseStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v1

    .line 985
    new-instance v2, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;

    invoke-direct {v2, v1}, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    invoke-virtual {v2}, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;->generateChannelDialogMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelDialogMessageToSend;

    move-result-object v1

    .line 986
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v0, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ProcessPropagatedInviteResponseStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v3

    invoke-interface {v2, v0, v1, v3}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 989
    new-instance v0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationRejectedState;

    invoke-direct {v0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationRejectedState;-><init>()V

    return-object v0
.end method
