.class public Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$FromBobMessage;
.super Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;
.source "DeviceDiscoveryChildProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FromBobMessage"
.end annotation


# instance fields
.field private final deviceUids:[Lio/olvid/engine/datatypes/UID;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/databases/ReceivedMessage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 274
    new-instance v0, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    invoke-direct {v0, p1}, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;-><init>(Lio/olvid/engine/protocol/databases/ReceivedMessage;)V

    invoke-direct {p0, v0}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    .line 275
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getInputs()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 278
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getInputs()[Lio/olvid/engine/encoder/Encoded;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lio/olvid/engine/encoder/Encoded;->decodeUidArray()[Lio/olvid/engine/datatypes/UID;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$FromBobMessage;->deviceUids:[Lio/olvid/engine/datatypes/UID;

    return-void

    .line 276
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method private constructor <init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;[Lio/olvid/engine/datatypes/UID;)V
    .locals 0

    .line 269
    invoke-direct {p0, p1}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    .line 270
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$FromBobMessage;->deviceUids:[Lio/olvid/engine/datatypes/UID;

    return-void
.end method

.method synthetic constructor <init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;[Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$1;)V
    .locals 0

    .line 265
    invoke-direct {p0, p1, p2}, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$FromBobMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;[Lio/olvid/engine/datatypes/UID;)V

    return-void
.end method


# virtual methods
.method public getInputs()[Lio/olvid/engine/encoder/Encoded;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lio/olvid/engine/encoder/Encoded;

    .line 288
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$FromBobMessage;->deviceUids:[Lio/olvid/engine/datatypes/UID;

    .line 289
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getProtocolMessageId()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
