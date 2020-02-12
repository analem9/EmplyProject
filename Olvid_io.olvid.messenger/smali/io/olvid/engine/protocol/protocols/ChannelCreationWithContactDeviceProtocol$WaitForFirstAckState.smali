.class public Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForFirstAckState;
.super Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;
.source "ChannelCreationWithContactDeviceProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WaitForFirstAckState"
.end annotation


# instance fields
.field private final contactDeviceUid:Lio/olvid/engine/datatypes/UID;

.field private final contactIdentity:Lio/olvid/engine/datatypes/Identity;


# direct methods
.method constructor <init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;)V
    .locals 1

    const/4 v0, 0x5

    .line 218
    invoke-direct {p0, v0}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;-><init>(I)V

    .line 219
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForFirstAckState;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 220
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForFirstAckState;->contactDeviceUid:Lio/olvid/engine/datatypes/UID;

    return-void
.end method

.method public constructor <init>(Lio/olvid/engine/encoder/Encoded;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x5

    .line 208
    invoke-direct {p0, v0}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;-><init>(I)V

    .line 209
    invoke-virtual {p1}, Lio/olvid/engine/encoder/Encoded;->decodeList()[Lio/olvid/engine/encoder/Encoded;

    move-result-object p1

    .line 210
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 213
    aget-object v0, p1, v0

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForFirstAckState;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    const/4 v0, 0x1

    .line 214
    aget-object p1, p1, v0

    invoke-virtual {p1}, Lio/olvid/engine/encoder/Encoded;->decodeUid()Lio/olvid/engine/datatypes/UID;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForFirstAckState;->contactDeviceUid:Lio/olvid/engine/datatypes/UID;

    return-void

    .line 211
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method static synthetic access$2200(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForFirstAckState;)Lio/olvid/engine/datatypes/UID;
    .locals 0

    .line 202
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForFirstAckState;->contactDeviceUid:Lio/olvid/engine/datatypes/UID;

    return-object p0
.end method

.method static synthetic access$2300(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForFirstAckState;)Lio/olvid/engine/datatypes/Identity;
    .locals 0

    .line 202
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForFirstAckState;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    return-object p0
.end method


# virtual methods
.method public encode()Lio/olvid/engine/encoder/Encoded;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lio/olvid/engine/encoder/Encoded;

    .line 225
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForFirstAckState;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 226
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitForFirstAckState;->contactDeviceUid:Lio/olvid/engine/datatypes/UID;

    .line 227
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 225
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    return-object v0
.end method
