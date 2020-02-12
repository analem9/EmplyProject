.class public Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationStep;
.super Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;
.source "GroupInvitationProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcessInvitationStep"
.end annotation


# instance fields
.field private final receivedMessage:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;

.field private final startState:Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 502
    invoke-virtual {p3}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    invoke-static {}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->createAnyConfirmedObliviousChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;)V

    .line 503
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationStep;->startState:Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;

    .line 504
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;

    return-void
.end method


# virtual methods
.method public executeStep()Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 509
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationStep;->getProtocolManagerSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v1

    .line 511
    iget-object v2, v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;->access$300(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;)Ljava/util/HashSet;

    move-result-object v2

    new-instance v3, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;

    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    const-string v5, ""

    invoke-direct {v3, v4, v5}, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;-><init>(Lio/olvid/engine/datatypes/Identity;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string v1, "Error: you received an invitation to a group without being part of groupMemberIdentitiesAndSerializedDetails"

    .line 512
    invoke-static {v1}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    return-object v3

    .line 516
    :cond_0
    iget-object v2, v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;

    invoke-virtual {v2}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;->getReceptionChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v2

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->getRemoteIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v11

    .line 519
    iget-object v2, v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;->access$400(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v2

    iget-object v2, v2, Lio/olvid/engine/datatypes/containers/GroupInformation;->groupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2, v11}, Lio/olvid/engine/datatypes/Identity;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v1, "Error: you received an invitation to a group from someone who is not the group owner"

    .line 520
    invoke-static {v1}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    return-object v3

    .line 524
    :cond_1
    iget-object v2, v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationStep;->protocol:Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;

    invoke-virtual {v2}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->getJsonObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v2

    iget-object v3, v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;->access$400(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v3

    iget-object v3, v3, Lio/olvid/engine/datatypes/containers/GroupInformation;->serializedGroupDetailsWithVersionAndPhoto:Ljava/lang/String;

    const-class v4, Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;

    invoke-virtual {v2, v3, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;

    .line 525
    invoke-virtual {v2}, Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;->getGroupDetails()Lio/olvid/engine/engine/types/JsonGroupDetails;

    move-result-object v2

    .line 526
    iget-object v3, v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationStep;->protocol:Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;

    invoke-virtual {v3}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->getJsonObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 528
    iget-object v2, v1, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v3, v1, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v5

    invoke-interface {v2, v3, v11, v5}, Lio/olvid/engine/metamanager/IdentityDelegate;->getContactIdentityTrustLevel(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/TrustLevel;

    move-result-object v2

    .line 529
    sget-object v3, Lio/olvid/engine/datatypes/Constants;->AUTO_ACCEPT_TRUST_LEVEL_THRESHOLD:Lio/olvid/engine/datatypes/TrustLevel;

    invoke-virtual {v2, v3}, Lio/olvid/engine/datatypes/TrustLevel;->compareTo(Ljava/lang/Object;)I

    move-result v3

    const/4 v5, 0x0

    if-ltz v3, :cond_5

    .line 535
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    invoke-static {v11, v2}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createAllConfirmedObliviousChannelsInfo(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v2

    .line 536
    new-instance v3, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationResponseMessage;

    iget-object v4, v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;

    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;->access$400(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v4

    iget-object v4, v4, Lio/olvid/engine/datatypes/containers/GroupInformation;->groupUid:Lio/olvid/engine/datatypes/UID;

    const/4 v6, 0x1

    invoke-direct {v3, v2, v4, v6}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationResponseMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Lio/olvid/engine/datatypes/UID;Z)V

    invoke-virtual {v3}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationResponseMessage;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object v2

    .line 537
    iget-object v3, v1, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v4, v1, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v7

    invoke-interface {v3, v4, v2, v7}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 543
    iget-object v2, v1, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v3, v1, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lio/olvid/engine/metamanager/IdentityDelegate;->getOtherDeviceUidsOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/datatypes/UID;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_2

    .line 545
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    invoke-static {v2}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createAllOwnedConfirmedObliviousChannelsInfo(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v2

    .line 546
    new-instance v3, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$PropagateInvitationResponseMessage;

    invoke-direct {v3, v2, v6}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$PropagateInvitationResponseMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Z)V

    invoke-virtual {v3}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$PropagateInvitationResponseMessage;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object v2

    .line 547
    iget-object v3, v1, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v4, v1, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v7

    invoke-interface {v3, v4, v2, v7}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 554
    :cond_2
    iget-object v2, v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;->access$300(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    sub-int/2addr v2, v6

    new-array v2, v2, [Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;

    .line 556
    iget-object v3, v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;->access$300(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;

    .line 557
    iget-object v8, v7, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v9

    invoke-virtual {v8, v9}, Lio/olvid/engine/datatypes/Identity;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_0

    .line 560
    :cond_3
    aput-object v7, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 564
    :cond_4
    iget-object v12, v1, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v13, v1, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    .line 566
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v14

    iget-object v1, v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;

    .line 567
    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;->access$400(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v15

    new-array v1, v6, [Lio/olvid/engine/datatypes/Identity;

    aput-object v11, v1, v5

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    .line 564
    invoke-interface/range {v12 .. v17}, Lio/olvid/engine/metamanager/IdentityDelegate;->createContactGroup(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/GroupInformation;[Lio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;)V

    .line 586
    new-instance v1, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ResponseSentState;

    invoke-direct {v1}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ResponseSentState;-><init>()V

    return-object v1

    .line 587
    :cond_5
    sget-object v3, Lio/olvid/engine/datatypes/Constants;->USER_CONFIRMATION_TRUST_LEVEL_THRESHOLD:Lio/olvid/engine/datatypes/TrustLevel;

    invoke-virtual {v2, v3}, Lio/olvid/engine/datatypes/TrustLevel;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_8

    .line 590
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v12

    .line 592
    iget-object v2, v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;->access$300(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    new-array v7, v2, [Lio/olvid/engine/datatypes/Identity;

    .line 593
    array-length v2, v7

    new-array v8, v2, [Ljava/lang/String;

    .line 595
    iget-object v2, v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;->access$300(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;

    .line 596
    iget-object v6, v3, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v9

    invoke-virtual {v6, v9}, Lio/olvid/engine/datatypes/Identity;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 597
    aput-object v11, v7, v5

    .line 598
    iget-object v3, v1, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v6, v1, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v9

    invoke-interface {v3, v6, v11, v9}, Lio/olvid/engine/metamanager/IdentityDelegate;->getSerializedPublishedDetailsOfContactIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v5

    goto :goto_2

    .line 600
    :cond_6
    iget-object v6, v3, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;->identity:Lio/olvid/engine/datatypes/Identity;

    aput-object v6, v7, v5

    .line 601
    iget-object v3, v3, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;->serializedDetails:Ljava/lang/String;

    aput-object v3, v8, v5

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 607
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    iget-object v3, v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;->access$400(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v3

    iget-object v5, v3, Lio/olvid/engine/datatypes/containers/GroupInformation;->groupUid:Lio/olvid/engine/datatypes/UID;

    iget-object v3, v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;->access$400(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v3

    iget-object v6, v3, Lio/olvid/engine/datatypes/containers/GroupInformation;->groupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

    iget-object v3, v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;

    invoke-virtual {v3}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;->getServerTimestamp()J

    move-result-wide v9

    invoke-static/range {v4 .. v10}, Lio/olvid/engine/datatypes/containers/DialogType;->createAcceptGroupInviteDialog(Ljava/lang/String;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/datatypes/Identity;[Ljava/lang/String;J)Lio/olvid/engine/datatypes/containers/DialogType;

    move-result-object v3

    invoke-static {v2, v3, v12}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createUserInterfaceChannelInfo(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/DialogType;Ljava/util/UUID;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v2

    .line 608
    new-instance v3, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$DialogAcceptGroupInvitationMessage;

    invoke-direct {v3, v2}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$DialogAcceptGroupInvitationMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    invoke-virtual {v3}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$DialogAcceptGroupInvitationMessage;->generateChannelDialogMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelDialogMessageToSend;

    move-result-object v2

    .line 609
    iget-object v3, v1, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v4, v1, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v5

    invoke-interface {v3, v4, v2, v5}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 615
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationStep;->getProtocolInstanceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v2

    .line 616
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    .line 618
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationStep;->getProtocolId()I

    move-result v5

    const/4 v6, 0x5

    sget-object v7, Lio/olvid/engine/datatypes/Constants;->AUTO_ACCEPT_TRUST_LEVEL_THRESHOLD:Lio/olvid/engine/datatypes/TrustLevel;

    move-object v4, v11

    .line 613
    invoke-static/range {v1 .. v7}, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;->create(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;IILio/olvid/engine/datatypes/TrustLevel;)Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;

    .line 622
    new-instance v1, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;

    iget-object v2, v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;->access$400(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v2

    iget-object v3, v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;->access$300(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;)Ljava/util/HashSet;

    move-result-object v3

    invoke-direct {v1, v2, v12, v3}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;-><init>(Lio/olvid/engine/datatypes/containers/GroupInformation;Ljava/util/UUID;Ljava/util/HashSet;)V

    return-object v1

    .line 626
    :cond_8
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v12

    .line 628
    iget-object v2, v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;->access$300(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    new-array v7, v2, [Lio/olvid/engine/datatypes/Identity;

    .line 629
    array-length v2, v7

    new-array v8, v2, [Ljava/lang/String;

    .line 631
    iget-object v2, v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;->access$300(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;

    .line 632
    iget-object v6, v3, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v9

    invoke-virtual {v6, v9}, Lio/olvid/engine/datatypes/Identity;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 633
    aput-object v11, v7, v5

    .line 634
    iget-object v3, v1, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v6, v1, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v9

    invoke-interface {v3, v6, v11, v9}, Lio/olvid/engine/metamanager/IdentityDelegate;->getSerializedPublishedDetailsOfContactIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v5

    goto :goto_4

    .line 636
    :cond_9
    iget-object v6, v3, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;->identity:Lio/olvid/engine/datatypes/Identity;

    aput-object v6, v7, v5

    .line 637
    iget-object v3, v3, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;->serializedDetails:Ljava/lang/String;

    aput-object v3, v8, v5

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 643
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    iget-object v3, v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;->access$400(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v3

    iget-object v5, v3, Lio/olvid/engine/datatypes/containers/GroupInformation;->groupUid:Lio/olvid/engine/datatypes/UID;

    iget-object v3, v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;

    invoke-virtual {v3}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;->getServerTimestamp()J

    move-result-wide v9

    move-object v6, v11

    invoke-static/range {v4 .. v10}, Lio/olvid/engine/datatypes/containers/DialogType;->createIncreaseGroupOwnerTrustLevelDialog(Ljava/lang/String;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/datatypes/Identity;[Ljava/lang/String;J)Lio/olvid/engine/datatypes/containers/DialogType;

    move-result-object v3

    invoke-static {v2, v3, v12}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createUserInterfaceChannelInfo(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/DialogType;Ljava/util/UUID;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v2

    .line 644
    new-instance v3, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$DialogAcceptGroupInvitationMessage;

    invoke-direct {v3, v2}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$DialogAcceptGroupInvitationMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    invoke-virtual {v3}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$DialogAcceptGroupInvitationMessage;->generateChannelDialogMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelDialogMessageToSend;

    move-result-object v2

    .line 645
    iget-object v3, v1, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v4, v1, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v5

    invoke-interface {v3, v4, v2, v5}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 651
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationStep;->getProtocolInstanceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v2

    .line 652
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    .line 654
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationStep;->getProtocolId()I

    move-result v5

    const/4 v6, 0x5

    sget-object v7, Lio/olvid/engine/datatypes/Constants;->USER_CONFIRMATION_TRUST_LEVEL_THRESHOLD:Lio/olvid/engine/datatypes/TrustLevel;

    move-object v4, v11

    .line 649
    invoke-static/range {v1 .. v7}, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;->create(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;IILio/olvid/engine/datatypes/TrustLevel;)Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;

    .line 658
    new-instance v1, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;

    iget-object v2, v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;->access$400(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v2

    iget-object v3, v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ProcessInvitationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;->access$300(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$GroupInvitationMessage;)Ljava/util/HashSet;

    move-result-object v3

    invoke-direct {v1, v2, v12, v3}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;-><init>(Lio/olvid/engine/datatypes/containers/GroupInformation;Ljava/util/UUID;Ljava/util/HashSet;)V

    return-object v1
.end method
