.class public Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$CheckTrustLevelsAndShowDialogStep;
.super Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;
.source "ContactMutualIntroductionProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckTrustLevelsAndShowDialogStep"
.end annotation


# instance fields
.field private final receivedMessage:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MediatorInvitationMessage;

.field private final startState:Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MediatorInvitationMessage;Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 646
    invoke-virtual {p3}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    invoke-static {}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->createAnyConfirmedObliviousChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;)V

    .line 647
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$CheckTrustLevelsAndShowDialogStep;->startState:Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;

    .line 648
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$CheckTrustLevelsAndShowDialogStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MediatorInvitationMessage;

    return-void
.end method


# virtual methods
.method public executeStep()Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 653
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$CheckTrustLevelsAndShowDialogStep;->getProtocolManagerSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v8

    .line 655
    iget-object v1, v0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$CheckTrustLevelsAndShowDialogStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MediatorInvitationMessage;

    invoke-virtual {v1}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MediatorInvitationMessage;->getReceptionChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->getRemoteIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v9

    .line 658
    iget-object v1, v8, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v2, v8, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$CheckTrustLevelsAndShowDialogStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    invoke-interface {v1, v2, v9, v3}, Lio/olvid/engine/metamanager/IdentityDelegate;->getContactIdentityTrustLevel(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/TrustLevel;

    move-result-object v1

    .line 659
    iget-object v2, v8, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v3, v8, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v4, v0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$CheckTrustLevelsAndShowDialogStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MediatorInvitationMessage;

    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MediatorInvitationMessage;->access$200(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MediatorInvitationMessage;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$CheckTrustLevelsAndShowDialogStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lio/olvid/engine/metamanager/IdentityDelegate;->isIdentityAContactIdentityOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Z

    move-result v2

    const/4 v10, 0x0

    if-nez v2, :cond_2

    .line 660
    sget-object v3, Lio/olvid/engine/datatypes/Constants;->AUTO_ACCEPT_TRUST_LEVEL_THRESHOLD:Lio/olvid/engine/datatypes/TrustLevel;

    invoke-virtual {v1, v3}, Lio/olvid/engine/datatypes/TrustLevel;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_0

    goto/16 :goto_0

    .line 681
    :cond_0
    sget-object v2, Lio/olvid/engine/datatypes/Constants;->USER_CONFIRMATION_TRUST_LEVEL_THRESHOLD:Lio/olvid/engine/datatypes/TrustLevel;

    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/TrustLevel;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 683
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v11

    .line 686
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$CheckTrustLevelsAndShowDialogStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    iget-object v2, v0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$CheckTrustLevelsAndShowDialogStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MediatorInvitationMessage;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MediatorInvitationMessage;->access$400(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MediatorInvitationMessage;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$CheckTrustLevelsAndShowDialogStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MediatorInvitationMessage;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MediatorInvitationMessage;->access$200(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MediatorInvitationMessage;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    iget-object v4, v0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$CheckTrustLevelsAndShowDialogStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MediatorInvitationMessage;

    invoke-virtual {v4}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MediatorInvitationMessage;->getServerTimestamp()J

    move-result-wide v4

    invoke-static {v2, v3, v9, v4, v5}, Lio/olvid/engine/datatypes/containers/DialogType;->createAcceptMediatorInviteDialog(Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;J)Lio/olvid/engine/datatypes/containers/DialogType;

    move-result-object v2

    invoke-static {v1, v2, v11}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createUserInterfaceChannelInfo(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/DialogType;Ljava/util/UUID;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$CheckTrustLevelsAndShowDialogStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v1

    .line 687
    new-instance v2, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$DialogAcceptMediatorInviteMessage;

    invoke-direct {v2, v1}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$DialogAcceptMediatorInviteMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    invoke-virtual {v2}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$DialogAcceptMediatorInviteMessage;->generateChannelDialogMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelDialogMessageToSend;

    move-result-object v1

    .line 688
    iget-object v2, v8, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v3, v8, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$CheckTrustLevelsAndShowDialogStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v4

    invoke-interface {v2, v3, v1, v4}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 694
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$CheckTrustLevelsAndShowDialogStep;->getProtocolInstanceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v2

    .line 695
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$CheckTrustLevelsAndShowDialogStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    .line 697
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$CheckTrustLevelsAndShowDialogStep;->getProtocolId()I

    move-result v5

    const/4 v6, 0x7

    sget-object v7, Lio/olvid/engine/datatypes/Constants;->AUTO_ACCEPT_TRUST_LEVEL_THRESHOLD:Lio/olvid/engine/datatypes/TrustLevel;

    move-object v1, v8

    move-object v4, v9

    .line 692
    invoke-static/range {v1 .. v7}, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;->create(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;IILio/olvid/engine/datatypes/TrustLevel;)Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;

    .line 702
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$CheckTrustLevelsAndShowDialogStep;->getProtocolInstanceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v2

    .line 703
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$CheckTrustLevelsAndShowDialogStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    iget-object v1, v0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$CheckTrustLevelsAndShowDialogStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MediatorInvitationMessage;

    .line 704
    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MediatorInvitationMessage;->access$200(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MediatorInvitationMessage;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    .line 705
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$CheckTrustLevelsAndShowDialogStep;->getProtocolId()I

    move-result v5

    new-instance v7, Lio/olvid/engine/datatypes/TrustLevel;

    invoke-direct {v7, v10, v10}, Lio/olvid/engine/datatypes/TrustLevel;-><init>(II)V

    move-object v1, v8

    .line 700
    invoke-static/range {v1 .. v7}, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;->create(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;IILio/olvid/engine/datatypes/TrustLevel;)Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;

    .line 709
    new-instance v1, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;

    iget-object v2, v0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$CheckTrustLevelsAndShowDialogStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MediatorInvitationMessage;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MediatorInvitationMessage;->access$200(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MediatorInvitationMessage;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    iget-object v3, v0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$CheckTrustLevelsAndShowDialogStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MediatorInvitationMessage;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MediatorInvitationMessage;->access$400(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MediatorInvitationMessage;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v9, v11}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;-><init>(Lio/olvid/engine/datatypes/Identity;Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;Ljava/util/UUID;)V

    return-object v1

    .line 712
    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v11

    .line 715
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$CheckTrustLevelsAndShowDialogStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    iget-object v2, v0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$CheckTrustLevelsAndShowDialogStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MediatorInvitationMessage;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MediatorInvitationMessage;->access$400(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MediatorInvitationMessage;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$CheckTrustLevelsAndShowDialogStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MediatorInvitationMessage;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MediatorInvitationMessage;->access$200(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MediatorInvitationMessage;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    iget-object v4, v0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$CheckTrustLevelsAndShowDialogStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MediatorInvitationMessage;

    invoke-virtual {v4}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MediatorInvitationMessage;->getServerTimestamp()J

    move-result-wide v4

    invoke-static {v2, v3, v9, v4, v5}, Lio/olvid/engine/datatypes/containers/DialogType;->createIncreaseMediatorTrustLevelDialog(Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;J)Lio/olvid/engine/datatypes/containers/DialogType;

    move-result-object v2

    invoke-static {v1, v2, v11}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createUserInterfaceChannelInfo(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/DialogType;Ljava/util/UUID;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$CheckTrustLevelsAndShowDialogStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v1

    .line 716
    new-instance v2, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;

    invoke-direct {v2, v1}, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    invoke-virtual {v2}, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;->generateChannelDialogMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelDialogMessageToSend;

    move-result-object v1

    .line 717
    iget-object v2, v8, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v3, v8, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$CheckTrustLevelsAndShowDialogStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v4

    invoke-interface {v2, v3, v1, v4}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 723
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$CheckTrustLevelsAndShowDialogStep;->getProtocolInstanceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v2

    .line 724
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$CheckTrustLevelsAndShowDialogStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    .line 726
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$CheckTrustLevelsAndShowDialogStep;->getProtocolId()I

    move-result v5

    const/4 v6, 0x7

    sget-object v7, Lio/olvid/engine/datatypes/Constants;->USER_CONFIRMATION_TRUST_LEVEL_THRESHOLD:Lio/olvid/engine/datatypes/TrustLevel;

    move-object v1, v8

    move-object v4, v9

    .line 721
    invoke-static/range {v1 .. v7}, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;->create(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;IILio/olvid/engine/datatypes/TrustLevel;)Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;

    .line 731
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$CheckTrustLevelsAndShowDialogStep;->getProtocolInstanceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v2

    .line 732
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$CheckTrustLevelsAndShowDialogStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    iget-object v1, v0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$CheckTrustLevelsAndShowDialogStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MediatorInvitationMessage;

    .line 733
    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MediatorInvitationMessage;->access$200(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MediatorInvitationMessage;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    .line 734
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$CheckTrustLevelsAndShowDialogStep;->getProtocolId()I

    move-result v5

    new-instance v7, Lio/olvid/engine/datatypes/TrustLevel;

    invoke-direct {v7, v10, v10}, Lio/olvid/engine/datatypes/TrustLevel;-><init>(II)V

    move-object v1, v8

    .line 729
    invoke-static/range {v1 .. v7}, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;->create(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;IILio/olvid/engine/datatypes/TrustLevel;)Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;

    .line 738
    new-instance v1, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;

    iget-object v2, v0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$CheckTrustLevelsAndShowDialogStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MediatorInvitationMessage;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MediatorInvitationMessage;->access$200(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MediatorInvitationMessage;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    iget-object v3, v0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$CheckTrustLevelsAndShowDialogStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MediatorInvitationMessage;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MediatorInvitationMessage;->access$400(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MediatorInvitationMessage;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v9, v11}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;-><init>(Lio/olvid/engine/datatypes/Identity;Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;Ljava/util/UUID;)V

    return-object v1

    .line 662
    :cond_2
    :goto_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    .line 665
    iget-object v1, v8, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v3, v8, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$CheckTrustLevelsAndShowDialogStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lio/olvid/engine/metamanager/IdentityDelegate;->getDeviceUidsOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    .line 667
    iget-object v11, v8, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v12, v8, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    .line 669
    invoke-static {}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol;->access$300()[B

    move-result-object v13

    const/4 v3, 0x3

    new-array v14, v3, [Lio/olvid/engine/datatypes/Identity;

    aput-object v9, v14, v10

    iget-object v3, v0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$CheckTrustLevelsAndShowDialogStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MediatorInvitationMessage;

    .line 670
    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MediatorInvitationMessage;->access$200(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MediatorInvitationMessage;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v14, v4

    const/4 v3, 0x2

    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$CheckTrustLevelsAndShowDialogStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v5

    aput-object v5, v14, v3

    .line 671
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$CheckTrustLevelsAndShowDialogStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v15

    .line 672
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$CheckTrustLevelsAndShowDialogStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v16

    .line 667
    invoke-interface/range {v11 .. v16}, Lio/olvid/engine/metamanager/IdentityDelegate;->signIdentities(Lio/olvid/engine/datatypes/Session;[B[Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/crypto/PRNGService;)[B

    move-result-object v3

    .line 676
    iget-object v5, v0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$CheckTrustLevelsAndShowDialogStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MediatorInvitationMessage;

    invoke-static {v5}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MediatorInvitationMessage;->access$200(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MediatorInvitationMessage;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v5

    invoke-static {v5}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createAsymmetricBroadcastChannelInfo(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v5

    invoke-virtual {v0, v5}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$CheckTrustLevelsAndShowDialogStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v5

    .line 677
    new-instance v7, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$NotifyContactOfAcceptedInvitationMessage;

    invoke-direct {v7, v5, v1, v3}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$NotifyContactOfAcceptedInvitationMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;[Lio/olvid/engine/datatypes/UID;[B)V

    invoke-virtual {v7}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$NotifyContactOfAcceptedInvitationMessage;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object v1

    .line 678
    iget-object v3, v8, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v5, v8, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$CheckTrustLevelsAndShowDialogStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v7

    invoke-interface {v3, v5, v1, v7}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 680
    new-instance v1, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;

    iget-object v3, v0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$CheckTrustLevelsAndShowDialogStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MediatorInvitationMessage;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MediatorInvitationMessage;->access$200(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MediatorInvitationMessage;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    iget-object v5, v0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$CheckTrustLevelsAndShowDialogStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MediatorInvitationMessage;

    invoke-static {v5}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MediatorInvitationMessage;->access$400(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MediatorInvitationMessage;)Ljava/lang/String;

    move-result-object v5

    xor-int/lit8 v7, v2, 0x1

    move-object v2, v1

    move-object v4, v5

    move-object v5, v9

    invoke-direct/range {v2 .. v7}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;-><init>(Lio/olvid/engine/datatypes/Identity;Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;Ljava/util/UUID;I)V

    return-object v1
.end method
