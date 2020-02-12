.class public Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$DisbandGroupStep;
.super Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;
.source "GroupManagementProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/GroupManagementProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisbandGroupStep"
.end annotation


# instance fields
.field private final receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$DisbandGroupMessage;

.field private final startState:Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$DisbandGroupMessage;Lio/olvid/engine/protocol/protocols/GroupManagementProtocol;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1007
    invoke-virtual {p3}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    invoke-static {}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->createLocalChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;)V

    .line 1008
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$DisbandGroupStep;->startState:Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;

    .line 1009
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$DisbandGroupStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$DisbandGroupMessage;

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

    .line 1014
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$DisbandGroupStep;->getProtocolManagerSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0

    .line 1016
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$DisbandGroupStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$DisbandGroupMessage;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$DisbandGroupMessage;->access$1800(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$DisbandGroupMessage;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v1

    iget-object v1, v1, Lio/olvid/engine/datatypes/containers/GroupInformation;->groupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$DisbandGroupStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/Identity;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v0, "Error: the groupInformation contains a different Identity than ownedIdentity"

    .line 1017
    invoke-static {v0}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    return-object v2

    .line 1021
    :cond_0
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$DisbandGroupStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$DisbandGroupMessage;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$DisbandGroupMessage;->access$1800(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$DisbandGroupMessage;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/containers/GroupInformation;->computeProtocolUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$DisbandGroupStep;->protocol:Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;

    invoke-virtual {v3}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->getProtocolInstanceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/olvid/engine/datatypes/UID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "Error: protocolUid mismatch"

    .line 1022
    invoke-static {v0}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    return-object v2

    .line 1029
    :cond_1
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$DisbandGroupStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$DisbandGroupStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$DisbandGroupMessage;

    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$DisbandGroupMessage;->access$1800(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$DisbandGroupMessage;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v4

    invoke-virtual {v4}, Lio/olvid/engine/datatypes/containers/GroupInformation;->getGroupOwnerAndUid()[B

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lio/olvid/engine/metamanager/IdentityDelegate;->getGroup(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;[B)Lio/olvid/engine/datatypes/containers/Group;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1034
    invoke-virtual {v1}, Lio/olvid/engine/datatypes/containers/Group;->getGroupMembers()[Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x0

    if-lez v2, :cond_2

    .line 1035
    invoke-virtual {v1}, Lio/olvid/engine/datatypes/containers/Group;->getGroupMembers()[Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$DisbandGroupStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    invoke-static {v2, v4}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createAllConfirmedObliviousChannelsInfosForMultipleIdentities([Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v2

    .line 1036
    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v2, v5

    .line 1037
    invoke-virtual {p0, v6}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$DisbandGroupStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v6

    .line 1038
    new-instance v7, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$KickFromGroupMessage;

    iget-object v8, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$DisbandGroupStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$DisbandGroupMessage;

    invoke-static {v8}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$DisbandGroupMessage;->access$1800(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$DisbandGroupMessage;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$KickFromGroupMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Lio/olvid/engine/datatypes/containers/GroupInformation;)V

    invoke-virtual {v7}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$KickFromGroupMessage;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object v6

    .line 1039
    iget-object v7, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v8, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$DisbandGroupStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v9

    invoke-interface {v7, v8, v6, v9}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1043
    :cond_2
    invoke-virtual {v1}, Lio/olvid/engine/datatypes/containers/Group;->getPendingGroupMembers()[Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_4

    .line 1044
    invoke-virtual {v1}, Lio/olvid/engine/datatypes/containers/Group;->getPendingGroupMembers()[Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [Lio/olvid/engine/datatypes/Identity;

    const/4 v4, 0x0

    .line 1045
    :goto_1
    array-length v5, v2

    if-ge v4, v5, :cond_3

    .line 1046
    invoke-virtual {v1}, Lio/olvid/engine/datatypes/containers/Group;->getPendingGroupMembers()[Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;

    move-result-object v5

    aget-object v5, v5, v4

    iget-object v5, v5, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;->identity:Lio/olvid/engine/datatypes/Identity;

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1049
    :cond_3
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$DisbandGroupStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    invoke-static {v2, v1}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createAllConfirmedObliviousChannelsInfosForMultipleIdentities([Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v1

    .line 1050
    array-length v2, v1

    :goto_2
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 1051
    invoke-virtual {p0, v4}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$DisbandGroupStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v4

    .line 1052
    new-instance v5, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$KickFromGroupMessage;

    iget-object v6, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$DisbandGroupStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$DisbandGroupMessage;

    invoke-static {v6}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$DisbandGroupMessage;->access$1800(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$DisbandGroupMessage;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$KickFromGroupMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Lio/olvid/engine/datatypes/containers/GroupInformation;)V

    invoke-virtual {v5}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$KickFromGroupMessage;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object v4

    .line 1053
    iget-object v5, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v6, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$DisbandGroupStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v7

    invoke-interface {v5, v6, v4, v7}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1060
    :cond_4
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v0, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$DisbandGroupStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$DisbandGroupMessage;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$DisbandGroupMessage;->access$1800(Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$DisbandGroupMessage;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v2

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/containers/GroupInformation;->getGroupOwnerAndUid()[B

    move-result-object v2

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$DisbandGroupStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lio/olvid/engine/metamanager/IdentityDelegate;->deleteGroup(Lio/olvid/engine/datatypes/Session;[BLio/olvid/engine/datatypes/Identity;)V

    .line 1063
    new-instance v0, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$FinalState;

    invoke-direct {v0}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$FinalState;-><init>()V

    return-object v0

    .line 1031
    :cond_5
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
.end method
