.class public Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$StoreCommitmentAndAskForConfirmationStep;
.super Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;
.source "TrustEstablishmentWithSasProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StoreCommitmentAndAskForConfirmationStep"
.end annotation


# instance fields
.field private final receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateCommitmentToBobDevicesMessage;

.field private final startState:Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateCommitmentToBobDevicesMessage;Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 969
    invoke-virtual {p3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    invoke-static {}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->createAnyConfirmedObliviousChannelWithOwnedDeviceInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;)V

    .line 970
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$StoreCommitmentAndAskForConfirmationStep;->startState:Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;

    .line 971
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$StoreCommitmentAndAskForConfirmationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateCommitmentToBobDevicesMessage;

    return-void
.end method


# virtual methods
.method public executeStep()Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 976
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$StoreCommitmentAndAskForConfirmationStep;->getProtocolManagerSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0

    .line 978
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    .line 982
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$StoreCommitmentAndAskForConfirmationStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$StoreCommitmentAndAskForConfirmationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateCommitmentToBobDevicesMessage;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateCommitmentToBobDevicesMessage;->access$1100(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateCommitmentToBobDevicesMessage;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$StoreCommitmentAndAskForConfirmationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateCommitmentToBobDevicesMessage;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateCommitmentToBobDevicesMessage;->access$1200(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateCommitmentToBobDevicesMessage;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$StoreCommitmentAndAskForConfirmationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateCommitmentToBobDevicesMessage;

    invoke-virtual {v4}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateCommitmentToBobDevicesMessage;->getServerTimestamp()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lio/olvid/engine/datatypes/containers/DialogType;->createAcceptInviteDialog(Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;J)Lio/olvid/engine/datatypes/containers/DialogType;

    move-result-object v2

    invoke-static {v1, v2, v6}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createUserInterfaceChannelInfo(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/DialogType;Ljava/util/UUID;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$StoreCommitmentAndAskForConfirmationStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v1

    .line 983
    new-instance v2, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$BobDialogInvitationConfirmationMessage;

    invoke-direct {v2, v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$BobDialogInvitationConfirmationMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    invoke-virtual {v2}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$BobDialogInvitationConfirmationMessage;->generateChannelDialogMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelDialogMessageToSend;

    move-result-object v1

    .line 984
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v0, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$StoreCommitmentAndAskForConfirmationStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v3

    invoke-interface {v2, v0, v1, v3}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 987
    new-instance v0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$StoreCommitmentAndAskForConfirmationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateCommitmentToBobDevicesMessage;

    .line 988
    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateCommitmentToBobDevicesMessage;->access$1200(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateCommitmentToBobDevicesMessage;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$StoreCommitmentAndAskForConfirmationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateCommitmentToBobDevicesMessage;

    .line 989
    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateCommitmentToBobDevicesMessage;->access$1100(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateCommitmentToBobDevicesMessage;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$StoreCommitmentAndAskForConfirmationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateCommitmentToBobDevicesMessage;

    .line 990
    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateCommitmentToBobDevicesMessage;->access$1300(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateCommitmentToBobDevicesMessage;)[Lio/olvid/engine/datatypes/UID;

    move-result-object v4

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$StoreCommitmentAndAskForConfirmationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateCommitmentToBobDevicesMessage;

    .line 991
    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateCommitmentToBobDevicesMessage;->access$1400(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateCommitmentToBobDevicesMessage;)[B

    move-result-object v5

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForConfirmationState;-><init>(Lio/olvid/engine/datatypes/Identity;Ljava/lang/String;[Lio/olvid/engine/datatypes/UID;[BLjava/util/UUID;)V

    return-object v0
.end method
