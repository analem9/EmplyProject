.class public Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$ReceivedConfirmationFromOtherDeviceStep;
.super Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;
.source "TrustEstablishmentWithSasProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReceivedConfirmationFromOtherDeviceStep"
.end annotation


# instance fields
.field private final receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateConfirmationToBobDevicesMessage;

.field private final startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateConfirmationToBobDevicesMessage;Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1070
    invoke-virtual {p3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    invoke-static {}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->createAnyConfirmedObliviousChannelWithOwnedDeviceInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;)V

    .line 1071
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$ReceivedConfirmationFromOtherDeviceStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;

    .line 1072
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$ReceivedConfirmationFromOtherDeviceStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateConfirmationToBobDevicesMessage;

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

    .line 1077
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$ReceivedConfirmationFromOtherDeviceStep;->getProtocolManagerSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0

    .line 1080
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$ReceivedConfirmationFromOtherDeviceStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateConfirmationToBobDevicesMessage;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateConfirmationToBobDevicesMessage;->access$2200(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateConfirmationToBobDevicesMessage;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1082
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$ReceivedConfirmationFromOtherDeviceStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    invoke-static {}, Lio/olvid/engine/datatypes/containers/DialogType;->createDeleteDialog()Lio/olvid/engine/datatypes/containers/DialogType;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$ReceivedConfirmationFromOtherDeviceStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;->access$1600(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;)Ljava/util/UUID;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createUserInterfaceChannelInfo(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/DialogType;Ljava/util/UUID;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$ReceivedConfirmationFromOtherDeviceStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v1

    .line 1083
    new-instance v2, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;

    invoke-direct {v2, v1}, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    invoke-virtual {v2}, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;->generateChannelDialogMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelDialogMessageToSend;

    move-result-object v1

    .line 1084
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v0, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$ReceivedConfirmationFromOtherDeviceStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v3

    invoke-interface {v2, v0, v1, v3}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 1086
    new-instance v0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CancelledState;

    invoke-direct {v0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$CancelledState;-><init>()V

    return-object v0

    .line 1091
    :cond_0
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$ReceivedConfirmationFromOtherDeviceStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$ReceivedConfirmationFromOtherDeviceStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;->access$1800(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$ReceivedConfirmationFromOtherDeviceStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;->access$1900(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    invoke-static {v2, v3}, Lio/olvid/engine/datatypes/containers/DialogType;->createInviteAcceptedDialog(Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/DialogType;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$ReceivedConfirmationFromOtherDeviceStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;->access$1600(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;)Ljava/util/UUID;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createUserInterfaceChannelInfo(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/DialogType;Ljava/util/UUID;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$ReceivedConfirmationFromOtherDeviceStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v1

    .line 1092
    new-instance v2, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;

    invoke-direct {v2, v1}, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    invoke-virtual {v2}, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;->generateChannelDialogMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelDialogMessageToSend;

    move-result-object v1

    .line 1093
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$ReceivedConfirmationFromOtherDeviceStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v4

    invoke-interface {v2, v3, v1, v4}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 1096
    iget-object v0, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$ReceivedConfirmationFromOtherDeviceStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$ReceivedConfirmationFromOtherDeviceStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;->access$2000(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;)[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/olvid/engine/metamanager/IdentityDelegate;->getDeterministicSeedForOwnedIdentity(Lio/olvid/engine/datatypes/Identity;[B)Lio/olvid/engine/datatypes/Seed;

    move-result-object v8

    .line 1098
    new-instance v0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForDecommitmentState;

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$ReceivedConfirmationFromOtherDeviceStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;

    .line 1099
    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;->access$1900(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$ReceivedConfirmationFromOtherDeviceStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;

    .line 1100
    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;->access$1800(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;)Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$ReceivedConfirmationFromOtherDeviceStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;

    .line 1101
    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;->access$2100(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;)[Lio/olvid/engine/datatypes/UID;

    move-result-object v6

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$ReceivedConfirmationFromOtherDeviceStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;

    .line 1102
    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;->access$2000(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;)[B

    move-result-object v7

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$ReceivedConfirmationFromOtherDeviceStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;

    .line 1104
    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;->access$1600(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;)Ljava/util/UUID;

    move-result-object v9

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForDecommitmentState;-><init>(Lio/olvid/engine/datatypes/Identity;Ljava/lang/String;[Lio/olvid/engine/datatypes/UID;[BLio/olvid/engine/datatypes/Seed;Ljava/util/UUID;)V

    return-object v0
.end method
