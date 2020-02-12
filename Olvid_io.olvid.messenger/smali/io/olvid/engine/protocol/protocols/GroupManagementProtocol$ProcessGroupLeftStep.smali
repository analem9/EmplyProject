.class public Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ProcessGroupLeftStep;
.super Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;
.source "GroupManagementProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/GroupManagementProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcessGroupLeftStep"
.end annotation


# instance fields
.field private final receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NotifyGroupLeftMessage;

.field private final startState:Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NotifyGroupLeftMessage;Lio/olvid/engine/protocol/protocols/GroupManagementProtocol;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1113
    invoke-virtual {p3}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    invoke-static {}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->createAnyConfirmedObliviousChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;)V

    .line 1114
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ProcessGroupLeftStep;->startState:Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;

    .line 1115
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ProcessGroupLeftStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NotifyGroupLeftMessage;

    return-void
.end method

.method static synthetic access$2100(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ProcessGroupLeftStep;Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;
    .locals 0

    .line 1107
    invoke-virtual {p0, p1}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ProcessGroupLeftStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2200(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ProcessGroupLeftStep;)Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NotifyGroupLeftMessage;
    .locals 0

    .line 1107
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ProcessGroupLeftStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NotifyGroupLeftMessage;

    return-object p0
.end method


# virtual methods
.method public executeStep()Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1120
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ProcessGroupLeftStep;->getProtocolManagerSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0

    .line 1122
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ProcessGroupLeftStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NotifyGroupLeftMessage;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NotifyGroupLeftMessage;->access$2000(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NotifyGroupLeftMessage;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v1

    iget-object v1, v1, Lio/olvid/engine/datatypes/containers/GroupInformation;->groupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ProcessGroupLeftStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/Identity;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v0, "Error: you are not the group owner"

    .line 1123
    invoke-static {v0}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    return-object v2

    .line 1127
    :cond_0
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ProcessGroupLeftStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NotifyGroupLeftMessage;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NotifyGroupLeftMessage;->access$2000(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NotifyGroupLeftMessage;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/containers/GroupInformation;->computeProtocolUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ProcessGroupLeftStep;->protocol:Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;

    invoke-virtual {v3}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->getProtocolInstanceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/olvid/engine/datatypes/UID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "Error: protocolUid mismatch"

    .line 1128
    invoke-static {v0}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    return-object v2

    .line 1134
    :cond_1
    new-instance v8, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ProcessGroupLeftStep$1;

    invoke-direct {v8, p0, v0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ProcessGroupLeftStep$1;-><init>(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ProcessGroupLeftStep;Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;)V

    .line 1143
    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v4, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v0, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ProcessGroupLeftStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NotifyGroupLeftMessage;

    invoke-static {v0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NotifyGroupLeftMessage;->access$2000(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NotifyGroupLeftMessage;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/containers/GroupInformation;->getGroupOwnerAndUid()[B

    move-result-object v5

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ProcessGroupLeftStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v6

    const/4 v0, 0x1

    new-array v7, v0, [Lio/olvid/engine/datatypes/Identity;

    const/4 v0, 0x0

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ProcessGroupLeftStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NotifyGroupLeftMessage;

    invoke-virtual {v1}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NotifyGroupLeftMessage;->getReceptionChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->getRemoteIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    aput-object v1, v7, v0

    invoke-interface/range {v3 .. v8}, Lio/olvid/engine/metamanager/IdentityDelegate;->removeMembersAndPendingFromGroup(Lio/olvid/engine/datatypes/Session;[BLio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/GroupMembersChangedCallback;)V

    .line 1145
    new-instance v0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$FinalState;

    invoke-direct {v0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$FinalState;-><init>()V

    return-object v0
.end method
