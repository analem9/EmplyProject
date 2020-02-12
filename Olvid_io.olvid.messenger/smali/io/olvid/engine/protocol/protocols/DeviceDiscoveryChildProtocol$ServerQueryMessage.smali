.class public Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$ServerQueryMessage;
.super Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;
.source "DeviceDiscoveryChildProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServerQueryMessage"
.end annotation


# instance fields
.field private final deviceUids:[Lio/olvid/engine/datatypes/UID;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/databases/ReceivedMessage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 303
    new-instance v0, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    invoke-direct {v0, p1}, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;-><init>(Lio/olvid/engine/protocol/databases/ReceivedMessage;)V

    invoke-direct {p0, v0}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    .line 304
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getEncodedResponse()Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getEncodedResponse()Lio/olvid/engine/encoder/Encoded;

    move-result-object p1

    invoke-virtual {p1}, Lio/olvid/engine/encoder/Encoded;->decodeUidArray()[Lio/olvid/engine/datatypes/UID;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$ServerQueryMessage;->deviceUids:[Lio/olvid/engine/datatypes/UID;

    return-void

    .line 305
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method public constructor <init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V
    .locals 0

    .line 298
    invoke-direct {p0, p1}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    const/4 p1, 0x0

    .line 299
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$ServerQueryMessage;->deviceUids:[Lio/olvid/engine/datatypes/UID;

    return-void
.end method

.method static synthetic access$500(Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$ServerQueryMessage;)[Lio/olvid/engine/datatypes/UID;
    .locals 0

    .line 294
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$ServerQueryMessage;->deviceUids:[Lio/olvid/engine/datatypes/UID;

    return-object p0
.end method


# virtual methods
.method public getInputs()[Lio/olvid/engine/encoder/Encoded;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lio/olvid/engine/encoder/Encoded;

    return-object v0
.end method

.method public getProtocolMessageId()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
