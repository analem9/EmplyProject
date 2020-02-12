.class public Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ReinvitePendingMemberStep;
.super Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;
.source "GroupManagementProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/GroupManagementProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReinvitePendingMemberStep"
.end annotation


# instance fields
.field private final receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ReinvitePendingMemberMessage;

.field private final startState:Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ReinvitePendingMemberMessage;Lio/olvid/engine/protocol/protocols/GroupManagementProtocol;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 950
    invoke-virtual {p3}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    invoke-static {}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->createLocalChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;)V

    .line 951
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ReinvitePendingMemberStep;->startState:Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;

    .line 952
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ReinvitePendingMemberStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ReinvitePendingMemberMessage;

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

    .line 957
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ReinvitePendingMemberStep;->getProtocolManagerSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0

    .line 959
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ReinvitePendingMemberStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ReinvitePendingMemberMessage;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ReinvitePendingMemberMessage;->access$1600(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ReinvitePendingMemberMessage;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v1

    iget-object v1, v1, Lio/olvid/engine/datatypes/containers/GroupInformation;->groupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ReinvitePendingMemberStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/Identity;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v0, "Error: the groupInformation contains a different Identity than ownedIdentity"

    .line 960
    invoke-static {v0}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    return-object v2

    .line 964
    :cond_0
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ReinvitePendingMemberStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ReinvitePendingMemberMessage;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ReinvitePendingMemberMessage;->access$1600(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ReinvitePendingMemberMessage;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/containers/GroupInformation;->computeProtocolUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ReinvitePendingMemberStep;->protocol:Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;

    invoke-virtual {v3}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->getProtocolInstanceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/olvid/engine/datatypes/UID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "Error: protocolUid mismatch"

    .line 965
    invoke-static {v0}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    return-object v2

    .line 971
    :cond_1
    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v4, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ReinvitePendingMemberStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ReinvitePendingMemberMessage;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ReinvitePendingMemberMessage;->access$1600(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ReinvitePendingMemberMessage;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/containers/GroupInformation;->getGroupOwnerAndUid()[B

    move-result-object v5

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ReinvitePendingMemberStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v6

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ReinvitePendingMemberStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ReinvitePendingMemberMessage;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ReinvitePendingMemberMessage;->access$1700(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ReinvitePendingMemberMessage;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Lio/olvid/engine/metamanager/IdentityDelegate;->setPendingMemberDeclined(Lio/olvid/engine/datatypes/Session;[BLio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;Z)V

    .line 976
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ReinvitePendingMemberStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ReinvitePendingMemberStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ReinvitePendingMemberMessage;

    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ReinvitePendingMemberMessage;->access$1600(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ReinvitePendingMemberMessage;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v4

    invoke-virtual {v4}, Lio/olvid/engine/datatypes/containers/GroupInformation;->getGroupOwnerAndUid()[B

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lio/olvid/engine/metamanager/IdentityDelegate;->getGroup(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;[B)Lio/olvid/engine/datatypes/containers/Group;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 981
    new-instance v2, Ljava/util/HashSet;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/containers/Group;->getPendingGroupMembers()[Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 982
    invoke-virtual {v1}, Lio/olvid/engine/datatypes/containers/Group;->getGroupMembers()[Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v1, v5

    .line 983
    new-instance v7, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;

    iget-object v8, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v9, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ReinvitePendingMemberStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v10

    invoke-interface {v8, v9, v6, v10}, Lio/olvid/engine/metamanager/IdentityDelegate;->getSerializedPublishedDetailsOfContactIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;-><init>(Lio/olvid/engine/datatypes/Identity;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 986
    :cond_2
    new-instance v1, Lio/olvid/engine/datatypes/UID;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ReinvitePendingMemberStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v3

    invoke-direct {v1, v3}, Lio/olvid/engine/datatypes/UID;-><init>(Lio/olvid/engine/crypto/PRNG;)V

    .line 987
    new-instance v3, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    .line 988
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ReinvitePendingMemberStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v5

    invoke-static {v5}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createLocalChannelInfo(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v5

    const/16 v6, 0x8

    invoke-direct {v3, v5, v6, v1, v4}, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;-><init>(Lio/olvid/engine/datatypes/containers/SendChannelInfo;ILio/olvid/engine/datatypes/UID;Z)V

    .line 993
    new-instance v1, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InitialMessage;

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ReinvitePendingMemberStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ReinvitePendingMemberMessage;

    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ReinvitePendingMemberMessage;->access$1700(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ReinvitePendingMemberMessage;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    iget-object v5, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ReinvitePendingMemberStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ReinvitePendingMemberMessage;

    invoke-static {v5}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ReinvitePendingMemberMessage;->access$1600(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ReinvitePendingMemberMessage;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v5

    invoke-direct {v1, v3, v4, v5, v2}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InitialMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/GroupInformation;Ljava/util/HashSet;)V

    invoke-virtual {v1}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InitialMessage;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object v1

    .line 994
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v0, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$ReinvitePendingMemberStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v3

    invoke-interface {v2, v0, v1, v3}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 997
    new-instance v0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$FinalState;

    invoke-direct {v0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$FinalState;-><init>()V

    return-object v0

    .line 978
    :cond_3
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
.end method
