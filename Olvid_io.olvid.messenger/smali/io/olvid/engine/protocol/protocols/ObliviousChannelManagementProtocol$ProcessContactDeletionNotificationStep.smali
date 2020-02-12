.class public Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$ProcessContactDeletionNotificationStep;
.super Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;
.source "ObliviousChannelManagementProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcessContactDeletionNotificationStep"
.end annotation


# instance fields
.field private final receivedMessage:Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$ContactDeletionNotificationMessage;

.field private final startState:Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$ContactDeletionNotificationMessage;Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 314
    invoke-virtual {p3}, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    invoke-static {}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->createAnyConfirmedObliviousChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;)V

    .line 315
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$ProcessContactDeletionNotificationStep;->startState:Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;

    .line 316
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$ProcessContactDeletionNotificationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$ContactDeletionNotificationMessage;

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

    .line 321
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$ProcessContactDeletionNotificationStep;->getProtocolManagerSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0

    .line 322
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$ProcessContactDeletionNotificationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$ContactDeletionNotificationMessage;

    invoke-virtual {v1}, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$ContactDeletionNotificationMessage;->getReceptionChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->getRemoteIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    .line 325
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$ProcessContactDeletionNotificationStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    invoke-interface {v2, v3, v4, v1}, Lio/olvid/engine/metamanager/ChannelDelegate;->deleteObliviousChannelsWithContact(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)V

    .line 331
    :try_start_0
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$ProcessContactDeletionNotificationStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    invoke-interface {v2, v3, v1, v4}, Lio/olvid/engine/metamanager/IdentityDelegate;->getGroupOwnerAndUidsOfGroupsOwnedByContact(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)[[B

    move-result-object v2

    .line 332
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, v2, v5

    .line 333
    iget-object v7, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v8, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$ProcessContactDeletionNotificationStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v9

    invoke-interface {v7, v8, v6, v9}, Lio/olvid/engine/metamanager/IdentityDelegate;->leaveGroup(Lio/olvid/engine/datatypes/Session;[BLio/olvid/engine/datatypes/Identity;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 338
    :cond_0
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$ProcessContactDeletionNotificationStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v2, v3, v1, v5, v6}, Lio/olvid/engine/metamanager/IdentityDelegate;->deleteContactIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;Z)V

    .line 341
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$ProcessContactDeletionNotificationStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v5

    invoke-interface {v2, v3, v1, v5}, Lio/olvid/engine/metamanager/IdentityDelegate;->getGroupOwnerAndUidOfGroupsWhereContactIsPending(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)[[B

    move-result-object v2

    .line 343
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 344
    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 346
    array-length v1, v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_1

    aget-object v6, v2, v5

    .line 347
    iget-object v7, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v8, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$ProcessContactDeletionNotificationStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v9

    invoke-interface {v7, v8, v9, v6}, Lio/olvid/engine/metamanager/IdentityDelegate;->getGroupInformation(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;[B)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v6

    .line 349
    new-instance v7, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$ProcessContactDeletionNotificationStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v8

    invoke-static {v8}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createLocalChannelInfo(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v8

    const/16 v9, 0x9

    .line 351
    invoke-virtual {v6}, Lio/olvid/engine/datatypes/containers/GroupInformation;->computeProtocolUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10, v4}, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;-><init>(Lio/olvid/engine/datatypes/containers/SendChannelInfo;ILio/olvid/engine/datatypes/UID;Z)V

    .line 353
    new-instance v8, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$RemoveGroupMembersMessage;

    invoke-direct {v8, v7, v6, v3}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$RemoveGroupMembersMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Lio/olvid/engine/datatypes/containers/GroupInformation;Ljava/util/HashSet;)V

    invoke-virtual {v8}, Lio/olvid/engine/protocol/protocols/GroupManagementProtocol$RemoveGroupMembersMessage;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object v6

    .line 354
    iget-object v7, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v8, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$ProcessContactDeletionNotificationStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v9

    invoke-interface {v7, v8, v6, v9}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 357
    :catch_0
    :cond_1
    new-instance v0, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$FinalState;

    invoke-direct {v0}, Lio/olvid/engine/protocol/protocols/ObliviousChannelManagementProtocol$FinalState;-><init>()V

    return-object v0
.end method
