.class public Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$RespondToRequestStep;
.super Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;
.source "DeviceDiscoveryChildProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RespondToRequestStep"
.end annotation


# instance fields
.field private final receivedMessage:Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$FromAliceMessage;

.field private final startState:Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$FromAliceMessage;Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 383
    invoke-virtual {p3}, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    invoke-static {}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->createAsymmetricChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;)V

    .line 384
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$RespondToRequestStep;->startState:Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;

    .line 385
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$RespondToRequestStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$FromAliceMessage;

    return-void
.end method


# virtual methods
.method public executeStep()Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 390
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$RespondToRequestStep;->getProtocolManagerSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0

    .line 391
    iget-object v1, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$RespondToRequestStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lio/olvid/engine/metamanager/IdentityDelegate;->getDeviceUidsOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    .line 393
    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$RespondToRequestStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$FromAliceMessage;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$FromAliceMessage;->access$100(Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$FromAliceMessage;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lio/olvid/engine/datatypes/UID;

    iget-object v4, p0, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$RespondToRequestStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$FromAliceMessage;

    invoke-static {v4}, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$FromAliceMessage;->access$200(Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$FromAliceMessage;)Lio/olvid/engine/datatypes/UID;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createAsymmetricChannelInfo(Lio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$RespondToRequestStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v2

    .line 394
    new-instance v3, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$FromBobMessage;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v1, v4}, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$FromBobMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;[Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$1;)V

    invoke-virtual {v3}, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$FromBobMessage;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object v1

    .line 395
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v0, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$RespondToRequestStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v3

    invoke-interface {v2, v0, v1, v3}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 396
    new-instance v0, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$DeviceUidsSentState;

    invoke-direct {v0}, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$DeviceUidsSentState;-><init>()V

    return-object v0
.end method
