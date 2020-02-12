.class public Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;
.super Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;
.source "ChannelCreationWithContactDeviceProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AliceIdentityAndEphemeralKeyMessage"
.end annotation


# instance fields
.field private final contactDeviceUid:Lio/olvid/engine/datatypes/UID;

.field private final contactEphemeralPublicKey:Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;

.field private final contactIdentity:Lio/olvid/engine/datatypes/Identity;

.field private final signature:[B


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/databases/ReceivedMessage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 453
    new-instance v0, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    invoke-direct {v0, p1}, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;-><init>(Lio/olvid/engine/protocol/databases/ReceivedMessage;)V

    invoke-direct {p0, v0}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    .line 454
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getInputs()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 457
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getInputs()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 458
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getInputs()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;->contactDeviceUid:Lio/olvid/engine/datatypes/UID;

    .line 459
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getInputs()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeBytes()[B

    move-result-object v0

    iput-object v0, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;->signature:[B

    .line 460
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getInputs()[Lio/olvid/engine/encoder/Encoded;

    move-result-object p1

    const/4 v0, 0x3

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lio/olvid/engine/encoder/Encoded;->decodePublicKey()Lio/olvid/engine/datatypes/key/asymmetric/PublicKey;

    move-result-object p1

    check-cast p1, Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;

    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;->contactEphemeralPublicKey:Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;

    return-void

    .line 455
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method public constructor <init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;[BLio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;)V
    .locals 0

    .line 444
    invoke-direct {p0, p1}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    .line 445
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 446
    iput-object p3, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;->contactDeviceUid:Lio/olvid/engine/datatypes/UID;

    .line 447
    iput-object p4, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;->signature:[B

    .line 448
    iput-object p5, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;->contactEphemeralPublicKey:Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;

    return-void
.end method

.method static synthetic access$600(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;)Lio/olvid/engine/datatypes/Identity;
    .locals 0

    .line 437
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    return-object p0
.end method

.method static synthetic access$700(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;)Lio/olvid/engine/datatypes/UID;
    .locals 0

    .line 437
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;->contactDeviceUid:Lio/olvid/engine/datatypes/UID;

    return-object p0
.end method

.method static synthetic access$800(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;)[B
    .locals 0

    .line 437
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;->signature:[B

    return-object p0
.end method

.method static synthetic access$900(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;)Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;
    .locals 0

    .line 437
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;->contactEphemeralPublicKey:Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;

    return-object p0
.end method


# virtual methods
.method public getInputs()[Lio/olvid/engine/encoder/Encoded;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lio/olvid/engine/encoder/Encoded;

    .line 470
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 471
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;->contactDeviceUid:Lio/olvid/engine/datatypes/UID;

    .line 472
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;->signature:[B

    .line 473
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of([B)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$AliceIdentityAndEphemeralKeyMessage;->contactEphemeralPublicKey:Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;

    .line 474
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/key/asymmetric/PublicKey;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getProtocolMessageId()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
