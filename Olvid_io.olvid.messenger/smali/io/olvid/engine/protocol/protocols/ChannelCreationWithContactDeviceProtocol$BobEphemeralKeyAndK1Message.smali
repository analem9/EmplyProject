.class public Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$BobEphemeralKeyAndK1Message;
.super Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;
.source "ChannelCreationWithContactDeviceProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BobEphemeralKeyAndK1Message"
.end annotation


# instance fields
.field private final c1:Lio/olvid/engine/datatypes/EncryptedBytes;

.field private final contactEphemeralPublicKey:Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/databases/ReceivedMessage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 492
    new-instance v0, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    invoke-direct {v0, p1}, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;-><init>(Lio/olvid/engine/protocol/databases/ReceivedMessage;)V

    invoke-direct {p0, v0}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    .line 493
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getInputs()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 496
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getInputs()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodePublicKey()Lio/olvid/engine/datatypes/key/asymmetric/PublicKey;

    move-result-object v0

    check-cast v0, Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;

    iput-object v0, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$BobEphemeralKeyAndK1Message;->contactEphemeralPublicKey:Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;

    .line 497
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getInputs()[Lio/olvid/engine/encoder/Encoded;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lio/olvid/engine/encoder/Encoded;->decodeEncryptedData()Lio/olvid/engine/datatypes/EncryptedBytes;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$BobEphemeralKeyAndK1Message;->c1:Lio/olvid/engine/datatypes/EncryptedBytes;

    return-void

    .line 494
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method constructor <init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;Lio/olvid/engine/datatypes/EncryptedBytes;)V
    .locals 0

    .line 485
    invoke-direct {p0, p1}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    .line 486
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$BobEphemeralKeyAndK1Message;->contactEphemeralPublicKey:Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;

    .line 487
    iput-object p3, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$BobEphemeralKeyAndK1Message;->c1:Lio/olvid/engine/datatypes/EncryptedBytes;

    return-void
.end method

.method static synthetic access$1100(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$BobEphemeralKeyAndK1Message;)Lio/olvid/engine/datatypes/EncryptedBytes;
    .locals 0

    .line 480
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$BobEphemeralKeyAndK1Message;->c1:Lio/olvid/engine/datatypes/EncryptedBytes;

    return-object p0
.end method

.method static synthetic access$1200(Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$BobEphemeralKeyAndK1Message;)Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;
    .locals 0

    .line 480
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$BobEphemeralKeyAndK1Message;->contactEphemeralPublicKey:Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;

    return-object p0
.end method


# virtual methods
.method public getInputs()[Lio/olvid/engine/encoder/Encoded;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lio/olvid/engine/encoder/Encoded;

    .line 507
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$BobEphemeralKeyAndK1Message;->contactEphemeralPublicKey:Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;

    .line 508
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/key/asymmetric/PublicKey;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/ChannelCreationWithContactDeviceProtocol$BobEphemeralKeyAndK1Message;->c1:Lio/olvid/engine/datatypes/EncryptedBytes;

    .line 509
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/EncryptedBytes;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getProtocolMessageId()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
