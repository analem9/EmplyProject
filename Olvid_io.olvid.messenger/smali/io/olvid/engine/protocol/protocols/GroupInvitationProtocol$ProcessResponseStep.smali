.class public Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessResponseStep;
.super Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;
.source "GroupInvitationProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcessResponseStep"
.end annotation


# instance fields
.field private final receivedMessage:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationResponseMessage;

.field private final startState:Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationResponseMessage;Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1003
    invoke-virtual {p3}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    invoke-static {}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->createAnyConfirmedObliviousChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;)V

    .line 1004
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessResponseStep;->startState:Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;

    .line 1005
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessResponseStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationResponseMessage;

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

    .line 1010
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessResponseStep;->getProtocolManagerSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0

    .line 1012
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessResponseStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationResponseMessage;

    invoke-virtual {v1}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationResponseMessage;->getReceptionChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->getRemoteIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v6

    .line 1014
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessResponseStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    const/16 v2, 0x20

    add-int/2addr v1, v2

    new-array v4, v1, [B

    .line 1015
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessResponseStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessResponseStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    invoke-virtual {v3}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    const/4 v5, 0x0

    invoke-static {v1, v5, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1016
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessResponseStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationResponseMessage;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationResponseMessage;->access$1100(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationResponseMessage;)Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessResponseStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    invoke-virtual {v3}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v1, v5, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1018
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessResponseStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    invoke-interface {v1, v2, v3, v4}, Lio/olvid/engine/metamanager/IdentityDelegate;->getGroup(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;[B)Lio/olvid/engine/datatypes/containers/Group;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1019
    invoke-virtual {v1, v6}, Lio/olvid/engine/datatypes/containers/Group;->isPendingMember(Lio/olvid/engine/datatypes/Identity;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 1036
    :cond_0
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessResponseStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationResponseMessage;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationResponseMessage;->access$1200(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationResponseMessage;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1037
    new-instance v7, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessResponseStep$1;

    invoke-direct {v7, p0, v0, v4}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessResponseStep$1;-><init>(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessResponseStep;Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;[B)V

    .line 1053
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    .line 1056
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessResponseStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v5

    .line 1053
    invoke-interface/range {v2 .. v7}, Lio/olvid/engine/metamanager/IdentityDelegate;->addGroupMemberFromPendingMember(Lio/olvid/engine/datatypes/Session;[BLio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/GroupMembersChangedCallback;)V

    goto :goto_0

    .line 1061
    :cond_1
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    .line 1064
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessResponseStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v5

    const/4 v7, 0x1

    .line 1061
    invoke-interface/range {v2 .. v7}, Lio/olvid/engine/metamanager/IdentityDelegate;->setPendingMemberDeclined(Lio/olvid/engine/datatypes/Session;[BLio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;Z)V

    .line 1070
    :goto_0
    new-instance v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ResponseReceivedState;

    invoke-direct {v0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ResponseReceivedState;-><init>()V

    return-object v0

    .line 1021
    :cond_2
    :goto_1
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessResponseStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationResponseMessage;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationResponseMessage;->access$1200(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationResponseMessage;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1023
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessResponseStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v1

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessResponseStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationResponseMessage;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationResponseMessage;->access$1100(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationResponseMessage;)Lio/olvid/engine/datatypes/UID;

    move-result-object v2

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lio/olvid/engine/datatypes/containers/GroupInformation;->computeProtocolUid([B[B)Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    .line 1024
    new-instance v2, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    .line 1025
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessResponseStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    invoke-static {v6, v3}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createAllConfirmedObliviousChannelsInfo(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v3

    const/16 v4, 0x9

    invoke-direct {v2, v3, v4, v1, v5}, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;-><init>(Lio/olvid/engine/datatypes/containers/SendChannelInfo;ILio/olvid/engine/datatypes/UID;Z)V

    .line 1030
    new-instance v1, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$KickFromGroupMessage;

    new-instance v3, Lio/olvid/engine/datatypes/containers/GroupInformation;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessResponseStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    iget-object v5, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessResponseStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationResponseMessage;

    invoke-static {v5}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationResponseMessage;->access$1100(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationResponseMessage;)Lio/olvid/engine/datatypes/UID;

    move-result-object v5

    const-string v6, ""

    invoke-direct {v3, v4, v5, v6}, Lio/olvid/engine/datatypes/containers/GroupInformation;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$KickFromGroupMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Lio/olvid/engine/datatypes/containers/GroupInformation;)V

    invoke-virtual {v1}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$KickFromGroupMessage;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object v1

    .line 1031
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v0, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessResponseStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v3

    invoke-interface {v2, v0, v1, v3}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 1033
    :cond_3
    new-instance v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ResponseReceivedState;

    invoke-direct {v0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ResponseReceivedState;-><init>()V

    return-object v0
.end method
