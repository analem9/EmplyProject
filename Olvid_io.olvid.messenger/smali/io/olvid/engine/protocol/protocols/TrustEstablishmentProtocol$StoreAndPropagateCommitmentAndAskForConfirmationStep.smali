.class public Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$StoreAndPropagateCommitmentAndAskForConfirmationStep;
.super Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;
.source "TrustEstablishmentProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StoreAndPropagateCommitmentAndAskForConfirmationStep"
.end annotation


# instance fields
.field private final receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendCommitmentMessage;

.field private final startState:Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendCommitmentMessage;Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 926
    invoke-virtual {p3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    invoke-static {}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->createAsymmetricChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;)V

    .line 927
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$StoreAndPropagateCommitmentAndAskForConfirmationStep;->startState:Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;

    .line 928
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$StoreAndPropagateCommitmentAndAskForConfirmationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendCommitmentMessage;

    return-void
.end method


# virtual methods
.method public executeStep()Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 933
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$StoreAndPropagateCommitmentAndAskForConfirmationStep;->getProtocolManagerSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0

    .line 935
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    .line 939
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$StoreAndPropagateCommitmentAndAskForConfirmationStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$StoreAndPropagateCommitmentAndAskForConfirmationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendCommitmentMessage;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendCommitmentMessage;->access$700(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendCommitmentMessage;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$StoreAndPropagateCommitmentAndAskForConfirmationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendCommitmentMessage;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendCommitmentMessage;->access$800(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendCommitmentMessage;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$StoreAndPropagateCommitmentAndAskForConfirmationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendCommitmentMessage;

    invoke-virtual {v4}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendCommitmentMessage;->getServerTimestamp()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lio/olvid/engine/datatypes/containers/DialogType;->createAcceptInviteDialog(Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;J)Lio/olvid/engine/datatypes/containers/DialogType;

    move-result-object v2

    invoke-static {v1, v2, v6}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createUserInterfaceChannelInfo(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/DialogType;Ljava/util/UUID;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$StoreAndPropagateCommitmentAndAskForConfirmationStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v1

    .line 940
    new-instance v2, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$BobDialogInvitationConfirmationMessage;

    invoke-direct {v2, v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$BobDialogInvitationConfirmationMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    invoke-virtual {v2}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$BobDialogInvitationConfirmationMessage;->generateChannelDialogMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelDialogMessageToSend;

    move-result-object v1

    .line 941
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v3, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$StoreAndPropagateCommitmentAndAskForConfirmationStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v4

    invoke-interface {v2, v3, v1, v4}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 946
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$StoreAndPropagateCommitmentAndAskForConfirmationStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lio/olvid/engine/metamanager/IdentityDelegate;->getOtherDeviceUidsOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    .line 948
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$StoreAndPropagateCommitmentAndAskForConfirmationStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    invoke-static {v1}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createAllOwnedConfirmedObliviousChannelsInfo(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$StoreAndPropagateCommitmentAndAskForConfirmationStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v8

    .line 949
    new-instance v1, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$PropagateCommitmentToBobDevicesMessage;

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$StoreAndPropagateCommitmentAndAskForConfirmationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendCommitmentMessage;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendCommitmentMessage;->access$800(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendCommitmentMessage;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v9

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$StoreAndPropagateCommitmentAndAskForConfirmationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendCommitmentMessage;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendCommitmentMessage;->access$700(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendCommitmentMessage;)Ljava/lang/String;

    move-result-object v10

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$StoreAndPropagateCommitmentAndAskForConfirmationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendCommitmentMessage;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendCommitmentMessage;->access$900(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendCommitmentMessage;)[Lio/olvid/engine/datatypes/UID;

    move-result-object v11

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$StoreAndPropagateCommitmentAndAskForConfirmationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendCommitmentMessage;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendCommitmentMessage;->access$1000(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendCommitmentMessage;)[B

    move-result-object v12

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$PropagateCommitmentToBobDevicesMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Lio/olvid/engine/datatypes/Identity;Ljava/lang/String;[Lio/olvid/engine/datatypes/UID;[B)V

    invoke-virtual {v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$PropagateCommitmentToBobDevicesMessage;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object v1

    .line 950
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v0, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$StoreAndPropagateCommitmentAndAskForConfirmationStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v3

    invoke-interface {v2, v0, v1, v3}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 954
    :cond_0
    new-instance v0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForConfirmationState;

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$StoreAndPropagateCommitmentAndAskForConfirmationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendCommitmentMessage;

    .line 955
    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendCommitmentMessage;->access$800(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendCommitmentMessage;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$StoreAndPropagateCommitmentAndAskForConfirmationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendCommitmentMessage;

    .line 956
    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendCommitmentMessage;->access$700(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendCommitmentMessage;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$StoreAndPropagateCommitmentAndAskForConfirmationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendCommitmentMessage;

    .line 957
    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendCommitmentMessage;->access$900(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendCommitmentMessage;)[Lio/olvid/engine/datatypes/UID;

    move-result-object v4

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$StoreAndPropagateCommitmentAndAskForConfirmationStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendCommitmentMessage;

    .line 958
    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendCommitmentMessage;->access$1000(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$SendCommitmentMessage;)[B

    move-result-object v5

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$WaitingForConfirmationState;-><init>(Lio/olvid/engine/datatypes/Identity;Ljava/lang/String;[Lio/olvid/engine/datatypes/UID;[BLjava/util/UUID;)V

    return-object v0
.end method
