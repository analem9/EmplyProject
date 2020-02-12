.class public Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ShowSasDialogStep;
.super Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;
.source "TrustEstablishmentProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShowSasDialogStep"
.end annotation


# instance fields
.field private final receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendDecommitmentMessage;

.field private final startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendDecommitmentMessage;Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1158
    invoke-virtual {p3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    invoke-static {}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->createAsymmetricChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;)V

    .line 1159
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ShowSasDialogStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;

    .line 1160
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ShowSasDialogStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendDecommitmentMessage;

    return-void
.end method


# virtual methods
.method public executeStep()Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1165
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ShowSasDialogStep;->getProtocolManagerSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0

    const/4 v1, 0x0

    .line 1167
    invoke-static {v1}, Lio/olvid/engine/crypto/Suite;->getDefaultCommitment(I)Lio/olvid/engine/crypto/Commitment;

    move-result-object v1

    .line 1168
    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ShowSasDialogStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;->access$3000(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ShowSasDialogStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;->access$3100(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;)[B

    move-result-object v3

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ShowSasDialogStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendDecommitmentMessage;

    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendDecommitmentMessage;->access$3200(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendDecommitmentMessage;)[B

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lio/olvid/engine/crypto/Commitment;->open([B[B[B)[B

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "Unable to open commitment."

    .line 1170
    invoke-static {v0}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 1173
    :cond_0
    new-instance v6, Lio/olvid/engine/datatypes/Seed;

    invoke-direct {v6, v1}, Lio/olvid/engine/datatypes/Seed;-><init>([B)V

    .line 1174
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ShowSasDialogStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;->access$3300(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;)Lio/olvid/engine/datatypes/Seed;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v1, v6, v2}, Lio/olvid/engine/crypto/SAS;->compute(Lio/olvid/engine/datatypes/Seed;Lio/olvid/engine/datatypes/Seed;I)[B

    move-result-object v1

    .line 1178
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ShowSasDialogStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ShowSasDialogStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;->access$3400(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ShowSasDialogStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;

    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;->access$3000(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    iget-object v5, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ShowSasDialogStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendDecommitmentMessage;

    invoke-virtual {v5}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendDecommitmentMessage;->getServerTimestamp()J

    move-result-wide v7

    invoke-static {v3, v4, v1, v7, v8}, Lio/olvid/engine/datatypes/containers/DialogType;->createSasExchangeDialog(Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;[BJ)Lio/olvid/engine/datatypes/containers/DialogType;

    move-result-object v1

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ShowSasDialogStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;->access$3500(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;)Ljava/util/UUID;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createUserInterfaceChannelInfo(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/DialogType;Ljava/util/UUID;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ShowSasDialogStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v1

    .line 1179
    new-instance v2, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$DialogForSasExchangeMessage;

    invoke-direct {v2, v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$DialogForSasExchangeMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    invoke-virtual {v2}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$DialogForSasExchangeMessage;->generateChannelDialogMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelDialogMessageToSend;

    move-result-object v1

    .line 1180
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v0, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ShowSasDialogStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v3

    invoke-interface {v2, v0, v1, v3}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 1183
    new-instance v0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ShowSasDialogStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;

    .line 1184
    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;->access$3000(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ShowSasDialogStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;

    .line 1185
    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;->access$3400(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ShowSasDialogStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;

    .line 1186
    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;->access$3600(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;)[Lio/olvid/engine/datatypes/UID;

    move-result-object v4

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ShowSasDialogStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;

    .line 1187
    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;->access$3300(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;)Lio/olvid/engine/datatypes/Seed;

    move-result-object v5

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ShowSasDialogStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;

    .line 1189
    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;->access$3500(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForDecommitmentState;)Ljava/util/UUID;

    move-result-object v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForUserSasState;-><init>(Lio/olvid/engine/datatypes/Identity;Ljava/lang/String;[Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Seed;Lio/olvid/engine/datatypes/Seed;Ljava/util/UUID;)V

    return-object v0
.end method
