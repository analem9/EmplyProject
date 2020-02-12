.class public Lio/olvid/engine/channel/ChannelManager;
.super Ljava/lang/Object;
.source "ChannelManager.java"

# interfaces
.implements Lio/olvid/engine/metamanager/ChannelDelegate;
.implements Lio/olvid/engine/metamanager/ProcessDownloadedMessageDelegate;
.implements Lio/olvid/engine/channel/datatypes/ChannelManagerSessionFactory;
.implements Lio/olvid/engine/metamanager/ObvManager;


# instance fields
.field private final channelCoordinator:Lio/olvid/engine/channel/datatypes/NetworkReceivedMessageDecryptorDelegate;

.field private createSessionDelegate:Lio/olvid/engine/metamanager/CreateSessionDelegate;

.field private encryptionForIdentityDelegate:Lio/olvid/engine/metamanager/EncryptionForIdentityDelegate;

.field private fullRatchetProtocolStarterDelegate:Lio/olvid/engine/metamanager/FullRatchetProtocolStarterDelegate;

.field private identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

.field private final metaManager:Lio/olvid/engine/metamanager/MetaManager;

.field private networkFetchDelegate:Lio/olvid/engine/metamanager/NetworkFetchDelegate;

.field private networkSendDelegate:Lio/olvid/engine/metamanager/NetworkSendDelegate;

.field private notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

.field private protocolDelegate:Lio/olvid/engine/metamanager/ProtocolDelegate;


