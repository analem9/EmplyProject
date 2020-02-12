.class public Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ProcessNewMembersStep;
.super Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;
.source "GroupManagementProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/GroupManagementProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcessNewMembersStep"
.end annotation


# instance fields
.field private final receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NewMembersMessage;

.field private final startState:Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NewMembersMessage;Lio/olvid/engine/protocol/protocols/GroupManagementProtocol;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 714
    invoke-virtual {p3}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    invoke-static {}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->createAnyConfirmedObliviousChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;)V

    .line 715
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ProcessNewMembersStep;->startState:Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;

    .line 716
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ProcessNewMembersStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NewMembersMessage;

    return-void
.end method


# virtual methods
.method public executeStep()Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 721
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ProcessNewMembersStep;->getProtocolManagerSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0

    .line 723
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ProcessNewMembersStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NewMembersMessage;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NewMembersMessage;->access$300(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NewMembersMessage;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/containers/GroupInformation;->computeProtocolUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ProcessNewMembersStep;->protocol:Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;

    invoke-virtual {v2}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->getProtocolInstanceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/UID;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v0, "Error: protocolUid mismatch"

    .line 724
    invoke-static {v0}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    return-object v2

    .line 728
    :cond_0
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ProcessNewMembersStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NewMembersMessage;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NewMembersMessage;->access$300(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NewMembersMessage;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v1

    iget-object v1, v1, Lio/olvid/engine/datatypes/containers/GroupInformation;->groupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ProcessNewMembersStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NewMembersMessage;

    invoke-virtual {v3}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NewMembersMessage;->getReceptionChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v3

    invoke-virtual {v3}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->getRemoteIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/olvid/engine/datatypes/Identity;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "Error: NewMembersMessage not received from the group owner"

    .line 729
    invoke-static {v0}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    return-object v2

    .line 734
    :cond_1
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ProcessNewMembersStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    iget-object v5, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ProcessNewMembersStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NewMembersMessage;

    invoke-static {v5}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NewMembersMessage;->access$300(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NewMembersMessage;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v5

    invoke-virtual {v5}, Lio/olvid/engine/datatypes/containers/GroupInformation;->getGroupOwnerAndUid()[B

    move-result-object v5

    invoke-interface {v1, v3, v4, v5}, Lio/olvid/engine/metamanager/IdentityDelegate;->getGroup(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;[B)Lio/olvid/engine/datatypes/containers/Group;

    move-result-object v1

    if-nez v1, :cond_2

    return-object v2

    .line 754
    :cond_2
    invoke-virtual {v1}, Lio/olvid/engine/datatypes/containers/Group;->getGroupOwner()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v0, "Error: received a NewMembersMessage for a group you own"

    .line 755
    invoke-static {v0}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    return-object v2

    .line 759
    :cond_3
    invoke-virtual {v1}, Lio/olvid/engine/datatypes/containers/Group;->getGroupMembersVersion()J

    move-result-wide v1

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ProcessNewMembersStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NewMembersMessage;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NewMembersMessage;->access$400(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NewMembersMessage;)J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-lez v5, :cond_4

    .line 761
    new-instance v0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$FinalState;

    invoke-direct {v0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$FinalState;-><init>()V

    return-object v0

    .line 766
    :cond_4
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ProcessNewMembersStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    iget-object v0, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ProcessNewMembersStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NewMembersMessage;

    invoke-static {v0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NewMembersMessage;->access$300(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NewMembersMessage;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v4

    iget-object v0, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ProcessNewMembersStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NewMembersMessage;

    invoke-static {v0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NewMembersMessage;->access$500(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NewMembersMessage;)Ljava/util/HashSet;

    move-result-object v5

    iget-object v0, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ProcessNewMembersStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NewMembersMessage;

    invoke-static {v0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NewMembersMessage;->access$600(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NewMembersMessage;)Ljava/util/HashSet;

    move-result-object v6

    iget-object v0, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ProcessNewMembersStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NewMembersMessage;

    invoke-static {v0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NewMembersMessage;->access$400(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NewMembersMessage;)J

    move-result-wide v7

    invoke-interface/range {v1 .. v8}, Lio/olvid/engine/metamanager/IdentityDelegate;->updateGroupMembersAndDetails(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/GroupInformation;Ljava/util/HashSet;Ljava/util/HashSet;J)V

    .line 769
    new-instance v0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$FinalState;

    invoke-direct {v0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$FinalState;-><init>()V

    return-object v0
.end method
