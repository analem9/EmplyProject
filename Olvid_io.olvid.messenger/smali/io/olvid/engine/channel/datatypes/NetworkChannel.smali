.class public abstract Lio/olvid/engine/channel/datatypes/NetworkChannel;
.super Lio/olvid/engine/channel/datatypes/Channel;
.source "NetworkChannel.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lio/olvid/engine/channel/datatypes/Channel;-><init>()V

    return-void
.end method

.method public static acceptableChannelsForPosting(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;)[Lio/olvid/engine/channel/datatypes/NetworkChannel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 24
    invoke-interface {p1}, Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;->getSendChannelInfo()Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->getChannelType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/4 p0, 0x0

    new-array p0, p0, [Lio/olvid/engine/channel/datatypes/NetworkChannel;

    return-object p0

    .line 31
    :cond_0
    iget-object p0, p0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->encryptionForIdentityDelegate:Lio/olvid/engine/metamanager/EncryptionForIdentityDelegate;

    invoke-static {p1, p0}, Lio/olvid/engine/channel/datatypes/AsymmetricChannel;->acceptableChannelsForPosting(Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/metamanager/EncryptionForIdentityDelegate;)[Lio/olvid/engine/channel/datatypes/AsymmetricChannel;

    move-result-object p0

    return-object p0

    .line 28
    :cond_1
    invoke-static {p0, p1}, Lio/olvid/engine/channel/databases/ObliviousChannel;->acceptableChannelsForPosting(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;)[Lio/olvid/engine/channel/databases/ObliviousChannel;

    move-result-object p0

    return-object p0
.end method

.method public static post(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 39
    iget-object v3, v0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->networkSendDelegate:Lio/olvid/engine/metamanager/NetworkSendDelegate;

    if-eqz v3, :cond_b

    .line 44
    invoke-static/range {p0 .. p1}, Lio/olvid/engine/channel/datatypes/NetworkChannel;->acceptableChannelsForPosting(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;)[Lio/olvid/engine/channel/datatypes/NetworkChannel;

    move-result-object v3

    .line 46
    array-length v4, v3

    if-eqz v4, :cond_a

    .line 53
    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v4, :cond_1

    aget-object v8, v3, v6

    .line 54
    invoke-virtual {v8}, Lio/olvid/engine/channel/datatypes/NetworkChannel;->getObliviousEngineVersion()I

    move-result v9

    if-ge v9, v7, :cond_0

    .line 55
    invoke-virtual {v8}, Lio/olvid/engine/channel/datatypes/NetworkChannel;->getObliviousEngineVersion()I

    move-result v7

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 59
    :cond_1
    invoke-static {v7}, Lio/olvid/engine/crypto/Suite;->getDefaultAuthEnc(I)Lio/olvid/engine/crypto/AuthEnc;

    move-result-object v4

    .line 60
    invoke-interface {v4, v2}, Lio/olvid/engine/crypto/AuthEnc;->generateKey(Lio/olvid/engine/crypto/PRNG;)Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    move-result-object v6

    .line 62
    array-length v7, v3

    new-array v12, v7, [Lio/olvid/engine/datatypes/containers/MessageToSend$Header;

    const/4 v7, 0x0

    .line 63
    :goto_1
    array-length v8, v3

    if-ge v7, v8, :cond_2

    .line 64
    aget-object v8, v3, v7

    invoke-virtual {v8, v6, v2}, Lio/olvid/engine/channel/datatypes/NetworkChannel;->wrapMessageKey(Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/containers/MessageToSend$Header;

    move-result-object v8

    aput-object v8, v12, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 68
    :cond_2
    aget-object v3, v12, v5

    invoke-virtual {v3}, Lio/olvid/engine/datatypes/containers/MessageToSend$Header;->getToIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    invoke-virtual {v3}, Lio/olvid/engine/datatypes/Identity;->getServer()Ljava/lang/String;

    move-result-object v10

    const/4 v3, 0x1

    const/4 v7, 0x1

    .line 69
    :goto_2
    array-length v8, v12

    if-ge v7, v8, :cond_4

    .line 70
    aget-object v8, v12, v7

    invoke-virtual {v8}, Lio/olvid/engine/datatypes/containers/MessageToSend$Header;->getToIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v8

    invoke-virtual {v8}, Lio/olvid/engine/datatypes/Identity;->getServer()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    const-string v0, "Server mismatch in the headers of a ChannelMessageToSend"

    .line 71
    invoke-static {v0}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    .line 72
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    .line 77
    :cond_4
    new-instance v7, Lio/olvid/engine/datatypes/UID;

    invoke-direct {v7, v2}, Lio/olvid/engine/datatypes/UID;-><init>(Lio/olvid/engine/crypto/PRNG;)V

    .line 78
    invoke-interface/range {p1 .. p1}, Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;->getMessageType()I

    move-result v8

    const/4 v9, 0x2

    const-string v11, "Trying to post a message of type "

    if-eqz v8, :cond_8

    if-ne v8, v3, :cond_7

    .line 80
    instance-of v8, v1, Lio/olvid/engine/datatypes/containers/ChannelApplicationMessageToSend;

    if-eqz v8, :cond_6

    .line 84
    check-cast v1, Lio/olvid/engine/datatypes/containers/ChannelApplicationMessageToSend;

    .line 85
    invoke-virtual {v1}, Lio/olvid/engine/datatypes/containers/ChannelApplicationMessageToSend;->hasUserContent()Z

    move-result v14

    .line 86
    invoke-virtual {v1}, Lio/olvid/engine/datatypes/containers/ChannelApplicationMessageToSend;->getAttachments()[Lio/olvid/engine/datatypes/containers/ChannelApplicationMessageToSend$Attachment;

    move-result-object v8

    .line 87
    array-length v11, v8

    add-int/2addr v11, v3

    new-array v11, v11, [Lio/olvid/engine/encoder/Encoded;

    .line 88
    array-length v13, v8

    new-array v13, v13, [Lio/olvid/engine/datatypes/containers/MessageToSend$Attachment;

    const/4 v15, 0x0

    .line 90
    :goto_3
    array-length v3, v8

    if-ge v15, v3, :cond_5

    .line 91
    invoke-interface {v4, v2}, Lio/olvid/engine/crypto/AuthEnc;->generateKey(Lio/olvid/engine/crypto/PRNG;)Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    move-result-object v22

    new-array v3, v9, [Lio/olvid/engine/encoder/Encoded;

    .line 93
    invoke-static/range {v22 .. v22}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/key/symmetric/SymmetricKey;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v17

    aput-object v17, v3, v5

    aget-object v17, v8, v15

    .line 94
    invoke-virtual/range {v17 .. v17}, Lio/olvid/engine/datatypes/containers/ChannelApplicationMessageToSend$Attachment;->getMetadata()[B

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lio/olvid/engine/encoder/Encoded;->of([B)Lio/olvid/engine/encoder/Encoded;

    move-result-object v17

    const/16 v16, 0x1

    aput-object v17, v3, v16

    .line 92
    invoke-static {v3}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v3

    aput-object v3, v11, v15

    .line 96
    new-instance v3, Lio/olvid/engine/datatypes/containers/MessageToSend$Attachment;

    aget-object v17, v8, v15

    invoke-virtual/range {v17 .. v17}, Lio/olvid/engine/datatypes/containers/ChannelApplicationMessageToSend$Attachment;->getUrl()Ljava/lang/String;

    move-result-object v18

    aget-object v17, v8, v15

    invoke-virtual/range {v17 .. v17}, Lio/olvid/engine/datatypes/containers/ChannelApplicationMessageToSend$Attachment;->isDeleteAfterSend()Z

    move-result v19

    aget-object v17, v8, v15

    invoke-virtual/range {v17 .. v17}, Lio/olvid/engine/datatypes/containers/ChannelApplicationMessageToSend$Attachment;->getAttachmentLength()J

    move-result-wide v20

    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v22}, Lio/olvid/engine/datatypes/containers/MessageToSend$Attachment;-><init>(Ljava/lang/String;ZJLio/olvid/engine/datatypes/key/symmetric/AuthEncKey;)V

    aput-object v3, v13, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 99
    :cond_5
    array-length v3, v8

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/containers/ChannelApplicationMessageToSend;->getMessagePayload()[B

    move-result-object v1

    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of([B)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    aput-object v1, v11, v3

    new-array v1, v9, [Lio/olvid/engine/encoder/Encoded;

    const-wide/16 v8, 0x1

    .line 102
    invoke-static {v8, v9}, Lio/olvid/engine/encoder/Encoded;->of(J)Lio/olvid/engine/encoder/Encoded;

    move-result-object v3

    aput-object v3, v1, v5

    .line 103
    invoke-static {v11}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v1, v5

    .line 101
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    .line 105
    invoke-virtual {v1}, Lio/olvid/engine/encoder/Encoded;->getBytes()[B

    move-result-object v1

    invoke-interface {v4, v6, v1, v2}, Lio/olvid/engine/crypto/AuthEnc;->encrypt(Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;[BLio/olvid/engine/crypto/PRNG;)Lio/olvid/engine/datatypes/EncryptedBytes;

    move-result-object v11

    .line 106
    new-instance v1, Lio/olvid/engine/datatypes/containers/MessageToSend;

    move-object v8, v1

    move-object v9, v7

    invoke-direct/range {v8 .. v14}, Lio/olvid/engine/datatypes/containers/MessageToSend;-><init>(Lio/olvid/engine/datatypes/UID;Ljava/lang/String;Lio/olvid/engine/datatypes/EncryptedBytes;[Lio/olvid/engine/datatypes/containers/MessageToSend$Header;[Lio/olvid/engine/datatypes/containers/MessageToSend$Attachment;Z)V

    goto :goto_4

    .line 81
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;->getMessageType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " that is not a ChannelApplicationMessageToSend."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    .line 82
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    .line 122
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;->getMessageType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " on a network channel."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    .line 123
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    .line 109
    :cond_8
    instance-of v3, v1, Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    if-eqz v3, :cond_9

    .line 113
    check-cast v1, Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    new-array v3, v9, [Lio/olvid/engine/encoder/Encoded;

    const-wide/16 v8, 0x0

    .line 115
    invoke-static {v8, v9}, Lio/olvid/engine/encoder/Encoded;->of(J)Lio/olvid/engine/encoder/Encoded;

    move-result-object v8

    aput-object v8, v3, v5

    .line 116
    invoke-virtual {v1}, Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;->getEncodedElements()Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v5, 0x1

    aput-object v1, v3, v5

    .line 114
    invoke-static {v3}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    .line 118
    invoke-virtual {v1}, Lio/olvid/engine/encoder/Encoded;->getBytes()[B

    move-result-object v1

    invoke-interface {v4, v6, v1, v2}, Lio/olvid/engine/crypto/AuthEnc;->encrypt(Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;[BLio/olvid/engine/crypto/PRNG;)Lio/olvid/engine/datatypes/EncryptedBytes;

    move-result-object v1

    .line 119
    new-instance v2, Lio/olvid/engine/datatypes/containers/MessageToSend;

    invoke-direct {v2, v7, v10, v1, v12}, Lio/olvid/engine/datatypes/containers/MessageToSend;-><init>(Lio/olvid/engine/datatypes/UID;Ljava/lang/String;Lio/olvid/engine/datatypes/EncryptedBytes;[Lio/olvid/engine/datatypes/containers/MessageToSend$Header;)V

    move-object v1, v2

    .line 125
    :goto_4
    iget-object v2, v0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->networkSendDelegate:Lio/olvid/engine/metamanager/NetworkSendDelegate;

    iget-object v0, v0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-interface {v2, v0, v1}, Lio/olvid/engine/metamanager/NetworkSendDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/MessageToSend;)V

    return-object v7

    .line 110
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;->getMessageType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " that is not a ChannelProtocolMessageToSend."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    .line 111
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    :cond_a
    const-string v0, "No acceptable channels were found for posting"

    .line 47
    invoke-static {v0}, Lio/olvid/engine/Logger;->i(Ljava/lang/String;)V

    .line 48
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    :cond_b
    const-string v0, "NetworkSendDelegate not set yet when posting a ChannelMessageToSend."

    .line 40
    invoke-static {v0}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    .line 41
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
.end method


# virtual methods
.method public abstract wrapMessageKey(Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/containers/MessageToSend$Header;
.end method
