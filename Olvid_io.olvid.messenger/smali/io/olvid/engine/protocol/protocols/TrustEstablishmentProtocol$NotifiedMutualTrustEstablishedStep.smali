.class public Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$NotifiedMutualTrustEstablishedStep;
.super Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;
.source "TrustEstablishmentProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotifiedMutualTrustEstablishedStep"
.end annotation


# instance fields
.field private final receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$MutualTrustConfirmationMessage;

.field private final startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ContactIdentityTrustedState;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ContactIdentityTrustedState;Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$MutualTrustConfirmationMessage;Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1319
    invoke-virtual {p3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    invoke-static {}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->createAsymmetricChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;)V

    .line 1320
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$NotifiedMutualTrustEstablishedStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ContactIdentityTrustedState;

    .line 1321
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$NotifiedMutualTrustEstablishedStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$MutualTrustConfirmationMessage;

    return-void
.end method


# virtual methods
.method public executeStep()Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1326
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$NotifiedMutualTrustEstablishedStep;->getProtocolManagerSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0

    .line 1330
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$NotifiedMutualTrustEstablishedStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$NotifiedMutualTrustEstablishedStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ContactIdentityTrustedState;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ContactIdentityTrustedState;->access$4600(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ContactIdentityTrustedState;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$NotifiedMutualTrustEstablishedStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ContactIdentityTrustedState;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ContactIdentityTrustedState;->access$4700(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ContactIdentityTrustedState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    invoke-static {v2, v3}, Lio/olvid/engine/datatypes/containers/DialogType;->createMutualTrustConfirmedDialog(Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/DialogType;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$NotifiedMutualTrustEstablishedStep;->startState:Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ContactIdentityTrustedState;

    invoke-static {v3}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ContactIdentityTrustedState;->access$4800(Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$ContactIdentityTrustedState;)Ljava/util/UUID;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createUserInterfaceChannelInfo(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/DialogType;Ljava/util/UUID;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$NotifiedMutualTrustEstablishedStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v1

    .line 1331
    new-instance v2, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;

    invoke-direct {v2, v1}, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    invoke-virtual {v2}, Lio/olvid/engine/protocol/protocol_engine/OneWayDialogProtocolMessage;->generateChannelDialogMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelDialogMessageToSend;

    move-result-object v1

    .line 1332
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v0, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$NotifiedMutualTrustEstablishedStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v3

    invoke-interface {v2, v0, v1, v3}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 1335
    new-instance v0, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$MutualTrustConfirmedState;

    invoke-direct {v0}, Lio/olvid/engine/protocol/protocols/TrustEstablishmentProtocol$MutualTrustConfirmedState;-><init>()V

    return-object v0
.end method
