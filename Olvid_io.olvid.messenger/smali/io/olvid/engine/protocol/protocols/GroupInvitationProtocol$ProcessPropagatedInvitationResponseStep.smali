.class public Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessPropagatedInvitationResponseStep;
.super Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;
.source "GroupInvitationProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcessPropagatedInvitationResponseStep"
.end annotation


# instance fields
.field private final receivedMessage:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$PropagateInvitationResponseMessage;

.field private final startState:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$PropagateInvitationResponseMessage;Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 947
    invoke-virtual {p3}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    invoke-static {}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->createAnyConfirmedObliviousChannelWithOwnedDeviceInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;)V

    .line 948
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessPropagatedInvitationResponseStep;->startState:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;

    .line 949
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessPropagatedInvitationResponseStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$PropagateInvitationResponseMessage;

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

    .line 954
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessPropagatedInvitationResponseStep;->getProtocolManagerSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0

    .line 958
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessPropagatedInvitationResponseStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    invoke-static {}, Lio/olvid/engine/datatypes/containers/DialogType;->createDeleteDialog()Lio/olvid/engine/datatypes/containers/DialogType;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessPropagatedInvitationResponseStep;->startState:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;->access$600(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;)Ljava/util/UUID;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createUserInterfaceChannelInfo(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/DialogType;Ljava/util/UUID;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessPropagatedInvitationResponseStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v1

    .line 959
    new-instance v2, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;

    invoke-direct {v2, v1}, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    invoke-virtual {v2}, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;->generateChannelDialogMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelDialogMessageToSend;

    move-result-object v1

    .line 960
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessPropagatedInvitationResponseStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v4

    invoke-interface {v2, v3, v1, v4}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 963
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessPropagatedInvitationResponseStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$PropagateInvitationResponseMessage;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$PropagateInvitationResponseMessage;->access$1000(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$PropagateInvitationResponseMessage;)Z

    move-result v1

    .line 964
    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessPropagatedInvitationResponseStep;->startState:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;->access$800(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v2

    iget-object v2, v2, Lio/olvid/engine/datatypes/containers/GroupInformation;->groupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 966
    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v4, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessPropagatedInvitationResponseStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v5

    invoke-interface {v3, v4, v2, v5}, Lio/olvid/engine/metamanager/IdentityDelegate;->isIdentityAContactIdentityOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 968
    new-instance v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ResponseSentState;

    invoke-direct {v0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ResponseSentState;-><init>()V

    return-object v0

    :cond_0
    if-eqz v1, :cond_3

    .line 973
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessPropagatedInvitationResponseStep;->startState:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;->access$900(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    new-array v9, v1, [Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;

    .line 975
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessPropagatedInvitationResponseStep;->startState:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;->access$900(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;

    .line 976
    iget-object v7, v6, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessPropagatedInvitationResponseStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v8

    invoke-virtual {v7, v8}, Lio/olvid/engine/datatypes/Identity;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    .line 979
    :cond_1
    aput-object v6, v9, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 983
    :cond_2
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v5, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    .line 985
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessPropagatedInvitationResponseStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v6

    iget-object v0, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessPropagatedInvitationResponseStep;->startState:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;

    .line 986
    invoke-static {v0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;->access$800(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v7

    new-array v8, v3, [Lio/olvid/engine/datatypes/Identity;

    aput-object v2, v8, v4

    move-object v4, v1

    .line 983
    invoke-interface/range {v4 .. v9}, Lio/olvid/engine/metamanager/IdentityDelegate;->createContactGroup(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/GroupInformation;[Lio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;)V

    .line 992
    :cond_3
    new-instance v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ResponseSentState;

    invoke-direct {v0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ResponseSentState;-><init>()V

    return-object v0
.end method
