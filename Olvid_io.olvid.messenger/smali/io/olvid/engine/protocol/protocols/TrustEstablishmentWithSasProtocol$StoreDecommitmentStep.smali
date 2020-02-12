.class public Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$StoreDecommitmentStep;
.super Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;
.source "TrustEstablishmentWithSasProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StoreDecommitmentStep"
.end annotation


# instance fields
.field private final receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateInvitationToAliceDevicesMessage;

.field private final startState:Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateInvitationToAliceDevicesMessage;Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 890
    invoke-virtual {p3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    invoke-static {}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->createAnyConfirmedObliviousChannelWithOwnedDeviceInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;)V

    .line 891
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$StoreDecommitmentStep;->startState:Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;

    .line 892
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$StoreDecommitmentStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateInvitationToAliceDevicesMessage;

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

    .line 897
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$StoreDecommitmentStep;->getProtocolManagerSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0

    .line 899
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    .line 903
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$StoreDecommitmentStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$StoreDecommitmentStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateInvitationToAliceDevicesMessage;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateInvitationToAliceDevicesMessage;->access$300(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateInvitationToAliceDevicesMessage;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$StoreDecommitmentStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateInvitationToAliceDevicesMessage;

    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateInvitationToAliceDevicesMessage;->access$400(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateInvitationToAliceDevicesMessage;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    invoke-static {v3, v4}, Lio/olvid/engine/datatypes/containers/DialogType;->createInviteSentDialog(Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/DialogType;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createUserInterfaceChannelInfo(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/DialogType;Ljava/util/UUID;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$StoreDecommitmentStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v2

    .line 904
    new-instance v3, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;

    invoke-direct {v3, v2}, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    invoke-virtual {v3}, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;->generateChannelDialogMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelDialogMessageToSend;

    move-result-object v2

    .line 905
    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v0, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$StoreDecommitmentStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v4

    invoke-interface {v3, v0, v2, v4}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 908
    new-instance v0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForSeedState;

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$StoreDecommitmentStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateInvitationToAliceDevicesMessage;

    .line 909
    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateInvitationToAliceDevicesMessage;->access$400(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateInvitationToAliceDevicesMessage;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$StoreDecommitmentStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateInvitationToAliceDevicesMessage;

    .line 910
    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateInvitationToAliceDevicesMessage;->access$500(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateInvitationToAliceDevicesMessage;)[B

    move-result-object v3

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$StoreDecommitmentStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateInvitationToAliceDevicesMessage;

    .line 911
    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateInvitationToAliceDevicesMessage;->access$600(Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$PropagateInvitationToAliceDevicesMessage;)Lio/olvid/engine/datatypes/Seed;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4, v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentWithSasProtocol$WaitingForSeedState;-><init>(Lio/olvid/engine/datatypes/Identity;[BLio/olvid/engine/datatypes/Seed;Ljava/util/UUID;)V

    return-object v0
.end method
