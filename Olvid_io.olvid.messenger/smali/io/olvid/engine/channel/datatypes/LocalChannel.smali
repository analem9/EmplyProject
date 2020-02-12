.class public Lio/olvid/engine/channel/datatypes/LocalChannel;
.super Lio/olvid/engine/channel/datatypes/Channel;
.source "LocalChannel.java"


# instance fields
.field private final toIdentity:Lio/olvid/engine/datatypes/Identity;


# direct methods
.method private constructor <init>(Lio/olvid/engine/datatypes/Identity;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lio/olvid/engine/channel/datatypes/Channel;-><init>()V

    .line 25
    iput-object p1, p0, Lio/olvid/engine/channel/datatypes/LocalChannel;->toIdentity:Lio/olvid/engine/datatypes/Identity;

    return-void
.end method

.method private static acceptableChannelsForPosting(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;)[Lio/olvid/engine/channel/datatypes/LocalChannel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 66
    invoke-interface {p1}, Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;->getSendChannelInfo()Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->getChannelType()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array p0, v1, [Lio/olvid/engine/channel/datatypes/LocalChannel;

    return-object p0

    .line 69
    :cond_0
    iget-object v0, p0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object p0, p0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-interface {p1}, Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;->getSendChannelInfo()Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v2

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->getToIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Lio/olvid/engine/metamanager/IdentityDelegate;->isOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    new-array p0, p0, [Lio/olvid/engine/channel/datatypes/LocalChannel;

    .line 70
    new-instance v0, Lio/olvid/engine/channel/datatypes/LocalChannel;

    .line 71
    invoke-interface {p1}, Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;->getSendChannelInfo()Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object p1

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->getToIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/olvid/engine/channel/datatypes/LocalChannel;-><init>(Lio/olvid/engine/datatypes/Identity;)V

    aput-object v0, p0, v1

    return-object p0

    :cond_1
    new-array p0, v1, [Lio/olvid/engine/channel/datatypes/LocalChannel;

    return-object p0
.end method

.method private doPost(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 29
    invoke-interface {p2}, Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;->getMessageType()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 p3, 0x3

    if-eq v0, p3, :cond_1

    const/4 p3, 0x5

    if-eq v0, p3, :cond_0

    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Trying to post a message of type "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;->getMessageType()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " on a LocalChannel."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/Logger;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_0
    check-cast p2, Lio/olvid/engine/datatypes/containers/ChannelServerResponseMessageToSend;

    .line 43
    new-instance p3, Lio/olvid/engine/datatypes/containers/ProtocolReceivedServerResponse;

    invoke-virtual {p2}, Lio/olvid/engine/datatypes/containers/ChannelServerResponseMessageToSend;->getEncodedServerResponse()Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    iget-object v1, p0, Lio/olvid/engine/channel/datatypes/LocalChannel;->toIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {p2}, Lio/olvid/engine/datatypes/containers/ChannelServerResponseMessageToSend;->getEncodedElements()Lio/olvid/engine/encoder/Encoded;

    move-result-object p2

    invoke-static {}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->createLocalChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v2

    invoke-direct {p3, v0, v1, p2, v2}, Lio/olvid/engine/datatypes/containers/ProtocolReceivedServerResponse;-><init>(Lio/olvid/engine/encoder/Encoded;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/encoder/Encoded;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;)V

    .line 44
    iget-object p2, p1, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->protocolDelegate:Lio/olvid/engine/metamanager/ProtocolDelegate;

    iget-object p1, p1, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-interface {p2, p1, p3}, Lio/olvid/engine/metamanager/ProtocolDelegate;->process(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ProtocolReceivedServerResponse;)V

    goto :goto_0

    .line 37
    :cond_1
    check-cast p2, Lio/olvid/engine/datatypes/containers/ChannelDialogResponseMessageToSend;

    .line 38
    new-instance p3, Lio/olvid/engine/datatypes/containers/ProtocolReceivedDialogResponse;

    invoke-virtual {p2}, Lio/olvid/engine/datatypes/containers/ChannelDialogResponseMessageToSend;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p2}, Lio/olvid/engine/datatypes/containers/ChannelDialogResponseMessageToSend;->getEncodedUserDialogResponse()Lio/olvid/engine/encoder/Encoded;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/engine/channel/datatypes/LocalChannel;->toIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {p2}, Lio/olvid/engine/datatypes/containers/ChannelDialogResponseMessageToSend;->getEncodedElements()Lio/olvid/engine/encoder/Encoded;

    move-result-object v4

    invoke-static {}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->createLocalChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v5

    move-object v0, p3

    invoke-direct/range {v0 .. v5}, Lio/olvid/engine/datatypes/containers/ProtocolReceivedDialogResponse;-><init>(Ljava/util/UUID;Lio/olvid/engine/encoder/Encoded;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/encoder/Encoded;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;)V

    .line 39
    iget-object p2, p1, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->protocolDelegate:Lio/olvid/engine/metamanager/ProtocolDelegate;

    iget-object p1, p1, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-interface {p2, p1, p3}, Lio/olvid/engine/metamanager/ProtocolDelegate;->process(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ProtocolReceivedDialogResponse;)V

    goto :goto_0

    .line 31
    :cond_2
    check-cast p2, Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    .line 32
    new-instance v1, Lio/olvid/engine/datatypes/UID;

    invoke-direct {v1, p3}, Lio/olvid/engine/datatypes/UID;-><init>(Lio/olvid/engine/crypto/PRNG;)V

    .line 33
    new-instance p3, Lio/olvid/engine/datatypes/containers/ProtocolReceivedMessage;

    iget-object v2, p0, Lio/olvid/engine/channel/datatypes/LocalChannel;->toIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {p2}, Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;->getEncodedElements()Lio/olvid/engine/encoder/Encoded;

    move-result-object v3

    invoke-static {}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->createLocalChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v0, p3

    invoke-direct/range {v0 .. v6}, Lio/olvid/engine/datatypes/containers/ProtocolReceivedMessage;-><init>(Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/encoder/Encoded;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;J)V

    .line 34
    iget-object p2, p1, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->protocolDelegate:Lio/olvid/engine/metamanager/ProtocolDelegate;

    iget-object p1, p1, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-interface {p2, p1, p3}, Lio/olvid/engine/metamanager/ProtocolDelegate;->process(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ProtocolReceivedMessage;)V

    :goto_0
    return-void
.end method

.method public static post(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 53
    invoke-static {p0, p1}, Lio/olvid/engine/channel/datatypes/LocalChannel;->acceptableChannelsForPosting(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;)[Lio/olvid/engine/channel/datatypes/LocalChannel;

    move-result-object v0

    .line 54
    array-length v1, v0

    if-eqz v1, :cond_1

    .line 58
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 59
    invoke-direct {v3, p0, p1, p2}, Lio/olvid/engine/channel/datatypes/LocalChannel;->doPost(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    const-string p0, "No acceptable channels were found for posting"

    .line 55
    invoke-static {p0}, Lio/olvid/engine/Logger;->i(Ljava/lang/String;)V

    .line 56
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    throw p0
.end method
