.class public Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitUntilContactIsTrustedState;
.super Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;
.source "ChannelCreationWithContactDeviceProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WaitUntilContactIsTrustedState"
.end annotation


# instance fields
.field private final contactDeviceUid:Lio/olvid/engine/datatypes/UID;

.field private final contactIdentity:Lio/olvid/engine/datatypes/Identity;

.field private final seed:Lio/olvid/engine/datatypes/Seed;


# direct methods
.method constructor <init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Seed;)V
    .locals 1

    const/4 v0, 0x6

    .line 251
    invoke-direct {p0, v0}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;-><init>(I)V

    .line 252
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitUntilContactIsTrustedState;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 253
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitUntilContactIsTrustedState;->contactDeviceUid:Lio/olvid/engine/datatypes/UID;

    .line 254
    iput-object p3, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitUntilContactIsTrustedState;->seed:Lio/olvid/engine/datatypes/Seed;

    return-void
.end method

.method public constructor <init>(Lio/olvid/engine/encoder/Encoded;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x6

    .line 240
    invoke-direct {p0, v0}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;-><init>(I)V

    .line 241
    invoke-virtual {p1}, Lio/olvid/engine/encoder/Encoded;->decodeList()[Lio/olvid/engine/encoder/Encoded;

    move-result-object p1

    .line 242
    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 245
    aget-object v0, p1, v0

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitUntilContactIsTrustedState;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    const/4 v0, 0x1

    .line 246
    aget-object v0, p1, v0

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitUntilContactIsTrustedState;->contactDeviceUid:Lio/olvid/engine/datatypes/UID;

    const/4 v0, 0x2

    .line 247
    aget-object p1, p1, v0

    invoke-virtual {p1}, Lio/olvid/engine/encoder/Encoded;->decodeSeed()Lio/olvid/engine/datatypes/Seed;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitUntilContactIsTrustedState;->seed:Lio/olvid/engine/datatypes/Seed;

    return-void

    .line 243
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method


# virtual methods
.method public encode()Lio/olvid/engine/encoder/Encoded;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lio/olvid/engine/encoder/Encoded;

    .line 259
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitUntilContactIsTrustedState;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 260
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitUntilContactIsTrustedState;->contactDeviceUid:Lio/olvid/engine/datatypes/UID;

    .line 261
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitUntilContactIsTrustedState;->seed:Lio/olvid/engine/datatypes/Seed;

    .line 262
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/Seed;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 259
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    return-object v0
.end method
