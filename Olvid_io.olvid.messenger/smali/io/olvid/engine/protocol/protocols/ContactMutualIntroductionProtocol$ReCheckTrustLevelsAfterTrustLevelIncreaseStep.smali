.class public Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;
.super Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;
.source "ContactMutualIntroductionProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReCheckTrustLevelsAfterTrustLevelIncreaseStep"
.end annotation


# instance fields
.field private final receivedMessage:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$TrustLevelIncreasedMessage;

.field private final startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$TrustLevelIncreasedMessage;Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 749
    invoke-virtual {p3}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    invoke-static {}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->createLocalChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;)V

    .line 750
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;

    .line 751
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$TrustLevelIncreasedMessage;

    return-void
.end method


# virtual methods
.method public executeStep()Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 756
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->getProtocolManagerSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v7

    .line 759
    iget-object v0, v7, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v1, v7, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;->access$500(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lio/olvid/engine/metamanager/IdentityDelegate;->getContactIdentityTrustLevel(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/TrustLevel;

    move-result-object v0

    .line 760
    iget-object v1, v7, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v2, v7, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;->access$600(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lio/olvid/engine/metamanager/IdentityDelegate;->isIdentityAContactIdentityOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Z

    move-result v1

    const/4 v8, 0x0

    if-nez v1, :cond_4

    .line 761
    sget-object v2, Lio/olvid/engine/datatypes/Constants;->AUTO_ACCEPT_TRUST_LEVEL_THRESHOLD:Lio/olvid/engine/datatypes/TrustLevel;

    invoke-virtual {v0, v2}, Lio/olvid/engine/datatypes/TrustLevel;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_0

    goto/16 :goto_0

    .line 796
    :cond_0
    sget-object v1, Lio/olvid/engine/datatypes/Constants;->USER_CONFIRMATION_TRUST_LEVEL_THRESHOLD:Lio/olvid/engine/datatypes/TrustLevel;

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/TrustLevel;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_2

    .line 800
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;->access$800(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;->access$600(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;->access$500(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v1, v2, v3, v4, v5}, Lio/olvid/engine/datatypes/containers/DialogType;->createAcceptMediatorInviteDialog(Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;J)Lio/olvid/engine/datatypes/containers/DialogType;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;->access$700(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;)Ljava/util/UUID;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createUserInterfaceChannelInfo(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/DialogType;Ljava/util/UUID;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v0

    .line 801
    new-instance v1, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$DialogAcceptMediatorInviteMessage;

    invoke-direct {v1, v0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$DialogAcceptMediatorInviteMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    invoke-virtual {v1}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$DialogAcceptMediatorInviteMessage;->generateChannelDialogMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelDialogMessageToSend;

    move-result-object v0

    .line 802
    iget-object v1, v7, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v2, v7, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v3

    invoke-interface {v1, v2, v0, v3}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 811
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->getProtocolInstanceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v0

    .line 812
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$TrustLevelIncreasedMessage;

    iget-object v2, v2, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$TrustLevelIncreasedMessage;->trustLevelIncreasedIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 809
    invoke-static {v7, v0, v1, v2}, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;->get(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 815
    invoke-virtual {v0}, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;->delete()V

    .line 819
    :cond_1
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->getProtocolInstanceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    .line 820
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    iget-object v0, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;

    .line 821
    invoke-static {v0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;->access$500(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    .line 822
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->getProtocolId()I

    move-result v4

    const/4 v5, 0x7

    sget-object v6, Lio/olvid/engine/datatypes/Constants;->AUTO_ACCEPT_TRUST_LEVEL_THRESHOLD:Lio/olvid/engine/datatypes/TrustLevel;

    move-object v0, v7

    .line 817
    invoke-static/range {v0 .. v6}, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;->create(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;IILio/olvid/engine/datatypes/TrustLevel;)Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;

    .line 827
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->getProtocolInstanceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    .line 828
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    iget-object v0, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;

    .line 829
    invoke-static {v0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;->access$600(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    .line 830
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->getProtocolId()I

    move-result v4

    new-instance v6, Lio/olvid/engine/datatypes/TrustLevel;

    invoke-direct {v6, v8, v8}, Lio/olvid/engine/datatypes/TrustLevel;-><init>(II)V

    move-object v0, v7

    .line 825
    invoke-static/range {v0 .. v6}, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;->create(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;IILio/olvid/engine/datatypes/TrustLevel;)Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;

    .line 835
    iget-object v0, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;

    return-object v0

    .line 840
    :cond_2
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;->access$800(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;->access$600(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;->access$500(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$TrustLevelIncreasedMessage;

    invoke-virtual {v4}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$TrustLevelIncreasedMessage;->getServerTimestamp()J

    move-result-wide v4

    invoke-static {v1, v2, v3, v4, v5}, Lio/olvid/engine/datatypes/containers/DialogType;->createIncreaseMediatorTrustLevelDialog(Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;J)Lio/olvid/engine/datatypes/containers/DialogType;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;->access$700(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;)Ljava/util/UUID;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createUserInterfaceChannelInfo(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/DialogType;Ljava/util/UUID;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v0

    .line 841
    new-instance v1, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;

    invoke-direct {v1, v0}, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    invoke-virtual {v1}, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;->generateChannelDialogMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelDialogMessageToSend;

    move-result-object v0

    .line 842
    iget-object v1, v7, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v2, v7, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v3

    invoke-interface {v1, v2, v0, v3}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 850
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->getProtocolInstanceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v0

    .line 851
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$TrustLevelIncreasedMessage;

    iget-object v2, v2, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$TrustLevelIncreasedMessage;->trustLevelIncreasedIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 848
    invoke-static {v7, v0, v1, v2}, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;->get(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 854
    invoke-virtual {v0}, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;->delete()V

    .line 858
    :cond_3
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->getProtocolInstanceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    .line 859
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    iget-object v0, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;

    .line 860
    invoke-static {v0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;->access$500(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    .line 861
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->getProtocolId()I

    move-result v4

    const/4 v5, 0x7

    sget-object v6, Lio/olvid/engine/datatypes/Constants;->USER_CONFIRMATION_TRUST_LEVEL_THRESHOLD:Lio/olvid/engine/datatypes/TrustLevel;

    move-object v0, v7

    .line 856
    invoke-static/range {v0 .. v6}, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;->create(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;IILio/olvid/engine/datatypes/TrustLevel;)Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;

    .line 866
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->getProtocolInstanceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    .line 867
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    iget-object v0, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;

    .line 868
    invoke-static {v0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;->access$600(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    .line 869
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->getProtocolId()I

    move-result v4

    new-instance v6, Lio/olvid/engine/datatypes/TrustLevel;

    invoke-direct {v6, v8, v8}, Lio/olvid/engine/datatypes/TrustLevel;-><init>(II)V

    move-object v0, v7

    .line 864
    invoke-static/range {v0 .. v6}, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;->create(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;IILio/olvid/engine/datatypes/TrustLevel;)Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;

    .line 873
    iget-object v0, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;

    return-object v0

    .line 764
    :cond_4
    :goto_0
    iget-object v0, v7, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v2, v7, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lio/olvid/engine/metamanager/IdentityDelegate;->getDeviceUidsOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/datatypes/UID;

    move-result-object v0

    .line 766
    iget-object v9, v7, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v10, v7, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    .line 768
    invoke-static {}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol;->access$300()[B

    move-result-object v11

    const/4 v2, 0x3

    new-array v12, v2, [Lio/olvid/engine/datatypes/Identity;

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;

    .line 769
    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;->access$500(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    aput-object v2, v12, v8

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;->access$600(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v12, v3

    const/4 v2, 0x2

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    aput-object v4, v12, v2

    .line 770
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v13

    .line 771
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v14

    .line 766
    invoke-interface/range {v9 .. v14}, Lio/olvid/engine/metamanager/IdentityDelegate;->signIdentities(Lio/olvid/engine/datatypes/Session;[B[Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/crypto/PRNGService;)[B

    move-result-object v2

    .line 775
    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;

    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;->access$600(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    invoke-static {v4}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createAsymmetricBroadcastChannelInfo(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v4

    .line 776
    new-instance v5, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$NotifyContactOfAcceptedInvitationMessage;

    invoke-direct {v5, v4, v0, v2}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$NotifyContactOfAcceptedInvitationMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;[Lio/olvid/engine/datatypes/UID;[B)V

    invoke-virtual {v5}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$NotifyContactOfAcceptedInvitationMessage;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object v0

    .line 777
    iget-object v2, v7, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v4, v7, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v5

    invoke-interface {v2, v4, v0, v5}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    if-eqz v1, :cond_5

    .line 783
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    invoke-static {}, Lio/olvid/engine/datatypes/containers/DialogType;->createDeleteDialog()Lio/olvid/engine/datatypes/containers/DialogType;

    move-result-object v2

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;

    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;->access$700(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;)Ljava/util/UUID;

    move-result-object v4

    invoke-static {v0, v2, v4}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createUserInterfaceChannelInfo(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/DialogType;Ljava/util/UUID;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v0

    .line 784
    new-instance v2, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;

    invoke-direct {v2, v0}, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    invoke-virtual {v2}, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;->generateChannelDialogMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelDialogMessageToSend;

    move-result-object v0

    .line 785
    iget-object v2, v7, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v4, v7, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v5

    invoke-interface {v2, v4, v0, v5}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    goto :goto_1

    .line 790
    :cond_5
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;->access$800(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;

    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;->access$600(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    iget-object v5, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;

    invoke-static {v5}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;->access$500(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lio/olvid/engine/datatypes/containers/DialogType;->createMediatorInviteAcceptedDialog(Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/DialogType;

    move-result-object v2

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;

    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;->access$700(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;)Ljava/util/UUID;

    move-result-object v4

    invoke-static {v0, v2, v4}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createUserInterfaceChannelInfo(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/DialogType;Ljava/util/UUID;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v0

    .line 791
    new-instance v2, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;

    invoke-direct {v2, v0}, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    invoke-virtual {v2}, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;->generateChannelDialogMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelDialogMessageToSend;

    move-result-object v0

    .line 792
    iget-object v2, v7, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v4, v7, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v5

    invoke-interface {v2, v4, v0, v5}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 795
    :goto_1
    new-instance v0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;->access$600(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v7

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;->access$800(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;)Ljava/lang/String;

    move-result-object v8

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;->access$500(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v9

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$ReCheckTrustLevelsAfterTrustLevelIncreaseStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;->access$700(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationReceivedState;)Ljava/util/UUID;

    move-result-object v10

    xor-int/lit8 v11, v1, 0x1

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$InvitationAcceptedState;-><init>(Lio/olvid/engine/datatypes/Identity;Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;Ljava/util/UUID;I)V

    return-object v0
.end method
