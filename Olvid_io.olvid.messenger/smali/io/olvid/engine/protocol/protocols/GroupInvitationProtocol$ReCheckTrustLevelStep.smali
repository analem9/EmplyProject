.class public Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;
.super Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;
.source "GroupInvitationProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReCheckTrustLevelStep"
.end annotation


# instance fields
.field private final receivedMessage:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$TrustLevelIncreasedMessage;

.field private final startState:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$TrustLevelIncreasedMessage;Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 772
    invoke-virtual {p3}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    invoke-static {}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->createLocalChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;)V

    .line 773
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->startState:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;

    .line 774
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$TrustLevelIncreasedMessage;

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

    .line 779
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->getProtocolManagerSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v1

    .line 781
    iget-object v2, v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$TrustLevelIncreasedMessage;

    iget-object v2, v2, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$TrustLevelIncreasedMessage;->trustLevelIncreasedIdentity:Lio/olvid/engine/datatypes/Identity;

    iget-object v3, v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->startState:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;->access$800(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v3

    iget-object v3, v3, Lio/olvid/engine/datatypes/containers/GroupInformation;->groupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2, v3}, Lio/olvid/engine/datatypes/Identity;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "Warning: a GroupInvitationProtocol receive a TrustLevelIncreasedMessage for an Identity that is not the groupOwner"

    .line 782
    invoke-static {v1}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    .line 783
    iget-object v1, v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->startState:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;

    return-object v1

    .line 786
    :cond_0
    iget-object v2, v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->startState:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;->access$800(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v2

    iget-object v10, v2, Lio/olvid/engine/datatypes/containers/GroupInformation;->groupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 788
    iget-object v2, v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->protocol:Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;

    invoke-virtual {v2}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->getJsonObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v2

    iget-object v3, v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->startState:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;->access$800(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v3

    iget-object v3, v3, Lio/olvid/engine/datatypes/containers/GroupInformation;->serializedGroupDetailsWithVersionAndPhoto:Ljava/lang/String;

    const-class v4, Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;

    invoke-virtual {v2, v3, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;

    .line 789
    invoke-virtual {v2}, Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;->getGroupDetails()Lio/olvid/engine/engine/types/JsonGroupDetails;

    move-result-object v2

    .line 790
    iget-object v3, v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->protocol:Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;

    invoke-virtual {v3}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;->getJsonObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 792
    iget-object v2, v1, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v3, v1, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    invoke-interface {v2, v3, v10, v4}, Lio/olvid/engine/metamanager/IdentityDelegate;->getContactIdentityTrustLevel(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/TrustLevel;

    move-result-object v2

    .line 793
    sget-object v3, Lio/olvid/engine/datatypes/Constants;->AUTO_ACCEPT_TRUST_LEVEL_THRESHOLD:Lio/olvid/engine/datatypes/TrustLevel;

    invoke-virtual {v2, v3}, Lio/olvid/engine/datatypes/TrustLevel;->compareTo(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, 0x0

    if-ltz v3, :cond_4

    .line 797
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    invoke-static {v10, v2}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createAllConfirmedObliviousChannelsInfo(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v2

    .line 798
    new-instance v3, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationResponseMessage;

    iget-object v5, v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->startState:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;

    invoke-static {v5}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;->access$800(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v5

    iget-object v5, v5, Lio/olvid/engine/datatypes/containers/GroupInformation;->groupUid:Lio/olvid/engine/datatypes/UID;

    const/4 v6, 0x1

    invoke-direct {v3, v2, v5, v6}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationResponseMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Lio/olvid/engine/datatypes/UID;Z)V

    invoke-virtual {v3}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationResponseMessage;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object v2

    .line 799
    iget-object v3, v1, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v5, v1, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v7

    invoke-interface {v3, v5, v2, v7}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 805
    iget-object v2, v1, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v3, v1, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Lio/olvid/engine/metamanager/IdentityDelegate;->getOtherDeviceUidsOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/datatypes/UID;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_1

    .line 807
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    invoke-static {v2}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createAllOwnedConfirmedObliviousChannelsInfo(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v2

    .line 808
    new-instance v3, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$PropagateInvitationResponseMessage;

    invoke-direct {v3, v2, v6}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$PropagateInvitationResponseMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Z)V

    invoke-virtual {v3}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$PropagateInvitationResponseMessage;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object v2

    .line 809
    iget-object v3, v1, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v5, v1, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v7

    invoke-interface {v3, v5, v2, v7}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 816
    :cond_1
    iget-object v2, v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->startState:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;->access$900(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    sub-int/2addr v2, v6

    new-array v2, v2, [Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;

    .line 818
    iget-object v3, v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->startState:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;->access$900(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;

    .line 819
    iget-object v8, v7, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v9

    invoke-virtual {v8, v9}, Lio/olvid/engine/datatypes/Identity;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_0

    .line 822
    :cond_2
    aput-object v7, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 826
    :cond_3
    iget-object v12, v1, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v13, v1, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    .line 828
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v14

    iget-object v3, v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->startState:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;

    .line 829
    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;->access$800(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v15

    new-array v3, v6, [Lio/olvid/engine/datatypes/Identity;

    aput-object v10, v3, v4

    move-object/from16 v16, v3

    move-object/from16 v17, v2

    .line 826
    invoke-interface/range {v12 .. v17}, Lio/olvid/engine/metamanager/IdentityDelegate;->createContactGroup(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/GroupInformation;[Lio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;)V

    .line 837
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    iget-object v3, v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->startState:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;

    .line 840
    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;->access$800(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v3

    iget-object v3, v3, Lio/olvid/engine/datatypes/containers/GroupInformation;->groupUid:Lio/olvid/engine/datatypes/UID;

    iget-object v4, v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->startState:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;

    .line 841
    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;->access$800(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v4

    iget-object v4, v4, Lio/olvid/engine/datatypes/containers/GroupInformation;->groupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 838
    invoke-static {v11, v3, v4}, Lio/olvid/engine/datatypes/containers/DialogType;->createGroupJoinedDialog(Ljava/lang/String;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/DialogType;

    move-result-object v3

    iget-object v4, v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->startState:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;

    .line 843
    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;->access$600(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;)Ljava/util/UUID;

    move-result-object v4

    .line 837
    invoke-static {v2, v3, v4}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createUserInterfaceChannelInfo(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/DialogType;Ljava/util/UUID;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v2

    .line 844
    new-instance v3, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;

    invoke-direct {v3, v2}, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    invoke-virtual {v3}, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;->generateChannelDialogMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelDialogMessageToSend;

    move-result-object v2

    .line 845
    iget-object v3, v1, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v1, v1, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v4

    invoke-interface {v3, v1, v2, v4}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 848
    new-instance v1, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ResponseSentState;

    invoke-direct {v1}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ResponseSentState;-><init>()V

    return-object v1

    .line 849
    :cond_4
    sget-object v3, Lio/olvid/engine/datatypes/Constants;->USER_CONFIRMATION_TRUST_LEVEL_THRESHOLD:Lio/olvid/engine/datatypes/TrustLevel;

    invoke-virtual {v2, v3}, Lio/olvid/engine/datatypes/TrustLevel;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_8

    .line 852
    iget-object v2, v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->startState:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;->access$900(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    new-array v14, v2, [Lio/olvid/engine/datatypes/Identity;

    .line 853
    array-length v2, v14

    new-array v15, v2, [Ljava/lang/String;

    .line 855
    iget-object v2, v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->startState:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;->access$900(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;

    .line 856
    iget-object v5, v3, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/olvid/engine/datatypes/Identity;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 857
    aput-object v10, v14, v4

    .line 858
    iget-object v3, v1, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v5, v1, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v6

    invoke-interface {v3, v5, v10, v6}, Lio/olvid/engine/metamanager/IdentityDelegate;->getSerializedPublishedDetailsOfContactIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v15, v4

    goto :goto_2

    .line 860
    :cond_5
    iget-object v5, v3, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;->identity:Lio/olvid/engine/datatypes/Identity;

    aput-object v5, v14, v4

    .line 861
    iget-object v3, v3, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;->serializedDetails:Ljava/lang/String;

    aput-object v3, v15, v4

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 867
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    iget-object v3, v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->startState:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;->access$800(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v3

    iget-object v12, v3, Lio/olvid/engine/datatypes/containers/GroupInformation;->groupUid:Lio/olvid/engine/datatypes/UID;

    iget-object v3, v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->startState:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;->access$800(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v3

    iget-object v13, v3, Lio/olvid/engine/datatypes/containers/GroupInformation;->groupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

    iget-object v3, v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$TrustLevelIncreasedMessage;

    invoke-virtual {v3}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$TrustLevelIncreasedMessage;->getServerTimestamp()J

    move-result-wide v16

    invoke-static/range {v11 .. v17}, Lio/olvid/engine/datatypes/containers/DialogType;->createAcceptGroupInviteDialog(Ljava/lang/String;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/datatypes/Identity;[Ljava/lang/String;J)Lio/olvid/engine/datatypes/containers/DialogType;

    move-result-object v3

    iget-object v4, v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->startState:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;

    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;->access$600(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;)Ljava/util/UUID;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createUserInterfaceChannelInfo(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/DialogType;Ljava/util/UUID;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v2

    .line 868
    new-instance v3, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$DialogAcceptGroupInvitationMessage;

    invoke-direct {v3, v2}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$DialogAcceptGroupInvitationMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    invoke-virtual {v3}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$DialogAcceptGroupInvitationMessage;->generateChannelDialogMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelDialogMessageToSend;

    move-result-object v2

    .line 869
    iget-object v3, v1, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v4, v1, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v5

    invoke-interface {v3, v4, v2, v5}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 876
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->getProtocolInstanceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v2

    .line 877
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    iget-object v4, v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$TrustLevelIncreasedMessage;

    iget-object v4, v4, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$TrustLevelIncreasedMessage;->trustLevelIncreasedIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 874
    invoke-static {v1, v2, v3, v4}, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;->get(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 880
    invoke-virtual {v2}, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;->delete()V

    .line 884
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->getProtocolInstanceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v2

    .line 885
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    .line 887
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->getProtocolId()I

    move-result v5

    const/4 v6, 0x5

    sget-object v7, Lio/olvid/engine/datatypes/Constants;->AUTO_ACCEPT_TRUST_LEVEL_THRESHOLD:Lio/olvid/engine/datatypes/TrustLevel;

    move-object v4, v10

    .line 882
    invoke-static/range {v1 .. v7}, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;->create(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;IILio/olvid/engine/datatypes/TrustLevel;)Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;

    .line 892
    new-instance v1, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;

    iget-object v2, v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->startState:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;->access$800(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v2

    iget-object v3, v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->startState:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;->access$600(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;)Ljava/util/UUID;

    move-result-object v3

    iget-object v4, v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->startState:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;

    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;->access$900(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;)Ljava/util/HashSet;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;-><init>(Lio/olvid/engine/datatypes/containers/GroupInformation;Ljava/util/UUID;Ljava/util/HashSet;)V

    return-object v1

    .line 896
    :cond_8
    iget-object v2, v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->startState:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;->access$900(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    new-array v6, v2, [Lio/olvid/engine/datatypes/Identity;

    .line 897
    array-length v2, v6

    new-array v7, v2, [Ljava/lang/String;

    .line 899
    iget-object v2, v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->startState:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;->access$900(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;)Ljava/util/HashSet;

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

    .line 900
    iget-object v5, v3, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v8

    invoke-virtual {v5, v8}, Lio/olvid/engine/datatypes/Identity;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 901
    aput-object v10, v6, v4

    .line 902
    iget-object v3, v1, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v5, v1, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v8

    invoke-interface {v3, v5, v10, v8}, Lio/olvid/engine/metamanager/IdentityDelegate;->getSerializedPublishedDetailsOfContactIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v4

    goto :goto_4

    .line 904
    :cond_9
    iget-object v5, v3, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;->identity:Lio/olvid/engine/datatypes/Identity;

    aput-object v5, v6, v4

    .line 905
    iget-object v3, v3, Lio/olvid/engine/datatypes/containers/IdentityWithSerializedDetails;->serializedDetails:Ljava/lang/String;

    aput-object v3, v7, v4

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 911
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    iget-object v3, v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->startState:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;->access$800(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v3

    iget-object v4, v3, Lio/olvid/engine/datatypes/containers/GroupInformation;->groupUid:Lio/olvid/engine/datatypes/UID;

    iget-object v3, v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$TrustLevelIncreasedMessage;

    invoke-virtual {v3}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$TrustLevelIncreasedMessage;->getServerTimestamp()J

    move-result-wide v8

    move-object v3, v11

    move-object v5, v10

    invoke-static/range {v3 .. v9}, Lio/olvid/engine/datatypes/containers/DialogType;->createIncreaseGroupOwnerTrustLevelDialog(Ljava/lang/String;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/datatypes/Identity;[Ljava/lang/String;J)Lio/olvid/engine/datatypes/containers/DialogType;

    move-result-object v3

    iget-object v4, v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->startState:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;

    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;->access$600(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;)Ljava/util/UUID;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createUserInterfaceChannelInfo(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/DialogType;Ljava/util/UUID;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v2

    .line 912
    new-instance v3, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$DialogAcceptGroupInvitationMessage;

    invoke-direct {v3, v2}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$DialogAcceptGroupInvitationMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    invoke-virtual {v3}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$DialogAcceptGroupInvitationMessage;->generateChannelDialogMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelDialogMessageToSend;

    move-result-object v2

    .line 913
    iget-object v3, v1, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v4, v1, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v5

    invoke-interface {v3, v4, v2, v5}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 920
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->getProtocolInstanceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v2

    .line 921
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    iget-object v4, v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$TrustLevelIncreasedMessage;

    iget-object v4, v4, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$TrustLevelIncreasedMessage;->trustLevelIncreasedIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 918
    invoke-static {v1, v2, v3, v4}, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;->get(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 924
    invoke-virtual {v2}, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;->delete()V

    .line 928
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->getProtocolInstanceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v2

    .line 929
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    .line 931
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->getProtocolId()I

    move-result v5

    const/4 v6, 0x5

    sget-object v7, Lio/olvid/engine/datatypes/Constants;->USER_CONFIRMATION_TRUST_LEVEL_THRESHOLD:Lio/olvid/engine/datatypes/TrustLevel;

    move-object v4, v10

    .line 926
    invoke-static/range {v1 .. v7}, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;->create(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;IILio/olvid/engine/datatypes/TrustLevel;)Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;

    .line 936
    new-instance v1, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;

    iget-object v2, v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->startState:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;->access$800(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;)Lio/olvid/engine/datatypes/containers/GroupInformation;

    move-result-object v2

    iget-object v3, v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->startState:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;->access$600(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;)Ljava/util/UUID;

    move-result-object v3

    iget-object v4, v0, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$ReCheckTrustLevelStep;->startState:Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;

    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;->access$900(Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;)Ljava/util/HashSet;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lio/olvid/engine/protocol/protocols/GroupInvitationProtocol$InvitationReceivedState;-><init>(Lio/olvid/engine/datatypes/containers/GroupInformation;Ljava/util/UUID;Ljava/util/HashSet;)V

    return-object v1
.end method
