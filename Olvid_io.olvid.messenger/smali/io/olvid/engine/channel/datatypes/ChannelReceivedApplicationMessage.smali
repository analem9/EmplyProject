.class public Lio/olvid/engine/channel/datatypes/ChannelReceivedApplicationMessage;
.super Ljava/lang/Object;
.source "ChannelReceivedApplicationMessage.java"


# instance fields
.field private final attachmentsKeyAndMetadata:[Lio/olvid/engine/datatypes/containers/AttachmentKeyAndMetadata;

.field private final message:Lio/olvid/engine/channel/datatypes/ChannelReceivedMessage;

.field private final messagePayload:[B


# direct methods
.method private constructor <init>(Lio/olvid/engine/channel/datatypes/ChannelReceivedMessage;[Lio/olvid/engine/datatypes/containers/AttachmentKeyAndMetadata;[B)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lio/olvid/engine/channel/datatypes/ChannelReceivedApplicationMessage;->message:Lio/olvid/engine/channel/datatypes/ChannelReceivedMessage;

    .line 20
    iput-object p2, p0, Lio/olvid/engine/channel/datatypes/ChannelReceivedApplicationMessage;->attachmentsKeyAndMetadata:[Lio/olvid/engine/datatypes/containers/AttachmentKeyAndMetadata;

    .line 21
    iput-object p3, p0, Lio/olvid/engine/channel/datatypes/ChannelReceivedApplicationMessage;->messagePayload:[B

    return-void
.end method

.method public static of(Lio/olvid/engine/channel/datatypes/ChannelReceivedMessage;)Lio/olvid/engine/channel/datatypes/ChannelReceivedApplicationMessage;
    .locals 9

    .line 25
    invoke-virtual {p0}, Lio/olvid/engine/channel/datatypes/ChannelReceivedMessage;->getMessageType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return-object v1

    .line 28
    :cond_0
    invoke-virtual {p0}, Lio/olvid/engine/channel/datatypes/ChannelReceivedMessage;->getReceptionChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->getChannelType()I

    move-result v0

    if-eq v0, v2, :cond_1

    return-object v1

    .line 34
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lio/olvid/engine/channel/datatypes/ChannelReceivedMessage;->getEncodedElements()Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeList()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    .line 35
    array-length v3, v0

    sub-int/2addr v3, v2

    new-array v3, v3, [Lio/olvid/engine/datatypes/containers/AttachmentKeyAndMetadata;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 37
    :goto_0
    array-length v6, v0

    sub-int/2addr v6, v2

    if-ge v5, v6, :cond_3

    .line 38
    aget-object v6, v0, v5

    invoke-virtual {v6}, Lio/olvid/engine/encoder/Encoded;->decodeList()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v6

    .line 39
    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 42
    new-instance v7, Lio/olvid/engine/datatypes/containers/AttachmentKeyAndMetadata;

    aget-object v8, v6, v4

    .line 43
    invoke-virtual {v8}, Lio/olvid/engine/encoder/Encoded;->decodeSymmetricKey()Lio/olvid/engine/datatypes/key/symmetric/SymmetricKey;

    move-result-object v8

    check-cast v8, Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    aget-object v6, v6, v2

    .line 44
    invoke-virtual {v6}, Lio/olvid/engine/encoder/Encoded;->decodeBytes()[B

    move-result-object v6

    invoke-direct {v7, v8, v6}, Lio/olvid/engine/datatypes/containers/AttachmentKeyAndMetadata;-><init>(Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;[B)V

    aput-object v7, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 40
    :cond_2
    new-instance p0, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {p0}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw p0

    .line 48
    :cond_3
    array-length v4, v0

    sub-int/2addr v4, v2

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeBytes()[B

    move-result-object v0

    .line 50
    new-instance v2, Lio/olvid/engine/channel/datatypes/ChannelReceivedApplicationMessage;

    invoke-direct {v2, p0, v3, v0}, Lio/olvid/engine/channel/datatypes/ChannelReceivedApplicationMessage;-><init>(Lio/olvid/engine/channel/datatypes/ChannelReceivedMessage;[Lio/olvid/engine/datatypes/containers/AttachmentKeyAndMetadata;[B)V
    :try_end_0
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    return-object v1
.end method


# virtual methods
.method public getAttachmentsKeyAndMetadata()[Lio/olvid/engine/datatypes/containers/AttachmentKeyAndMetadata;
    .locals 1

    .line 62
    iget-object v0, p0, Lio/olvid/engine/channel/datatypes/ChannelReceivedApplicationMessage;->attachmentsKeyAndMetadata:[Lio/olvid/engine/datatypes/containers/AttachmentKeyAndMetadata;

    return-object v0
.end method

.method public getMessage()Lio/olvid/engine/channel/datatypes/ChannelReceivedMessage;
    .locals 1

    .line 58
    iget-object v0, p0, Lio/olvid/engine/channel/datatypes/ChannelReceivedApplicationMessage;->message:Lio/olvid/engine/channel/datatypes/ChannelReceivedMessage;

    return-object v0
.end method

.method public getMessagePayload()[B
    .locals 1

    .line 74
    iget-object v0, p0, Lio/olvid/engine/channel/datatypes/ChannelReceivedApplicationMessage;->messagePayload:[B

    return-object v0
.end method

.method public getMessageUid()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 70
    iget-object v0, p0, Lio/olvid/engine/channel/datatypes/ChannelReceivedApplicationMessage;->message:Lio/olvid/engine/channel/datatypes/ChannelReceivedMessage;

    invoke-virtual {v0}, Lio/olvid/engine/channel/datatypes/ChannelReceivedMessage;->getMessageUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v0

    return-object v0
.end method

.method public getToIdentity()Lio/olvid/engine/datatypes/Identity;
    .locals 1

    .line 66
    iget-object v0, p0, Lio/olvid/engine/channel/datatypes/ChannelReceivedApplicationMessage;->message:Lio/olvid/engine/channel/datatypes/ChannelReceivedMessage;

    invoke-virtual {v0}, Lio/olvid/engine/channel/datatypes/ChannelReceivedMessage;->getToIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    return-object v0
.end method
