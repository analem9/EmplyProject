.class public Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ShowSasDialogAndSendDecommitmentStep;
.super Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;
.source "TrustEstablishmentProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShowSasDialogAndSendDecommitmentStep"
.end annotation


# instance fields
.field private final receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendBobSeedMessage;

.field private final startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForSeedState;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForSeedState;Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendBobSeedMessage;Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1118
    invoke-virtual {p3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    invoke-static {}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->createAsymmetricChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;)V

    .line 1119
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ShowSasDialogAndSendDecommitmentStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForSeedState;

    .line 1120
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ShowSasDialogAndSendDecommitmentStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendBobSeedMessage;

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

    .line 1125
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ShowSasDialogAndSendDecommitmentStep;->getProtocolManagerSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0

    .line 1129
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ShowSasDialogAndSendDecommitmentStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForSeedState;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForSeedState;->access$2300(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForSeedState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ShowSasDialogAndSendDecommitmentStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendBobSeedMessage;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendBobSeedMessage;->access$2400(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendBobSeedMessage;)[Lio/olvid/engine/datatypes/UID;

    move-result-object v2

    invoke-static {v1, v2}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createAsymmetricChannelInfo(Lio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ShowSasDialogAndSendDecommitmentStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v1

    .line 1130
    new-instance v2, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendDecommitmentMessage;

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ShowSasDialogAndSendDecommitmentStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForSeedState;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForSeedState;->access$2500(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForSeedState;)[B

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendDecommitmentMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;[B)V

    invoke-virtual {v2}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendDecommitmentMessage;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object v1

    .line 1131
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ShowSasDialogAndSendDecommitmentStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v4

    invoke-interface {v2, v3, v1, v4}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 1134
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ShowSasDialogAndSendDecommitmentStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForSeedState;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForSeedState;->access$2600(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForSeedState;)Lio/olvid/engine/datatypes/Seed;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ShowSasDialogAndSendDecommitmentStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendBobSeedMessage;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendBobSeedMessage;->access$2700(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendBobSeedMessage;)Lio/olvid/engine/datatypes/Seed;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Lio/olvid/engine/crypto/SAS;->compute(Lio/olvid/engine/datatypes/Seed;Lio/olvid/engine/datatypes/Seed;I)[B

    move-result-object v1

    .line 1137
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ShowSasDialogAndSendDecommitmentStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ShowSasDialogAndSendDecommitmentStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendBobSeedMessage;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendBobSeedMessage;->access$2800(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendBobSeedMessage;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ShowSasDialogAndSendDecommitmentStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForSeedState;

    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForSeedState;->access$2300(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForSeedState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    iget-object v5, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ShowSasDialogAndSendDecommitmentStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendBobSeedMessage;

    invoke-virtual {v5}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendBobSeedMessage;->getServerTimestamp()J

    move-result-wide v5

    invoke-static {v3, v4, v1, v5, v6}, Lio/olvid/engine/datatypes/containers/DialogType;->createSasExchangeDialog(Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;[BJ)Lio/olvid/engine/datatypes/containers/DialogType;

    move-result-object v1

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ShowSasDialogAndSendDecommitmentStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForSeedState;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForSeedState;->access$2900(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForSeedState;)Ljava/util/UUID;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createUserInterfaceChannelInfo(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/DialogType;Ljava/util/UUID;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ShowSasDialogAndSendDecommitmentStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v1

    .line 1138
    new-instance v2, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$DialogForSasExchangeMessage;

    invoke-direct {v2, v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$DialogForSasExchangeMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    invoke-virtual {v2}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$DialogForSasExchangeMessage;->generateChannelDialogMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelDialogMessageToSend;

    move-result-object v1

    .line 1139
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v0, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ShowSasDialogAndSendDecommitmentStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v3

    invoke-interface {v2, v0, v1, v3}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 1142
    new-instance v0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ShowSasDialogAndSendDecommitmentStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForSeedState;

    .line 1143
    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForSeedState;->access$2300(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForSeedState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v5

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ShowSasDialogAndSendDecommitmentStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendBobSeedMessage;

    .line 1144
    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendBobSeedMessage;->access$2800(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendBobSeedMessage;)Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ShowSasDialogAndSendDecommitmentStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendBobSeedMessage;

    .line 1145
    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendBobSeedMessage;->access$2400(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendBobSeedMessage;)[Lio/olvid/engine/datatypes/UID;

    move-result-object v7

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ShowSasDialogAndSendDecommitmentStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForSeedState;

    .line 1146
    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForSeedState;->access$2600(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForSeedState;)Lio/olvid/engine/datatypes/Seed;

    move-result-object v8

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ShowSasDialogAndSendDecommitmentStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendBobSeedMessage;

    .line 1147
    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendBobSeedMessage;->access$2700(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendBobSeedMessage;)Lio/olvid/engine/datatypes/Seed;

    move-result-object v9

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ShowSasDialogAndSendDecommitmentStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForSeedState;

    .line 1148
    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForSeedState;->access$2900(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForSeedState;)Ljava/util/UUID;

    move-result-object v10

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;-><init>(Lio/olvid/engine/datatypes/Identity;Ljava/lang/String;[Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Seed;Lio/olvid/engine/datatypes/Seed;Ljava/util/UUID;)V

    return-object v0
.end method
