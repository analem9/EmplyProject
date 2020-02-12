.class public Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$SendRequestStep;
.super Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;
.source "DeviceDiscoveryChildProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SendRequestStep"
.end annotation


# instance fields
.field private final receivedMessage:Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$InitialMessage;

.field private final startState:Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$InitialMessage;Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 351
    invoke-virtual {p3}, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    invoke-static {}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->createLocalChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;)V

    .line 352
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$SendRequestStep;->startState:Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;

    .line 353
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$SendRequestStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$InitialMessage;

    return-void
.end method


# virtual methods
.method public bridge synthetic executeStep()Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 346
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$SendRequestStep;->executeStep()Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$ServerRequestSentState;

    move-result-object v0

    return-object v0
.end method

.method public executeStep()Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$ServerRequestSentState;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 369
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$SendRequestStep;->getProtocolManagerSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0

    .line 371
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$SendRequestStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$SendRequestStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$InitialMessage;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$InitialMessage;->access$000(Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$InitialMessage;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    invoke-static {v2}, Lio/olvid/engine/datatypes/containers/ServerQuery$Type;->createDeviceDiscoveryQuery(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/ServerQuery$Type;

    move-result-object v2

    invoke-static {v1, v2}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->createServerQueryChannelInfo(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/ServerQuery$Type;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$SendRequestStep;->buildCoreProtocolMessage(Lio/olvid/engine/datatypes/containers/SendChannelInfo;)Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    move-result-object v1

    .line 372
    new-instance v2, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$ServerQueryMessage;

    invoke-direct {v2, v1}, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$ServerQueryMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    invoke-virtual {v2}, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$ServerQueryMessage;->generateChannelServerQueryMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelServerQueryMessageToSend;

    move-result-object v1

    .line 373
    iget-object v2, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v0, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$SendRequestStep;->getPrng()Lio/olvid/engine/crypto/PRNGService;

    move-result-object v3

    invoke-interface {v2, v0, v1, v3}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 374
    new-instance v0, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$ServerRequestSentState;

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$SendRequestStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$InitialMessage;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$InitialMessage;->access$000(Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$InitialMessage;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$ServerRequestSentState;-><init>(Lio/olvid/engine/datatypes/Identity;)V

    return-object v0
.end method
