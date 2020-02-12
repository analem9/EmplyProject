.class public Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$NotifyMutualTrustEstablishedStep;
.super Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;
.source "ContactMutualIntroductionProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotifyMutualTrustEstablishedStep"
.end annotation


# instance fields
.field private final receivedMessage:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$AckMessage;

.field private final startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$WaitingForAckState;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$WaitingForAckState;Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$AckMessage;Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1090
    invoke-virtual {p3}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    invoke-static {}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->createAsymmetricChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;)V

    .line 1091
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$NotifyMutualTrustEstablishedStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$WaitingForAckState;

    .line 1092
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$NotifyMutualTrustEstablishedStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$AckMessage;

    return-void
.end method


# virtual methods
.method public executeStep()Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1097
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$NotifyMutualTrustEstablishedStep;->getProtocolManagerSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0

    .line 1101
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$NotifyMutualTrustEstablishedStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$WaitingForAckState;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$WaitingForAckState;->access$2300(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$WaitingForAckState;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 1104
    :cond_0
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$NotifyMutualTrustEstablishedStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$NotifyMutualTrustEstablishedStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$WaitingForAckState;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$WaitingForAckState;->access$2400(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$WaitingForAckState;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$NotifyMutualTrustEstablishedStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$WaitingForAckState;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$WaitingForAckState;->access$2500(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$WaitingForAckState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    invoke-static {v2, v3}, Lio/olvid/engine/datatypes/containers/DialogType;->createMutualTrustConfirmedDialog(Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/DialogType;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$NotifyMutualTrustEstablishedStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$WaitingForAckState;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$WaitingForAckState;->access$2600(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$WaitingForAckState;)Ljava/util/UUID;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createUserInterfaceChannelInfo(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/DialogType;Ljava/util/UUID;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$NotifyMutualTrustEstablishedStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v1

    .line 1105
    new-instance v2, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;

    invoke-direct {v2, v1}, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    invoke-virtual {v2}, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;->generateChannelDialogMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelDialogMessageToSend;

    move-result-object v1

    .line 1106
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v0, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$NotifyMutualTrustEstablishedStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v3

    invoke-interface {v2, v0, v1, v3}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    goto :goto_0

    .line 1110
    :cond_1
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$NotifyMutualTrustEstablishedStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$NotifyMutualTrustEstablishedStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$WaitingForAckState;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$WaitingForAckState;->access$2400(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$WaitingForAckState;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$NotifyMutualTrustEstablishedStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$WaitingForAckState;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$WaitingForAckState;->access$2500(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$WaitingForAckState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$NotifyMutualTrustEstablishedStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$WaitingForAckState;

    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$WaitingForAckState;->access$2700(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$WaitingForAckState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lio/olvid/engine/datatypes/containers/DialogType;->createAutoConfirmedContactIntroductionDialog(Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/DialogType;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$NotifyMutualTrustEstablishedStep;->startState:Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$WaitingForAckState;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$WaitingForAckState;->access$2600(Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$WaitingForAckState;)Ljava/util/UUID;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createUserInterfaceChannelInfo(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/DialogType;Ljava/util/UUID;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$NotifyMutualTrustEstablishedStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v1

    .line 1111
    new-instance v2, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;

    invoke-direct {v2, v1}, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    invoke-virtual {v2}, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;->generateChannelDialogMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelDialogMessageToSend;

    move-result-object v1

    .line 1112
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v0, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$NotifyMutualTrustEstablishedStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v3

    invoke-interface {v2, v0, v1, v3}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 1121
    :goto_0
    new-instance v0, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MutualTrustEstablishedState;

    invoke-direct {v0}, Lio/olvid/engine/protocol/protocols/ContactMutualIntroductionProtocol$MutualTrustEstablishedState;-><init>()V

    return-object v0
.end method
