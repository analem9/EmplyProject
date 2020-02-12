.class public Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$ChildProtocolReachedExpectedStateMessage;
.super Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;
.source "DeviceDiscoveryProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChildProtocolReachedExpectedStateMessage"
.end annotation


# instance fields
.field private final childToParentProtocolMessageInputs:Lio/olvid/engine/protocol/datatypes/ChildToParentProtocolMessageInputs;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/databases/ReceivedMessage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 183
    new-instance v0, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    invoke-direct {v0, p1}, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;-><init>(Lio/olvid/engine/protocol/databases/ReceivedMessage;)V

    invoke-direct {p0, v0}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    .line 184
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getInputs()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 187
    new-instance v0, Lio/olvid/engine/protocol/datatypes/ChildToParentProtocolMessageInputs;

    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getInputs()[Lio/olvid/engine/encoder/Encoded;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/olvid/engine/protocol/datatypes/ChildToParentProtocolMessageInputs;-><init>([Lio/olvid/engine/encoder/Encoded;)V

    iput-object v0, p0, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$ChildProtocolReachedExpectedStateMessage;->childToParentProtocolMessageInputs:Lio/olvid/engine/protocol/datatypes/ChildToParentProtocolMessageInputs;

    return-void

    .line 185
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method public constructor <init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Lio/olvid/engine/protocol/datatypes/ChildToParentProtocolMessageInputs;)V
    .locals 0

    .line 178
    invoke-direct {p0, p1}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    .line 179
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$ChildProtocolReachedExpectedStateMessage;->childToParentProtocolMessageInputs:Lio/olvid/engine/protocol/datatypes/ChildToParentProtocolMessageInputs;

    return-void
.end method


# virtual methods
.method public getDeviceUidsReceivedState()Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$DeviceUidsReceivedState;
    .locals 2

    .line 204
    :try_start_0
    new-instance v0, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$DeviceUidsReceivedState;

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$ChildProtocolReachedExpectedStateMessage;->childToParentProtocolMessageInputs:Lio/olvid/engine/protocol/datatypes/ChildToParentProtocolMessageInputs;

    invoke-virtual {v1}, Lio/olvid/engine/protocol/datatypes/ChildToParentProtocolMessageInputs;->getChildProtocolEncodedState()Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$DeviceUidsReceivedState;-><init>(Lio/olvid/engine/encoder/Encoded;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInputs()[Lio/olvid/engine/encoder/Encoded;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lio/olvid/engine/encoder/Encoded;

    .line 197
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryProtocol$ChildProtocolReachedExpectedStateMessage;->childToParentProtocolMessageInputs:Lio/olvid/engine/protocol/datatypes/ChildToParentProtocolMessageInputs;

    .line 198
    invoke-virtual {v1}, Lio/olvid/engine/protocol/datatypes/ChildToParentProtocolMessageInputs;->toEncodedInputs()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getProtocolMessageId()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
