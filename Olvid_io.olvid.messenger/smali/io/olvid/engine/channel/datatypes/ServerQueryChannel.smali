.class public Lio/olvid/engine/channel/datatypes/ServerQueryChannel;
.super Lio/olvid/engine/channel/datatypes/Channel;
.source "ServerQueryChannel.java"


# instance fields
.field private final toIdentity:Lio/olvid/engine/datatypes/Identity;


# direct methods
.method private constructor <init>(Lio/olvid/engine/datatypes/Identity;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lio/olvid/engine/channel/datatypes/Channel;-><init>()V

    .line 19
    iput-object p1, p0, Lio/olvid/engine/channel/datatypes/ServerQueryChannel;->toIdentity:Lio/olvid/engine/datatypes/Identity;

    return-void
.end method

.method private static acceptableChannelsForPosting(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;)[Lio/olvid/engine/channel/datatypes/ServerQueryChannel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 51
    invoke-interface {p1}, Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;->getSendChannelInfo()Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->getChannelType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    new-array p0, v1, [Lio/olvid/engine/channel/datatypes/ServerQueryChannel;

    return-object p0

    .line 54
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

    new-array p0, p0, [Lio/olvid/engine/channel/datatypes/ServerQueryChannel;

    .line 55
    new-instance v0, Lio/olvid/engine/channel/datatypes/ServerQueryChannel;

    .line 56
    invoke-interface {p1}, Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;->getSendChannelInfo()Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object p1

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->getToIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/olvid/engine/channel/datatypes/ServerQueryChannel;-><init>(Lio/olvid/engine/datatypes/Identity;)V

    aput-object v0, p0, v1

    return-object p0

    :cond_1
    new-array p0, v1, [Lio/olvid/engine/channel/datatypes/ServerQueryChannel;

    return-object p0
.end method

.method private doPost(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 23
    invoke-interface {p2}, Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;->getMessageType()I

    move-result p3

    const/4 v0, 0x4

    if-eq p3, v0, :cond_0

    .line 34
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Trying to post a message of type "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;->getMessageType()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " on a ServerQueryChannel."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/Logger;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 25
    :cond_0
    check-cast p2, Lio/olvid/engine/datatypes/containers/ChannelServerQueryMessageToSend;

    .line 26
    new-instance p3, Lio/olvid/engine/datatypes/containers/ServerQuery;

    .line 27
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/containers/ChannelServerQueryMessageToSend;->getEncodedElements()Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    .line 28
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/containers/ChannelServerQueryMessageToSend;->getSendChannelInfo()Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->getToIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    .line 29
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/containers/ChannelServerQueryMessageToSend;->getSendChannelInfo()Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object p2

    invoke-virtual {p2}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->getServerQueryType()Lio/olvid/engine/datatypes/containers/ServerQuery$Type;

    move-result-object p2

    invoke-direct {p3, v0, v1, p2}, Lio/olvid/engine/datatypes/containers/ServerQuery;-><init>(Lio/olvid/engine/encoder/Encoded;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/ServerQuery$Type;)V

    .line 31
    iget-object p2, p1, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->networkFetchDelegate:Lio/olvid/engine/metamanager/NetworkFetchDelegate;

    iget-object p1, p1, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-interface {p2, p1, p3}, Lio/olvid/engine/metamanager/NetworkFetchDelegate;->createPendingServerQuery(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ServerQuery;)V

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

    .line 39
    invoke-static {p0, p1}, Lio/olvid/engine/channel/datatypes/ServerQueryChannel;->acceptableChannelsForPosting(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;)[Lio/olvid/engine/channel/datatypes/ServerQueryChannel;

    move-result-object v0

    .line 40
    array-length v1, v0

    if-eqz v1, :cond_1

    .line 44
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 45
    invoke-direct {v3, p0, p1, p2}, Lio/olvid/engine/channel/datatypes/ServerQueryChannel;->doPost(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    const-string p0, "No acceptable channels were found for posting"

    .line 41
    invoke-static {p0}, Lio/olvid/engine/Logger;->i(Ljava/lang/String;)V

    .line 42
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    throw p0
.end method
