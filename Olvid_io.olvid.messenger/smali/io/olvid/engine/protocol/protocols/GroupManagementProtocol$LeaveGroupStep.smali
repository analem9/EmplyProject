.class public Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$LeaveGroupStep;
.super Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;
.source "GroupManagementProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/GroupManagementProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LeaveGroupStep"
.end annotation


# instance fields
.field private final receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$LeaveGroupMessage;

.field private final startState:Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$LeaveGroupMessage;Lio/olvid/engine/protocol/protocols/GroupManagementProtocol;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1073
    invoke-virtual {p3}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    invoke-static {}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->createLocalChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;)V

    .line 1074
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$LeaveGroupStep;->startState:Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;

    .line 1075
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$LeaveGroupStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$LeaveGroupMessage;

    return-void
.end method


# virtual methods
.method public executeStep()Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1080
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$LeaveGroupStep;->getProtocolManagerSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0

    .line 1082
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$LeaveGroupStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$LeaveGroupMessage;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$LeaveGroupMessage;->access$1900(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$LeaveGroupMessage;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v1

    iget-object v1, v1, Lio/olvid/engine/datatypes/containers/GroupInformation;->groupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$LeaveGroupStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/Identity;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v0, "Error: cannot leave a group you own"

    .line 1083
    invoke-static {v0}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    return-object v2

    .line 1087
    :cond_0
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$LeaveGroupStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$LeaveGroupMessage;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$LeaveGroupMessage;->access$1900(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$LeaveGroupMessage;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/containers/GroupInformation;->computeProtocolUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$LeaveGroupStep;->protocol:Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;

    invoke-virtual {v3}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->getProtocolInstanceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/olvid/engine/datatypes/UID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "Error: protocolUid mismatch"

    .line 1088
    invoke-static {v0}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    return-object v2

    .line 1094
    :cond_1
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$LeaveGroupStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$LeaveGroupMessage;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$LeaveGroupMessage;->access$1900(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$LeaveGroupMessage;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v1

    iget-object v1, v1, Lio/olvid/engine/datatypes/containers/GroupInformation;->groupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$LeaveGroupStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    invoke-static {v1, v2}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createAllConfirmedObliviousChannelsInfo(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$LeaveGroupStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v1

    .line 1095
    new-instance v2, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NotifyGroupLeftMessage;

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$LeaveGroupStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$LeaveGroupMessage;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$LeaveGroupMessage;->access$1900(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$LeaveGroupMessage;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NotifyGroupLeftMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Lio/olvid/engine/datatypes/containers/GroupInformation;)V

    invoke-virtual {v2}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$NotifyGroupLeftMessage;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object v1

    .line 1096
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$LeaveGroupStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v4

    invoke-interface {v2, v3, v1, v4}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 1101
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v0, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$LeaveGroupStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$LeaveGroupMessage;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$LeaveGroupMessage;->access$1900(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$LeaveGroupMessage;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v2

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/containers/GroupInformation;->getGroupOwnerAndUid()[B

    move-result-object v2

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$LeaveGroupStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lio/olvid/engine/metamanager/IdentityDelegate;->leaveGroup(Lio/olvid/engine/datatypes/Session;[BLio/olvid/engine/datatypes/Identity;)V

    .line 1103
    new-instance v0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$FinalState;

    invoke-direct {v0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$FinalState;-><init>()V

    return-object v0
.end method
