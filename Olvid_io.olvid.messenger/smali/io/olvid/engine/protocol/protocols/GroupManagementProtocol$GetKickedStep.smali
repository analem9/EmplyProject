.class public Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$GetKickedStep;
.super Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;
.source "GroupManagementProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/GroupManagementProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetKickedStep"
.end annotation


# instance fields
.field private final receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$KickFromGroupMessage;

.field private final startState:Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$KickFromGroupMessage;Lio/olvid/engine/protocol/protocols/GroupManagementProtocol;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 910
    invoke-virtual {p3}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    invoke-static {}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->createAnyConfirmedObliviousChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;)V

    .line 911
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$GetKickedStep;->startState:Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;

    .line 912
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$GetKickedStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$KickFromGroupMessage;

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

    .line 917
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$GetKickedStep;->getProtocolManagerSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0

    .line 918
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$GetKickedStep;->protocol:Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->eraseReceivedMessagesAfterReachingAFinalState:Z

    .line 920
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$GetKickedStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$KickFromGroupMessage;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$KickFromGroupMessage;->access$1500(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$KickFromGroupMessage;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/containers/GroupInformation;->computeProtocolUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$GetKickedStep;->protocol:Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;

    invoke-virtual {v2}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->getProtocolInstanceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/UID;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v0, "Error: protocolUid mismatch"

    .line 921
    invoke-static {v0}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    return-object v2

    .line 925
    :cond_0
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$GetKickedStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$KickFromGroupMessage;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$KickFromGroupMessage;->access$1500(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$KickFromGroupMessage;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v1

    iget-object v1, v1, Lio/olvid/engine/datatypes/containers/GroupInformation;->groupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$GetKickedStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$KickFromGroupMessage;

    invoke-virtual {v3}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$KickFromGroupMessage;->getReceptionChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v3

    invoke-virtual {v3}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->getRemoteIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/olvid/engine/datatypes/Identity;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "Error: NewMembersMessage not received from the group owner"

    .line 926
    invoke-static {v0}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    return-object v2

    .line 932
    :cond_1
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$GetKickedStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$GetKickedStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$KickFromGroupMessage;

    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$KickFromGroupMessage;->access$1500(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$KickFromGroupMessage;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v4

    invoke-virtual {v4}, Lio/olvid/engine/datatypes/containers/GroupInformation;->getGroupOwnerAndUid()[B

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lio/olvid/engine/metamanager/IdentityDelegate;->getGroup(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;[B)Lio/olvid/engine/datatypes/containers/Group;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 935
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v0, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$GetKickedStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$KickFromGroupMessage;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$KickFromGroupMessage;->access$1500(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$KickFromGroupMessage;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v2

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/containers/GroupInformation;->getGroupOwnerAndUid()[B

    move-result-object v2

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$GetKickedStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lio/olvid/engine/metamanager/IdentityDelegate;->leaveGroup(Lio/olvid/engine/datatypes/Session;[BLio/olvid/engine/datatypes/Identity;)V

    .line 939
    :cond_2
    new-instance v0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$FinalState;

    invoke-direct {v0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$FinalState;-><init>()V

    return-object v0
.end method
