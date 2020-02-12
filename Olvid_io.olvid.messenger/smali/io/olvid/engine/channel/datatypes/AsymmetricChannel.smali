.class public Lio/olvid/engine/channel/datatypes/AsymmetricChannel;
.super Lio/olvid/engine/channel/datatypes/NetworkChannel;
.source "AsymmetricChannel.java"


# instance fields
.field private final encryptionForIdentityDelegate:Lio/olvid/engine/metamanager/EncryptionForIdentityDelegate;

.field private final toDeviceUid:Lio/olvid/engine/datatypes/UID;

.field private final toIdentity:Lio/olvid/engine/datatypes/Identity;


# direct methods
.method public constructor <init>(Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/metamanager/EncryptionForIdentityDelegate;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lio/olvid/engine/channel/datatypes/NetworkChannel;-><init>()V

    .line 27
    iput-object p1, p0, Lio/olvid/engine/channel/datatypes/AsymmetricChannel;->toDeviceUid:Lio/olvid/engine/datatypes/UID;

    .line 28
    iput-object p2, p0, Lio/olvid/engine/channel/datatypes/AsymmetricChannel;->toIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 29
    iput-object p3, p0, Lio/olvid/engine/channel/datatypes/AsymmetricChannel;->encryptionForIdentityDelegate:Lio/olvid/engine/metamanager/EncryptionForIdentityDelegate;

    return-void
.end method

.method public static acceptableChannelsForPosting(Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/metamanager/EncryptionForIdentityDelegate;)[Lio/olvid/engine/channel/datatypes/AsymmetricChannel;
    .locals 8

    .line 54
    invoke-interface {p0}, Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;->getMessageType()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array p0, v1, [Lio/olvid/engine/channel/datatypes/AsymmetricChannel;

    return-object p0

    .line 58
    :cond_0
    invoke-interface {p0}, Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;->getSendChannelInfo()Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->getChannelType()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    new-array p0, v1, [Lio/olvid/engine/channel/datatypes/AsymmetricChannel;

    return-object p0

    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Lio/olvid/engine/channel/datatypes/AsymmetricChannel;

    .line 68
    new-instance v2, Lio/olvid/engine/channel/datatypes/AsymmetricChannel;

    sget-object v3, Lio/olvid/engine/datatypes/Constants;->BROADCAST_UID:Lio/olvid/engine/datatypes/UID;

    .line 69
    invoke-interface {p0}, Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;->getSendChannelInfo()Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object p0

    invoke-virtual {p0}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->getToIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object p0

    invoke-direct {v2, v3, p0, p1}, Lio/olvid/engine/channel/datatypes/AsymmetricChannel;-><init>(Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/metamanager/EncryptionForIdentityDelegate;)V

    aput-object v2, v0, v1

    return-object v0

    .line 60
    :cond_2
    invoke-interface {p0}, Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;->getSendChannelInfo()Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->getRemoteDeviceUids()[Lio/olvid/engine/datatypes/UID;

    move-result-object v0

    .line 61
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 62
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    .line 63
    new-instance v6, Lio/olvid/engine/channel/datatypes/AsymmetricChannel;

    invoke-interface {p0}, Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;->getSendChannelInfo()Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v7

    invoke-virtual {v7}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->getToIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v7

    invoke-direct {v6, v5, v7, p1}, Lio/olvid/engine/channel/datatypes/AsymmetricChannel;-><init>(Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/metamanager/EncryptionForIdentityDelegate;)V

    invoke-virtual {v2, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    new-array p0, v1, [Lio/olvid/engine/channel/datatypes/AsymmetricChannel;

    .line 65
    invoke-virtual {v2, p0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lio/olvid/engine/channel/datatypes/AsymmetricChannel;

    return-object p0
.end method

.method public static unwrapMessageKey(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage$Header;)Lio/olvid/engine/channel/datatypes/AuthEncKeyAndChannelInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->encryptionForIdentityDelegate:Lio/olvid/engine/metamanager/EncryptionForIdentityDelegate;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 47
    :cond_0
    iget-object v0, p0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->encryptionForIdentityDelegate:Lio/olvid/engine/metamanager/EncryptionForIdentityDelegate;

    iget-object p0, p0, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage$Header;->getWrappedKey()Lio/olvid/engine/datatypes/EncryptedBytes;

    move-result-object v1

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage$Header;->getToIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lio/olvid/engine/metamanager/EncryptionForIdentityDelegate;->unwrap(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/EncryptedBytes;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    move-result-object p0

    .line 48
    new-instance p1, Lio/olvid/engine/channel/datatypes/AuthEncKeyAndChannelInfo;

    invoke-static {}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->createAsymmetricChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lio/olvid/engine/channel/datatypes/AuthEncKeyAndChannelInfo;-><init>(Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;)V

    return-object p1
.end method


# virtual methods
.method public wrapMessageKey(Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/containers/MessageToSend$Header;
    .locals 2

    .line 35
    iget-object v0, p0, Lio/olvid/engine/channel/datatypes/AsymmetricChannel;->encryptionForIdentityDelegate:Lio/olvid/engine/metamanager/EncryptionForIdentityDelegate;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 38
    :cond_0
    iget-object v1, p0, Lio/olvid/engine/channel/datatypes/AsymmetricChannel;->toIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-interface {v0, p1, v1, p2}, Lio/olvid/engine/metamanager/EncryptionForIdentityDelegate;->wrap(Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/EncryptedBytes;

    move-result-object p1

    .line 39
    new-instance p2, Lio/olvid/engine/datatypes/containers/MessageToSend$Header;

    iget-object v0, p0, Lio/olvid/engine/channel/datatypes/AsymmetricChannel;->toDeviceUid:Lio/olvid/engine/datatypes/UID;

    iget-object v1, p0, Lio/olvid/engine/channel/datatypes/AsymmetricChannel;->toIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-direct {p2, v0, v1, p1}, Lio/olvid/engine/datatypes/containers/MessageToSend$Header;-><init>(Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/EncryptedBytes;)V

    return-object p2
.end method
