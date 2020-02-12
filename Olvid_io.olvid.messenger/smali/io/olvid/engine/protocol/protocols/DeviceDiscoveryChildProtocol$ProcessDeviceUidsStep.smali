.class public Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$ProcessDeviceUidsStep;
.super Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;
.source "DeviceDiscoveryChildProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcessDeviceUidsStep"
.end annotation


# instance fields
.field private final receivedMessage:Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$ServerQueryMessage;

.field private final startState:Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$ServerRequestSentState;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$ServerRequestSentState;Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$ServerQueryMessage;Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 423
    invoke-virtual {p3}, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    invoke-static {}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->createLocalChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;)V

    .line 424
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$ProcessDeviceUidsStep;->startState:Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$ServerRequestSentState;

    .line 425
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$ProcessDeviceUidsStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$ServerQueryMessage;

    return-void
.end method


# virtual methods
.method public executeStep()Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 430
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$ProcessDeviceUidsStep;->getProtocolManagerSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    .line 431
    new-instance v0, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$DeviceUidsReceivedState;

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$ProcessDeviceUidsStep;->startState:Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$ServerRequestSentState;

    invoke-static {v1}, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$ServerRequestSentState;->access$400(Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$ServerRequestSentState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$ProcessDeviceUidsStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$ServerQueryMessage;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$ServerQueryMessage;->access$500(Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$ServerQueryMessage;)[Lio/olvid/engine/datatypes/UID;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$DeviceUidsReceivedState;-><init>(Lio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/datatypes/UID;)V

    return-object v0
.end method
