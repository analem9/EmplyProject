.class public Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$DeleteContactStep;
.super Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;
.source "ObliviousChannelManagementProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteContactStep"
.end annotation


# instance fields
.field private final receivedMessage:Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$InitiateContactDeletionMessage;

.field private final startState:Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$InitiateContactDeletionMessage;Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 222
    invoke-virtual {p3}, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    invoke-static {}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->createLocalChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;)V

    .line 223
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$DeleteContactStep;->startState:Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;

    .line 224
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$DeleteContactStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$InitiateContactDeletionMessage;

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

    .line 229
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$DeleteContactStep;->getProtocolManagerSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0

    .line 233
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$DeleteContactStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lio/olvid/engine/metamanager/IdentityDelegate;->getOtherDeviceUidsOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    .line 235
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$DeleteContactStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    invoke-static {v1}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createAllOwnedConfirmedObliviousChannelsInfo(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$DeleteContactStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v1

    .line 236
    new-instance v2, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$PropagateContactDeletionMessage;

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$DeleteContactStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$InitiateContactDeletionMessage;

    iget-object v3, v3, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$InitiateContactDeletionMessage;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-direct {v2, v1, v3}, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$PropagateContactDeletionMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Lio/olvid/engine/datatypes/Identity;)V

    invoke-virtual {v2}, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$PropagateContactDeletionMessage;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object v1

    .line 237
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$DeleteContactStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v4

    invoke-interface {v2, v3, v1, v4}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 243
    :cond_0
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$DeleteContactStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$InitiateContactDeletionMessage;

    iget-object v1, v1, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$InitiateContactDeletionMessage;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$DeleteContactStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    invoke-static {v1, v2}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createAllConfirmedObliviousChannelsInfo(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$DeleteContactStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v1

    .line 244
    new-instance v2, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$ContactDeletionNotificationMessage;

    invoke-direct {v2, v1}, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$ContactDeletionNotificationMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    invoke-virtual {v2}, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$ContactDeletionNotificationMessage;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object v1

    .line 245
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$DeleteContactStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v4

    invoke-interface {v2, v3, v1, v4}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :catch_0
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$DeleteContactStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$DeleteContactStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$InitiateContactDeletionMessage;

    iget-object v4, v4, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$InitiateContactDeletionMessage;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-interface {v1, v2, v3, v4}, Lio/olvid/engine/metamanager/ChannelDelegate;->deleteObliviousChannelsWithContact(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)V

    .line 255
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$DeleteContactStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$InitiateContactDeletionMessage;

    iget-object v3, v3, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$InitiateContactDeletionMessage;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$DeleteContactStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lio/olvid/engine/metamanager/IdentityDelegate;->getGroupOwnerAndUidOfGroupsWhereContactIsPending(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)[[B

    move-result-object v1

    .line 257
    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 258
    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$DeleteContactStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$InitiateContactDeletionMessage;

    iget-object v4, v4, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$InitiateContactDeletionMessage;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 260
    array-length v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_1

    aget-object v7, v1, v6

    .line 261
    iget-object v8, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v9, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$DeleteContactStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v10

    invoke-interface {v8, v9, v10, v7}, Lio/olvid/engine/metamanager/IdentityDelegate;->getGroupInformation(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;[B)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v7

    .line 263
    new-instance v8, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$DeleteContactStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v9

    invoke-static {v9}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createLocalChannelInfo(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v9

    const/16 v10, 0x9

    .line 265
    invoke-virtual {v7}, Lio/olvid/engine/datatypes/containers/GroupInformation;->computeProtocolUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v11

    invoke-direct {v8, v9, v10, v11, v5}, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;-><init>(Lio/olvid/engine/datatypes/containers/SendChannelInfo;ILio/olvid/engine/datatypes/UID;Z)V

    .line 267
    new-instance v9, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$RemoveGroupMembersMessage;

    invoke-direct {v9, v8, v7, v2}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$RemoveGroupMembersMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Lio/olvid/engine/datatypes/containers/GroupInformation;Ljava/util/HashSet;)V

    invoke-virtual {v9}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$RemoveGroupMembersMessage;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object v7

    .line 268
    iget-object v8, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v9, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$DeleteContactStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v10

    invoke-interface {v8, v9, v7, v10}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 273
    :cond_1
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v0, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$DeleteContactStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$InitiateContactDeletionMessage;

    iget-object v2, v2, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$InitiateContactDeletionMessage;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$DeleteContactStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    invoke-interface {v1, v0, v2, v4, v3}, Lio/olvid/engine/metamanager/IdentityDelegate;->deleteContactIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;Z)V

    .line 276
    new-instance v0, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$FinalState;

    invoke-direct {v0}, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$FinalState;-><init>()V

    return-object v0
.end method
