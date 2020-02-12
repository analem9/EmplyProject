.class public Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$DeviceUidsReceivedState;
.super Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;
.source "DeviceDiscoveryChildProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceUidsReceivedState"
.end annotation


# instance fields
.field private final deviceUids:[Lio/olvid/engine/datatypes/UID;

.field private final remoteIdentity:Lio/olvid/engine/datatypes/Identity;


# direct methods
.method public constructor <init>(Lio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/datatypes/UID;)V
    .locals 1

    const/4 v0, 0x2

    .line 112
    invoke-direct {p0, v0}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;-><init>(I)V

    .line 113
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$DeviceUidsReceivedState;->remoteIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 114
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$DeviceUidsReceivedState;->deviceUids:[Lio/olvid/engine/datatypes/UID;

    return-void
.end method

.method public constructor <init>(Lio/olvid/engine/encoder/Encoded;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x2

    .line 102
    invoke-direct {p0, v0}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;-><init>(I)V

    .line 103
    invoke-virtual {p1}, Lio/olvid/engine/encoder/Encoded;->decodeList()[Lio/olvid/engine/encoder/Encoded;

    move-result-object p1

    .line 104
    array-length v1, p1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    .line 107
    aget-object v0, p1, v0

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$DeviceUidsReceivedState;->remoteIdentity:Lio/olvid/engine/datatypes/Identity;

    const/4 v0, 0x1

    .line 108
    aget-object p1, p1, v0

    invoke-virtual {p1}, Lio/olvid/engine/encoder/Encoded;->decodeUidArray()[Lio/olvid/engine/datatypes/UID;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$DeviceUidsReceivedState;->deviceUids:[Lio/olvid/engine/datatypes/UID;

    return-void

    .line 105
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method


# virtual methods
.method public encode()Lio/olvid/engine/encoder/Encoded;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lio/olvid/engine/encoder/Encoded;

    .line 119
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$DeviceUidsReceivedState;->remoteIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 120
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$DeviceUidsReceivedState;->deviceUids:[Lio/olvid/engine/datatypes/UID;

    .line 121
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 119
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceUids()[Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 126
    iget-object v0, p0, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$DeviceUidsReceivedState;->deviceUids:[Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method

.method public getRemoteIdentity()Lio/olvid/engine/datatypes/Identity;
    .locals 1

    .line 129
    iget-object v0, p0, Lio/olvid/engine/protocol/protocols/DeviceDiscoveryChildProtocol$DeviceUidsReceivedState;->remoteIdentity:Lio/olvid/engine/datatypes/Identity;

    return-object v0
.end method