# direct methods
.method public constructor <init>(Lio/olvid/engine/metamanager/MetaManager;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lio/olvid/engine/channel/ChannelManager;->metaManager:Lio/olvid/engine/metamanager/MetaManager;

    .line 51
    new-instance v0, Lio/olvid/engine/channel/coordinators/ChannelCoordinator;

    invoke-direct {v0, p0}, Lio/olvid/engine/channel/coordinators/ChannelCoordinator;-><init>(Lio/olvid/engine/channel/datatypes/ChannelManagerSessionFactory;)V

    iput-object v0, p0, Lio/olvid/engine/channel/ChannelManager;->channelCoordinator:Lio/olvid/engine/channel/datatypes/NetworkReceivedMessageDecryptorDelegate;

    .line 53
    const-class v0, Lio/olvid/engine/metamanager/CreateSessionDelegate;

    invoke-virtual {p1, p0, v0}, Lio/olvid/engine/metamanager/MetaManager;->requestDelegate(Lio/olvid/engine/metamanager/ObvManager;Ljava/lang/Class;)V

    .line 54
    const-class v0, Lio/olvid/engine/metamanager/FullRatchetProtocolStarterDelegate;

    invoke-virtual {p1, p0, v0}, Lio/olvid/engine/metamanager/MetaManager;->requestDelegate(Lio/olvid/engine/metamanager/ObvManager;Ljava/lang/Class;)V

    .line 55
    const-class v0, Lio/olvid/engine/metamanager/NetworkFetchDelegate;

    invoke-virtual {p1, p0, v0}, Lio/olvid/engine/metamanager/MetaManager;->requestDelegate(Lio/olvid/engine/metamanager/ObvManager;Ljava/lang/Class;)V

    .line 56
    const-class v0, Lio/olvid/engine/metamanager/NetworkSendDelegate;

    invoke-virtual {p1, p0, v0}, Lio/olvid/engine/metamanager/MetaManager;->requestDelegate(Lio/olvid/engine/metamanager/ObvManager;Ljava/lang/Class;)V

    .line 57
    const-class v0, Lio/olvid/engine/metamanager/ProtocolDelegate;

    invoke-virtual {p1, p0, v0}, Lio/olvid/engine/metamanager/MetaManager;->requestDelegate(Lio/olvid/engine/metamanager/ObvManager;Ljava/lang/Class;)V

    .line 58
    const-class v0, Lio/olvid/engine/metamanager/IdentityDelegate;

    invoke-virtual {p1, p0, v0}, Lio/olvid/engine/metamanager/MetaManager;->requestDelegate(Lio/olvid/engine/metamanager/ObvManager;Ljava/lang/Class;)V

    .line 59
    const-class v0, Lio/olvid/engine/metamanager/EncryptionForIdentityDelegate;

    invoke-virtual {p1, p0, v0}, Lio/olvid/engine/metamanager/MetaManager;->requestDelegate(Lio/olvid/engine/metamanager/ObvManager;Ljava/lang/Class;)V

    .line 60
    const-class v0, Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    invoke-virtual {p1, p0, v0}, Lio/olvid/engine/metamanager/MetaManager;->requestDelegate(Lio/olvid/engine/metamanager/ObvManager;Ljava/lang/Class;)V

    .line 61
    invoke-virtual {p1, p0}, Lio/olvid/engine/metamanager/MetaManager;->registerImplementedDelegates(Ljava/lang/Object;)V

    return-void
.end method

.method private getObliviousChannel(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/channel/databases/ObliviousChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lio/olvid/engine/channel/ChannelManager;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    if-nez v0, :cond_0

    const-string p1, "Calling getObliviousChannel while the IdentityDelegate is not yet set"

    .line 182
    invoke-static {p1}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 185
    :cond_0
    invoke-interface {v0, p1, p2}, Lio/olvid/engine/metamanager/IdentityDelegate;->getCurrentDeviceUidOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/UID;

    move-result-object p2

    .line 186
    invoke-direct {p0, p1}, Lio/olvid/engine/channel/ChannelManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/channel/datatypes/ChannelManagerSession;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, p4, v0}, Lio/olvid/engine/channel/databases/ObliviousChannel;->get(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Z)Lio/olvid/engine/channel/databases/ObliviousChannel;

    move-result-object p1

    return-object p1
.end method

.method public static upgradeTables(Lio/olvid/engine/datatypes/Session;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 98
    invoke-static {p0, p1, p2}, Lio/olvid/engine/channel/databases/ObliviousChannel;->upgradeTable(Lio/olvid/engine/datatypes/Session;II)V

    .line 99
    invoke-static {p0, p1, p2}, Lio/olvid/engine/channel/databases/Provision;->upgradeTable(Lio/olvid/engine/datatypes/Session;II)V

    .line 100
    invoke-static {p0, p1, p2}, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->upgradeTable(Lio/olvid/engine/datatypes/Session;II)V

    return-void
.end method

.method private wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/channel/datatypes/ChannelManagerSession;
    .locals 10

    .line 236
    new-instance v9, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;

    iget-object v2, p0, Lio/olvid/engine/channel/ChannelManager;->fullRatchetProtocolStarterDelegate:Lio/olvid/engine/metamanager/FullRatchetProtocolStarterDelegate;

    iget-object v3, p0, Lio/olvid/engine/channel/ChannelManager;->networkFetchDelegate:Lio/olvid/engine/metamanager/NetworkFetchDelegate;

    iget-object v4, p0, Lio/olvid/engine/channel/ChannelManager;->networkSendDelegate:Lio/olvid/engine/metamanager/NetworkSendDelegate;

    iget-object v5, p0, Lio/olvid/engine/channel/ChannelManager;->protocolDelegate:Lio/olvid/engine/metamanager/ProtocolDelegate;

    iget-object v6, p0, Lio/olvid/engine/channel/ChannelManager;->encryptionForIdentityDelegate:Lio/olvid/engine/metamanager/EncryptionForIdentityDelegate;

    iget-object v7, p0, Lio/olvid/engine/channel/ChannelManager;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v8, p0, Lio/olvid/engine/channel/ChannelManager;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    move-object v0, v9

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;-><init>(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/metamanager/FullRatchetProtocolStarterDelegate;Lio/olvid/engine/metamanager/NetworkFetchDelegate;Lio/olvid/engine/metamanager/NetworkSendDelegate;Lio/olvid/engine/metamanager/ProtocolDelegate;Lio/olvid/engine/metamanager/EncryptionForIdentityDelegate;Lio/olvid/engine/metamanager/IdentityDelegate;Lio/olvid/engine/metamanager/NotificationPostingDelegate;)V

    return-object v9
.end method


# virtual methods
.method public confirmObliviousChannel(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 164
    invoke-direct {p0, p1, p2, p3, p4}, Lio/olvid/engine/channel/ChannelManager;->getObliviousChannel(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/channel/databases/ObliviousChannel;

    move-result-object p1

    .line 165
    invoke-virtual {p1}, Lio/olvid/engine/channel/databases/ObliviousChannel;->confirm()V

    return-void
.end method

.method public createObliviousChannel(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Seed;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lio/olvid/engine/channel/ChannelManager;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    if-eqz v0, :cond_0

    .line 158
    invoke-interface {v0, p1, p2}, Lio/olvid/engine/metamanager/IdentityDelegate;->getCurrentDeviceUidOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/UID;

    move-result-object v2

    .line 159
    invoke-direct {p0, p1}, Lio/olvid/engine/channel/ChannelManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/channel/datatypes/ChannelManagerSession;

    move-result-object v1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-static/range {v1 .. v6}, Lio/olvid/engine/channel/databases/ObliviousChannel;->create(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Seed;I)Lio/olvid/engine/channel/databases/ObliviousChannel;

    return-void

    :cond_0
    const-string p1, "Calling createObliviousChannel while the IdentityDelegate is not yet set"

    .line 155
    invoke-static {p1}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    .line 156
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method public deleteObliviousChannelIfItExists(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lio/olvid/engine/channel/ChannelManager;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    invoke-interface {v0, p1, p2}, Lio/olvid/engine/metamanager/IdentityDelegate;->getCurrentDeviceUidOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/UID;

    move-result-object p2

    .line 218
    invoke-direct {p0, p1}, Lio/olvid/engine/channel/ChannelManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/channel/datatypes/ChannelManagerSession;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, p4, v0}, Lio/olvid/engine/channel/databases/ObliviousChannel;->get(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Z)Lio/olvid/engine/channel/databases/ObliviousChannel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 220
    invoke-virtual {p1}, Lio/olvid/engine/channel/databases/ObliviousChannel;->delete()V

    :cond_0
    return-void
.end method

.method public deleteObliviousChannelsWithContact(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lio/olvid/engine/channel/ChannelManager;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    invoke-interface {v0, p1, p3, p2}, Lio/olvid/engine/metamanager/IdentityDelegate;->getDeviceUidsOfContactIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/datatypes/UID;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 207
    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    .line 210
    :cond_0
    iget-object v1, p0, Lio/olvid/engine/channel/ChannelManager;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    invoke-interface {v1, p1, p2}, Lio/olvid/engine/metamanager/IdentityDelegate;->getCurrentDeviceUidOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/UID;

    move-result-object p2

    .line 211
    invoke-direct {p0, p1}, Lio/olvid/engine/channel/ChannelManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/channel/datatypes/ChannelManagerSession;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, p3, v1}, Lio/olvid/engine/channel/databases/ObliviousChannel;->deleteMany(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Lio/olvid/engine/datatypes/UID;[Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getConfirmedObliviousChannelDeviceUids(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/datatypes/UID;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lio/olvid/engine/channel/ChannelManager;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    invoke-interface {v0, p1, p3, p2}, Lio/olvid/engine/metamanager/IdentityDelegate;->getDeviceUidsOfContactIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/datatypes/UID;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 192
    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_1

    .line 195
    :cond_0
    iget-object v2, p0, Lio/olvid/engine/channel/ChannelManager;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    invoke-interface {v2, p1, p2}, Lio/olvid/engine/metamanager/IdentityDelegate;->getCurrentDeviceUidOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/UID;

    move-result-object p2

    .line 196
    invoke-direct {p0, p1}, Lio/olvid/engine/channel/ChannelManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/channel/datatypes/ChannelManagerSession;

    move-result-object p1

    const/4 v2, 0x1

    invoke-static {p1, p2, v0, p3, v2}, Lio/olvid/engine/channel/databases/ObliviousChannel;->getMany(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Lio/olvid/engine/datatypes/UID;[Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Z)[Lio/olvid/engine/channel/databases/ObliviousChannel;

    move-result-object p1

    .line 197
    array-length p2, p1

    new-array p2, p2, [Lio/olvid/engine/datatypes/UID;

    .line 198
    :goto_0
    array-length p3, p1

    if-ge v1, p3, :cond_1

    .line 199
    aget-object p3, p1, v1

    invoke-virtual {p3}, Lio/olvid/engine/channel/databases/ObliviousChannel;->getRemoteDeviceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object p3

    aput-object p3, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p2

    :cond_2
    :goto_1
    new-array p1, v1, [Lio/olvid/engine/datatypes/UID;

    return-object p1
.end method

.method public getSession()Lio/olvid/engine/channel/datatypes/ChannelManagerSession;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lio/olvid/engine/channel/ChannelManager;->createSessionDelegate:Lio/olvid/engine/metamanager/CreateSessionDelegate;

    if-eqz v0, :cond_0

    .line 232
    new-instance v10, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;

    invoke-interface {v0}, Lio/olvid/engine/metamanager/CreateSessionDelegate;->getSession()Lio/olvid/engine/datatypes/Session;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/engine/channel/ChannelManager;->fullRatchetProtocolStarterDelegate:Lio/olvid/engine/metamanager/FullRatchetProtocolStarterDelegate;

    iget-object v4, p0, Lio/olvid/engine/channel/ChannelManager;->networkFetchDelegate:Lio/olvid/engine/metamanager/NetworkFetchDelegate;

    iget-object v5, p0, Lio/olvid/engine/channel/ChannelManager;->networkSendDelegate:Lio/olvid/engine/metamanager/NetworkSendDelegate;

    iget-object v6, p0, Lio/olvid/engine/channel/ChannelManager;->protocolDelegate:Lio/olvid/engine/metamanager/ProtocolDelegate;

    iget-object v7, p0, Lio/olvid/engine/channel/ChannelManager;->encryptionForIdentityDelegate:Lio/olvid/engine/metamanager/EncryptionForIdentityDelegate;

    iget-object v8, p0, Lio/olvid/engine/channel/ChannelManager;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v9, p0, Lio/olvid/engine/channel/ChannelManager;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;-><init>(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/metamanager/FullRatchetProtocolStarterDelegate;Lio/olvid/engine/metamanager/NetworkFetchDelegate;Lio/olvid/engine/metamanager/NetworkSendDelegate;Lio/olvid/engine/metamanager/ProtocolDelegate;Lio/olvid/engine/metamanager/EncryptionForIdentityDelegate;Lio/olvid/engine/metamanager/IdentityDelegate;Lio/olvid/engine/metamanager/NotificationPostingDelegate;)V

    return-object v10

    .line 230
    :cond_0
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "No CreateSessionDelegate was set in ChannelManager."

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initialisationComplete()V
    .locals 5

    .line 66
    :try_start_0
    invoke-virtual {p0}, Lio/olvid/engine/channel/ChannelManager;->getSession()Lio/olvid/engine/channel/datatypes/ChannelManagerSession;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :try_start_1
    invoke-static {v0}, Lio/olvid/engine/channel/databases/ObliviousChannel;->clean(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;)V

    .line 71
    invoke-static {v0}, Lio/olvid/engine/channel/databases/ObliviousChannel;->getAllConfirmed(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;)[Lio/olvid/engine/channel/databases/ObliviousChannel;

    move-result-object v1

    .line 72
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 73
    invoke-virtual {v4}, Lio/olvid/engine/channel/databases/ObliviousChannel;->getLatestProvision()Lio/olvid/engine/channel/databases/Provision;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 75
    invoke-virtual {v4}, Lio/olvid/engine/channel/databases/Provision;->selfRatchetIfRequired()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_3

    .line 78
    :try_start_2
    invoke-virtual {v0}, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 66
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_2

    .line 78
    :try_start_4
    invoke-virtual {v0}, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v2
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    .line 79
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method

.method public post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 149
    invoke-direct {p0, p1}, Lio/olvid/engine/channel/ChannelManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/channel/datatypes/ChannelManagerSession;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lio/olvid/engine/channel/datatypes/Channel;->post(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    move-result-object p1

    return-object p1
.end method

.method public processDownloadedMessage(Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "Could not process null NetworkReceivedMessage"

    .line 139
    invoke-static {p1}, Lio/olvid/engine/Logger;->i(Ljava/lang/String;)V

    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lio/olvid/engine/channel/ChannelManager;->channelCoordinator:Lio/olvid/engine/channel/datatypes/NetworkReceivedMessageDecryptorDelegate;

    invoke-interface {v0, p1}, Lio/olvid/engine/channel/datatypes/NetworkReceivedMessageDecryptorDelegate;->decryptAndProcess(Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage;)V

    return-void
.end method

.method public setDelegate(Lio/olvid/engine/metamanager/CreateSessionDelegate;)V
    .locals 2

    .line 84
    iput-object p1, p0, Lio/olvid/engine/channel/ChannelManager;->createSessionDelegate:Lio/olvid/engine/metamanager/CreateSessionDelegate;

    .line 86
    :try_start_0
    invoke-virtual {p0}, Lio/olvid/engine/channel/ChannelManager;->getSession()Lio/olvid/engine/channel/datatypes/ChannelManagerSession;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :try_start_1
    iget-object v0, p1, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-static {v0}, Lio/olvid/engine/channel/databases/ObliviousChannel;->createTable(Lio/olvid/engine/datatypes/Session;)V

    .line 88
    iget-object v0, p1, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-static {v0}, Lio/olvid/engine/channel/databases/Provision;->createTable(Lio/olvid/engine/datatypes/Session;)V

    .line 89
    iget-object v0, p1, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-static {v0}, Lio/olvid/engine/channel/databases/ProvisionedKeyMaterial;->createTable(Lio/olvid/engine/datatypes/Session;)V

    .line 90
    iget-object v0, p1, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Session;->commit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 91
    :try_start_2
    invoke-virtual {p1}, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 86
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p1, :cond_1

    .line 91
    :try_start_4
    invoke-virtual {p1}, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    :try_start_5
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    .line 92
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    .line 93
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unable to create channel databases"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDelegate(Lio/olvid/engine/metamanager/EncryptionForIdentityDelegate;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lio/olvid/engine/channel/ChannelManager;->encryptionForIdentityDelegate:Lio/olvid/engine/metamanager/EncryptionForIdentityDelegate;

    return-void
.end method

.method public setDelegate(Lio/olvid/engine/metamanager/FullRatchetProtocolStarterDelegate;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lio/olvid/engine/channel/ChannelManager;->fullRatchetProtocolStarterDelegate:Lio/olvid/engine/metamanager/FullRatchetProtocolStarterDelegate;

    return-void
.end method

.method public setDelegate(Lio/olvid/engine/metamanager/IdentityDelegate;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lio/olvid/engine/channel/ChannelManager;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    return-void
.end method

.method public setDelegate(Lio/olvid/engine/metamanager/NetworkFetchDelegate;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lio/olvid/engine/channel/ChannelManager;->networkFetchDelegate:Lio/olvid/engine/metamanager/NetworkFetchDelegate;

    return-void
.end method

.method public setDelegate(Lio/olvid/engine/metamanager/NetworkSendDelegate;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lio/olvid/engine/channel/ChannelManager;->networkSendDelegate:Lio/olvid/engine/metamanager/NetworkSendDelegate;

    return-void
.end method

.method public setDelegate(Lio/olvid/engine/metamanager/NotificationPostingDelegate;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lio/olvid/engine/channel/ChannelManager;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    return-void
.end method

.method public setDelegate(Lio/olvid/engine/metamanager/ProtocolDelegate;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lio/olvid/engine/channel/ChannelManager;->protocolDelegate:Lio/olvid/engine/metamanager/ProtocolDelegate;

    return-void
.end method

.method public updateObliviousChannelReceiveSeed(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Seed;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 176
    invoke-direct {p0, p1, p2, p3, p4}, Lio/olvid/engine/channel/ChannelManager;->getObliviousChannel(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/channel/databases/ObliviousChannel;

    move-result-object p1

    .line 177
    invoke-virtual {p1, p5, p6}, Lio/olvid/engine/channel/databases/ObliviousChannel;->createNewProvision(Lio/olvid/engine/datatypes/Seed;I)V

    return-void
.end method

.method public updateObliviousChannelSendSeed(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Seed;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 170
    invoke-direct {p0, p1, p2, p3, p4}, Lio/olvid/engine/channel/ChannelManager;->getObliviousChannel(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/channel/databases/ObliviousChannel;

    move-result-object p1

    .line 171
    invoke-virtual {p1, p5, p6}, Lio/olvid/engine/channel/databases/ObliviousChannel;->updateSendSeed(Lio/olvid/engine/datatypes/Seed;I)V

    return-void
.end method
