.class public Lio/olvid/engine/channel/datatypes/ChannelReceivedMessage;
.super Ljava/lang/Object;
.source "ChannelReceivedMessage.java"


# instance fields
.field private final encodedElements:Lio/olvid/engine/encoder/Encoded;

.field private final message:Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage;

.field private final messageType:I

.field private final receptionChannelInfo:Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;


# direct methods
.method public constructor <init>(Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage;Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    :try_start_0
    invoke-static {p2}, Lio/olvid/engine/crypto/Suite;->getAuthEnc(Lio/olvid/engine/datatypes/key/CryptographicKey;)Lio/olvid/engine/crypto/AuthEnc;

    move-result-object v0

    .line 24
    new-instance v1, Lio/olvid/engine/encoder/Encoded;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage;->getEncryptedContent()Lio/olvid/engine/datatypes/EncryptedBytes;

    move-result-object v2

    invoke-interface {v0, p2, v2}, Lio/olvid/engine/crypto/AuthEnc;->decrypt(Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;Lio/olvid/engine/datatypes/EncryptedBytes;)[B

    move-result-object p2

    invoke-direct {v1, p2}, Lio/olvid/engine/encoder/Encoded;-><init>([B)V

    .line 27
    invoke-virtual {v1}, Lio/olvid/engine/encoder/Encoded;->decodeList()[Lio/olvid/engine/encoder/Encoded;

    move-result-object p2

    .line 28
    array-length v0, p2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 31
    aget-object v0, p2, v0

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeLong()J

    move-result-wide v0

    long-to-int v1, v0

    iput v1, p0, Lio/olvid/engine/channel/datatypes/ChannelReceivedMessage;->messageType:I

    const/4 v0, 0x1

    .line 32
    aget-object p2, p2, v0

    iput-object p2, p0, Lio/olvid/engine/channel/datatypes/ChannelReceivedMessage;->encodedElements:Lio/olvid/engine/encoder/Encoded;

    .line 34
    iput-object p3, p0, Lio/olvid/engine/channel/datatypes/ChannelReceivedMessage;->receptionChannelInfo:Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    .line 35
    iput-object p1, p0, Lio/olvid/engine/channel/datatypes/ChannelReceivedMessage;->message:Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage;

    return-void

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
    :try_end_0
    .catch Lio/olvid/engine/crypto/exceptions/DecryptionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :catch_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Undecipherable message."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getEncodedElements()Lio/olvid/engine/encoder/Encoded;
    .locals 1

    .line 47
    iget-object v0, p0, Lio/olvid/engine/channel/datatypes/ChannelReceivedMessage;->encodedElements:Lio/olvid/engine/encoder/Encoded;

    return-object v0
.end method

.method public getMessage()Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage;
    .locals 1

    .line 55
    iget-object v0, p0, Lio/olvid/engine/channel/datatypes/ChannelReceivedMessage;->message:Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage;

    return-object v0
.end method

.method public getMessageType()I
    .locals 1

    .line 43
    iget v0, p0, Lio/olvid/engine/channel/datatypes/ChannelReceivedMessage;->messageType:I

    return v0
.end method

.method public getMessageUid()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 65
    iget-object v0, p0, Lio/olvid/engine/channel/datatypes/ChannelReceivedMessage;->message:Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage;

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage;->getMessageUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v0

    return-object v0
.end method

.method public getReceptionChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;
    .locals 1

    .line 51
    iget-object v0, p0, Lio/olvid/engine/channel/datatypes/ChannelReceivedMessage;->receptionChannelInfo:Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    return-object v0
.end method

.method public getToIdentity()Lio/olvid/engine/datatypes/Identity;
    .locals 1

    .line 61
    iget-object v0, p0, Lio/olvid/engine/channel/datatypes/ChannelReceivedMessage;->message:Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage;

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage;->getHeader()Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage$Header;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage$Header;->getToIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    return-object v0
.end method
