.class public Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$ProcessChildProtocolStateStep;
.super Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;
.source "DeviceDiscoveryProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcessChildProtocolStateStep"
.end annotation


# instance fields
.field private final receivedMessage:Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$ChildProtocolReachedExpectedStateMessage;

.field private final startState:Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$WaitingForChildProtocolState;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$WaitingForChildProtocolState;Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$ChildProtocolReachedExpectedStateMessage;Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 278
    invoke-virtual {p3}, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    invoke-static {}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->createLocalChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lio/olvid/engine/protocol/protocol_engine/ProtocolStep;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;)V

    .line 279
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$ProcessChildProtocolStateStep;->startState:Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$WaitingForChildProtocolState;

    .line 280
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$ProcessChildProtocolStateStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$ChildProtocolReachedExpectedStateMessage;

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

    .line 285
    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$ProcessChildProtocolStateStep;->getProtocolManagerSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0

    .line 287
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$ProcessChildProtocolStateStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$ChildProtocolReachedExpectedStateMessage;

    invoke-virtual {v1}, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$ChildProtocolReachedExpectedStateMessage;->getDeviceUidsReceivedState()Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$DeviceUidsReceivedState;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$DeviceUidsReceivedState;->getRemoteIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    .line 288
    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$ProcessChildProtocolStateStep;->startState:Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$WaitingForChildProtocolState;

    invoke-static {v2}, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$WaitingForChildProtocolState;->access$100(Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$WaitingForChildProtocolState;)Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/Identity;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v0, "Received UID from another remoteIdentity!"

    .line 289
    invoke-static {v0}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    .line 290
    new-instance v0, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$CancelledState;

    invoke-direct {v0}, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$CancelledState;-><init>()V

    return-object v0

    .line 293
    :cond_0
    iget-object v2, p0, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$ProcessChildProtocolStateStep;->receivedMessage:Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$ChildProtocolReachedExpectedStateMessage;

    invoke-virtual {v2}, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$ChildProtocolReachedExpectedStateMessage;->getDeviceUidsReceivedState()Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$DeviceUidsReceivedState;

    move-result-object v2

    invoke-virtual {v2}, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$DeviceUidsReceivedState;->getDeviceUids()[Lio/olvid/engine/datatypes/UID;

    move-result-object v2

    .line 294
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 295
    iget-object v6, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v7, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p0}, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$ProcessChildProtocolStateStep;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v8

    invoke-interface {v6, v7, v5, v1, v8}, Lio/olvid/engine/metamanager/IdentityDelegate;->addDeviceForContactIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 298
    :cond_1
    new-instance v0, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$ChildProtocolStateProcessedState;

    invoke-direct {v0}, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$ChildProtocolStateProcessedState;-><init>()V

    return-object v0
.end method
