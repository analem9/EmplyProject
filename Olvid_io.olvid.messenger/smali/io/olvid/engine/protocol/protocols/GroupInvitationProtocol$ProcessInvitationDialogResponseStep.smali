.class public Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationDialogResponseStep;
.super Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;
.source "GroupInvitationProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcessInvitationDialogResponseStep"
.end annotation


# instance fields
.field private final receivedMessage:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$DialogAcceptGroupInvitationMessage;

.field private final startState:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$DialogAcceptGroupInvitationMessage;Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 669
    invoke-virtual {p3}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    invoke-static {}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->createLocalChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;)V

    .line 670
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationDialogResponseStep;->startState:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;

    .line 671
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationDialogResponseStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$DialogAcceptGroupInvitationMessage;

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

    .line 676
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationDialogResponseStep;->getProtocolManagerSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0

    .line 678
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationDialogResponseStep;->startState:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;->access$600(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;)Ljava/util/UUID;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationDialogResponseStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$DialogAcceptGroupInvitationMessage;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$DialogAcceptGroupInvitationMessage;->access$500(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$DialogAcceptGroupInvitationMessage;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "ObvDialog uuid mismatch in DialogAcceptGroupInvitationMessage."

    .line 679
    invoke-static {v0}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 685
    :cond_0
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationDialogResponseStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    invoke-static {}, Lio/olvid/engine/datatypes/containers/DialogType;->createDeleteDialog()Lio/olvid/engine/datatypes/containers/DialogType;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationDialogResponseStep;->startState:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;->access$600(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;)Ljava/util/UUID;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createUserInterfaceChannelInfo(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/DialogType;Ljava/util/UUID;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationDialogResponseStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v1

    .line 686
    new-instance v2, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;

    invoke-direct {v2, v1}, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    invoke-virtual {v2}, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;->generateChannelDialogMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelDialogMessageToSend;

    move-result-object v1

    .line 687
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationDialogResponseStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v4

    invoke-interface {v2, v3, v1, v4}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 690
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationDialogResponseStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$DialogAcceptGroupInvitationMessage;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$DialogAcceptGroupInvitationMessage;->access$700(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$DialogAcceptGroupInvitationMessage;)Z

    move-result v1

    .line 691
    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationDialogResponseStep;->startState:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;->access$800(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v2

    iget-object v2, v2, Lio/olvid/engine/datatypes/containers/GroupInformation;->groupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 695
    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v4, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationDialogResponseStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lio/olvid/engine/metamanager/IdentityDelegate;->getOtherDeviceUidsOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/datatypes/UID;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_1

    .line 697
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationDialogResponseStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    invoke-static {v3}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createAllOwnedConfirmedObliviousChannelsInfo(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationDialogResponseStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v3

    .line 698
    new-instance v4, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$PropagateInvitationResponseMessage;

    invoke-direct {v4, v3, v1}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$PropagateInvitationResponseMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Z)V

    invoke-virtual {v4}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$PropagateInvitationResponseMessage;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object v3

    .line 699
    iget-object v4, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v5, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationDialogResponseStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v6

    invoke-interface {v4, v5, v3, v6}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 703
    :cond_1
    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v4, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationDialogResponseStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v5

    invoke-interface {v3, v4, v2, v5}, Lio/olvid/engine/metamanager/IdentityDelegate;->isIdentityAContactIdentityOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 706
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationDialogResponseStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    invoke-static {}, Lio/olvid/engine/datatypes/containers/DialogType;->createDeleteDialog()Lio/olvid/engine/datatypes/containers/DialogType;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationDialogResponseStep;->startState:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;->access$600(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;)Ljava/util/UUID;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createUserInterfaceChannelInfo(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/DialogType;Ljava/util/UUID;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationDialogResponseStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v1

    .line 707
    new-instance v2, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;

    invoke-direct {v2, v1}, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    invoke-virtual {v2}, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;->generateChannelDialogMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelDialogMessageToSend;

    move-result-object v1

    .line 708
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v0, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationDialogResponseStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v3

    invoke-interface {v2, v0, v1, v3}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 710
    new-instance v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ResponseSentState;

    invoke-direct {v0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ResponseSentState;-><init>()V

    return-object v0

    .line 715
    :cond_2
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationDialogResponseStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    invoke-static {v2, v3}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createAllConfirmedObliviousChannelsInfo(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationDialogResponseStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v3

    .line 716
    new-instance v4, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationResponseMessage;

    iget-object v5, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationDialogResponseStep;->startState:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;

    invoke-static {v5}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;->access$800(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v5

    iget-object v5, v5, Lio/olvid/engine/datatypes/containers/GroupInformation;->groupUid:Lio/olvid/engine/datatypes/UID;

    invoke-direct {v4, v3, v5, v1}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationResponseMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Lio/olvid/engine/datatypes/UID;Z)V

    invoke-virtual {v4}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationResponseMessage;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object v3

    .line 717
    iget-object v4, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v5, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationDialogResponseStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v6

    invoke-interface {v4, v5, v3, v6}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    if-eqz v1, :cond_5

    .line 726
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationDialogResponseStep;->startState:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;->access$900(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    new-array v9, v1, [Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;

    .line 728
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationDialogResponseStep;->startState:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;->access$900(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;

    .line 729
    iget-object v7, v6, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationDialogResponseStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v8

    invoke-virtual {v7, v8}, Lio/olvid/engine/datatypes/Identity;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_0

    .line 732
    :cond_3
    aput-object v6, v9, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 736
    :cond_4
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v5, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    .line 738
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationDialogResponseStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v6

    iget-object v7, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationDialogResponseStep;->startState:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;

    .line 739
    invoke-static {v7}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;->access$800(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v7

    new-array v8, v3, [Lio/olvid/engine/datatypes/Identity;

    aput-object v2, v8, v4

    move-object v4, v1

    .line 736
    invoke-interface/range {v4 .. v9}, Lio/olvid/engine/metamanager/IdentityDelegate;->createContactGroup(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/GroupInformation;[Lio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;)V

    .line 746
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationDialogResponseStep;->protocol:Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;

    invoke-virtual {v1}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->getJsonObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationDialogResponseStep;->startState:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;->access$800(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v2

    iget-object v2, v2, Lio/olvid/engine/datatypes/containers/GroupInformation;->serializedGroupDetailsWithVersionAndPhoto:Ljava/lang/String;

    const-class v3, Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;

    .line 747
    invoke-virtual {v1}, Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;->getGroupDetails()Lio/olvid/engine/engine/types/JsonGroupDetails;

    move-result-object v1

    .line 748
    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationDialogResponseStep;->protocol:Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;

    invoke-virtual {v2}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->getJsonObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 750
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationDialogResponseStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationDialogResponseStep;->startState:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;

    .line 753
    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;->access$800(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v3

    iget-object v3, v3, Lio/olvid/engine/datatypes/containers/GroupInformation;->groupUid:Lio/olvid/engine/datatypes/UID;

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationDialogResponseStep;->startState:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;

    .line 754
    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;->access$800(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v4

    iget-object v4, v4, Lio/olvid/engine/datatypes/containers/GroupInformation;->groupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 751
    invoke-static {v1, v3, v4}, Lio/olvid/engine/datatypes/containers/DialogType;->createGroupJoinedDialog(Ljava/lang/String;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/DialogType;

    move-result-object v1

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationDialogResponseStep;->startState:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;

    .line 756
    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;->access$600(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;)Ljava/util/UUID;

    move-result-object v3

    .line 750
    invoke-static {v2, v1, v3}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createUserInterfaceChannelInfo(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/DialogType;Ljava/util/UUID;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationDialogResponseStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v1

    .line 757
    new-instance v2, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;

    invoke-direct {v2, v1}, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    invoke-virtual {v2}, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;->generateChannelDialogMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelDialogMessageToSend;

    move-result-object v1

    .line 758
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v0, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationDialogResponseStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v3

    invoke-interface {v2, v0, v1, v3}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 762
    :cond_5
    new-instance v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ResponseSentState;

    invoke-direct {v0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ResponseSentState;-><init>()V

    return-object v0
.end method
