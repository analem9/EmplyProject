.class public Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationStep;
.super Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;
.source "GroupManagementProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/GroupManagementProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitiateGroupCreationStep"
.end annotation


# instance fields
.field private final receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationMessage;

.field private final startState:Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationMessage;Lio/olvid/engine/protocol/protocols/GroupManagementProtocol;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 592
    invoke-virtual {p3}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    invoke-static {}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->createLocalChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;)V

    .line 593
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationStep;->startState:Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;

    .line 594
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationMessage;

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

    .line 599
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationStep;->getProtocolManagerSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0

    .line 601
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationMessage;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationMessage;->access$000(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationMessage;)Ljava/util/HashSet;

    move-result-object v1

    new-instance v2, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;-><init>(Lio/olvid/engine/datatypes/Identity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v0, "Error: the groupMemberIdentitiesAndSerializedDetails contains the ownedIdentity"

    .line 602
    invoke-static {v0}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    return-object v2

    .line 606
    :cond_0
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationMessage;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationMessage;->access$100(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationMessage;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v1

    iget-object v1, v1, Lio/olvid/engine/datatypes/containers/GroupInformation;->groupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/olvid/engine/datatypes/Identity;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "Error: the groupInformation contains a different Identity than ownedIdentity"

    .line 607
    invoke-static {v0}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    return-object v2

    .line 611
    :cond_1
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationMessage;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationMessage;->access$100(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationMessage;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/containers/GroupInformation;->computeProtocolUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationStep;->protocol:Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;

    invoke-virtual {v3}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->getProtocolInstanceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/olvid/engine/datatypes/UID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v0, "Error: protocolUid mismatch"

    .line 612
    invoke-static {v0}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    return-object v2

    .line 618
    :cond_2
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lio/olvid/engine/metamanager/IdentityDelegate;->getOtherDeviceUidsOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_3

    .line 620
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    invoke-static {v1}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createAllOwnedConfirmedObliviousChannelsInfo(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v1

    .line 621
    new-instance v2, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$PropagateGroupCreationMessage;

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationMessage;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationMessage;->access$100(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationMessage;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v3

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationMessage;

    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationMessage;->access$000(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationMessage;)Ljava/util/HashSet;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$PropagateGroupCreationMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Lio/olvid/engine/datatypes/containers/GroupInformation;Ljava/util/HashSet;)V

    invoke-virtual {v2}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$PropagateGroupCreationMessage;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object v1

    .line 622
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v4

    invoke-interface {v2, v3, v1, v4}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 629
    :cond_3
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationMessage;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationMessage;->access$000(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationMessage;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;

    .line 630
    new-instance v4, Lio/olvid/engine/datatypes/UID;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v5

    invoke-direct {v4, v5}, Lio/olvid/engine/datatypes/UID;-><init>(Lio/olvid/engine/crypto/PRNG;)V

    .line 631
    new-instance v5, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    .line 632
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v6

    invoke-static {v6}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createLocalChannelInfo(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v6

    const/16 v7, 0x8

    invoke-direct {v5, v6, v7, v4, v3}, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;-><init>(Lio/olvid/engine/datatypes/containers/SendChannelInfo;ILio/olvid/engine/datatypes/UID;Z)V

    .line 637
    new-instance v3, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InitialMessage;

    iget-object v2, v2, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;->identity:Lio/olvid/engine/datatypes/Identity;

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationMessage;

    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationMessage;->access$100(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationMessage;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v4

    iget-object v6, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationMessage;

    invoke-static {v6}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationMessage;->access$000(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationMessage;)Ljava/util/HashSet;

    move-result-object v6

    invoke-direct {v3, v5, v2, v4, v6}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InitialMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/GroupInformation;Ljava/util/HashSet;)V

    invoke-virtual {v3}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InitialMessage;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object v2

    .line 638
    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v4, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v5

    invoke-interface {v3, v4, v2, v5}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    goto :goto_0

    .line 643
    :cond_4
    iget-object v6, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v7, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    .line 645
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v8

    iget-object v0, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationMessage;

    .line 646
    invoke-static {v0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationMessage;->access$100(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationMessage;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v9

    new-array v10, v3, [Lio/olvid/engine/datatypes/Identity;

    iget-object v0, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationMessage;

    .line 648
    invoke-static {v0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationMessage;->access$000(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$InitiateGroupCreationMessage;)Ljava/util/HashSet;

    move-result-object v0

    new-array v1, v3, [Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, [Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;

    .line 643
    invoke-interface/range {v6 .. v11}, Lio/olvid/engine/metamanager/IdentityDelegate;->createContactGroup(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/GroupInformation;[Lio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;)V

    .line 652
    new-instance v0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$FinalState;

    invoke-direct {v0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$FinalState;-><init>()V

    return-object v0
.end method
