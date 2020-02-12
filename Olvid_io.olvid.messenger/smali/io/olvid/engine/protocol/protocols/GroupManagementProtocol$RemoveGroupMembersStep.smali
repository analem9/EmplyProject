.class public Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$RemoveGroupMembersStep;
.super Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;
.source "GroupManagementProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/GroupManagementProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoveGroupMembersStep"
.end annotation


# instance fields
.field private final receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$RemoveGroupMembersMessage;

.field private final startState:Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$RemoveGroupMembersMessage;Lio/olvid/engine/protocol/protocols/GroupManagementProtocol;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 848
    invoke-virtual {p3}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    invoke-static {}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->createLocalChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;)V

    .line 849
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$RemoveGroupMembersStep;->startState:Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;

    .line 850
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$RemoveGroupMembersStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$RemoveGroupMembersMessage;

    return-void
.end method

.method static synthetic access$1200(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$RemoveGroupMembersStep;Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;
    .locals 0

    .line 842
    invoke-virtual {p0, p1}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$RemoveGroupMembersStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$RemoveGroupMembersStep;)Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$RemoveGroupMembersMessage;
    .locals 0

    .line 842
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$RemoveGroupMembersStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$RemoveGroupMembersMessage;

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

    .line 855
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$RemoveGroupMembersStep;->getProtocolManagerSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0

    .line 857
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$RemoveGroupMembersStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$RemoveGroupMembersMessage;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$RemoveGroupMembersMessage;->access$1100(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$RemoveGroupMembersMessage;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v1

    iget-object v1, v1, Lio/olvid/engine/datatypes/containers/GroupInformation;->groupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$RemoveGroupMembersStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/Identity;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v0, "Error: the groupInformation contains a different Identity than ownedIdentity"

    .line 858
    invoke-static {v0}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    return-object v2

    .line 862
    :cond_0
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$RemoveGroupMembersStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$RemoveGroupMembersMessage;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$RemoveGroupMembersMessage;->access$1100(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$RemoveGroupMembersMessage;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/containers/GroupInformation;->computeProtocolUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$RemoveGroupMembersStep;->protocol:Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;

    invoke-virtual {v3}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->getProtocolInstanceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/olvid/engine/datatypes/UID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "Error: protocolUid mismatch"

    .line 863
    invoke-static {v0}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    return-object v2

    .line 870
    :cond_1
    new-instance v8, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$RemoveGroupMembersStep$1;

    invoke-direct {v8, p0, v0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$RemoveGroupMembersStep$1;-><init>(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$RemoveGroupMembersStep;Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;)V

    .line 879
    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v4, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$RemoveGroupMembersStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$RemoveGroupMembersMessage;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$RemoveGroupMembersMessage;->access$1100(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$RemoveGroupMembersMessage;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/containers/GroupInformation;->getGroupOwnerAndUid()[B

    move-result-object v5

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$RemoveGroupMembersStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v6

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$RemoveGroupMembersStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$RemoveGroupMembersMessage;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$RemoveGroupMembersMessage;->access$1400(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$RemoveGroupMembersMessage;)Ljava/util/HashSet;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [Lio/olvid/engine/datatypes/Identity;

    invoke-interface/range {v3 .. v8}, Lio/olvid/engine/metamanager/IdentityDelegate;->removeMembersAndPendingFromGroup(Lio/olvid/engine/datatypes/Session;[BLio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/GroupMembersChangedCallback;)V

    .line 884
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$RemoveGroupMembersStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$RemoveGroupMembersStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$RemoveGroupMembersMessage;

    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$RemoveGroupMembersMessage;->access$1100(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$RemoveGroupMembersMessage;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v4

    invoke-virtual {v4}, Lio/olvid/engine/datatypes/containers/GroupInformation;->getGroupOwnerAndUid()[B

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lio/olvid/engine/metamanager/IdentityDelegate;->getGroup(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;[B)Lio/olvid/engine/datatypes/containers/Group;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 889
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$RemoveGroupMembersStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$RemoveGroupMembersMessage;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$RemoveGroupMembersMessage;->access$1400(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$RemoveGroupMembersMessage;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/olvid/engine/datatypes/Identity;

    .line 891
    :try_start_0
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$RemoveGroupMembersStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    invoke-static {v2, v3}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createAllConfirmedObliviousChannelsInfo(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$RemoveGroupMembersStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v2

    .line 892
    new-instance v3, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$KickFromGroupMessage;

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$RemoveGroupMembersStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$RemoveGroupMembersMessage;

    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$RemoveGroupMembersMessage;->access$1100(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$RemoveGroupMembersMessage;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$KickFromGroupMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Lio/olvid/engine/datatypes/containers/GroupInformation;)V

    invoke-virtual {v3}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$KickFromGroupMessage;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object v2

    .line 893
    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v4, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$RemoveGroupMembersStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v5

    invoke-interface {v3, v4, v2, v5}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    .line 900
    :cond_2
    new-instance v0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$FinalState;

    invoke-direct {v0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$FinalState;-><init>()V

    return-object v0

    .line 886
    :cond_3
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
.end method
