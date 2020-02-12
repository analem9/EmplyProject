.class public Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK1State;
.super Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;
.source "ChannelCreationWithContactDeviceProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WaitingForK1State"
.end annotation


# instance fields
.field private final contactDeviceUid:Lio/olvid/engine/datatypes/UID;

.field private final contactIdentity:Lio/olvid/engine/datatypes/Identity;

.field private final ephemeralPrivateKey:Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPrivateKey;


# direct methods
.method constructor <init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPrivateKey;)V
    .locals 1

    const/4 v0, 0x3

    .line 146
    invoke-direct {p0, v0}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;-><init>(I)V

    .line 147
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK1State;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 148
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK1State;->contactDeviceUid:Lio/olvid/engine/datatypes/UID;

    .line 149
    iput-object p3, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK1State;->ephemeralPrivateKey:Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPrivateKey;

    return-void
.end method

.method public constructor <init>(Lio/olvid/engine/encoder/Encoded;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x3

    .line 135
    invoke-direct {p0, v0}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;-><init>(I)V

    .line 136
    invoke-virtual {p1}, Lio/olvid/engine/encoder/Encoded;->decodeList()[Lio/olvid/engine/encoder/Encoded;

    move-result-object p1

    .line 137
    array-length v1, p1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    .line 140
    aget-object v0, p1, v0

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK1State;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    const/4 v0, 0x1

    .line 141
    aget-object v0, p1, v0

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK1State;->contactDeviceUid:Lio/olvid/engine/datatypes/UID;

    const/4 v0, 0x2

    .line 142
    aget-object p1, p1, v0

    invoke-virtual {p1}, Lio/olvid/engine/encoder/Encoded;->decodePrivateKey()Lio/olvid/engine/datatypes/key/asymmetric/PrivateKey;

    move-result-object p1

    check-cast p1, Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPrivateKey;

    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK1State;->ephemeralPrivateKey:Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPrivateKey;

    return-void

    .line 138
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method static synthetic access$1000(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK1State;)Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPrivateKey;
    .locals 0

    .line 128
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK1State;->ephemeralPrivateKey:Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPrivateKey;

    return-object p0
.end method

.method static synthetic access$1300(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK1State;)Lio/olvid/engine/datatypes/UID;
    .locals 0

    .line 128
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK1State;->contactDeviceUid:Lio/olvid/engine/datatypes/UID;

    return-object p0
.end method

.method static synthetic access$1400(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK1State;)Lio/olvid/engine/datatypes/Identity;
    .locals 0

    .line 128
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK1State;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    return-object p0
.end method


# virtual methods
.method public encode()Lio/olvid/engine/encoder/Encoded;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lio/olvid/engine/encoder/Encoded;

    .line 154
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK1State;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 155
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK1State;->contactDeviceUid:Lio/olvid/engine/datatypes/UID;

    .line 156
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$WaitingForK1State;->ephemeralPrivateKey:Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPrivateKey;

    .line 157
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/key/asymmetric/PrivateKey;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 154
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    return-object v0
.end method
