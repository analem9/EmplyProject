.class public Lio/olvid/engine/networkfetch/FetchManager;
.super Ljava/lang/Object;
.source "FetchManager.java"

# interfaces
.implements Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;
.implements Lio/olvid/engine/metamanager/NetworkFetchDelegate;
.implements Lio/olvid/engine/metamanager/PushNotificationDelegate;
.implements Lio/olvid/engine/metamanager/GetAttachmentReceivedLengthDelegate;
.implements Lio/olvid/engine/metamanager/ObvManager;


# instance fields
.field private final attachmentStoragePath:Ljava/lang/String;

.field private final createServerSessionCoordinator:Lio/olvid/engine/networkfetch/coordinators/CreateServerSessionCoordinator;

.field private createSessionDelegate:Lio/olvid/engine/metamanager/CreateSessionDelegate;

.field private final deleteMessageAndAttachmentsCoordinator:Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator;

.field private final downloadAttachmentCoordinator:Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;

.field private final downloadMessagesAndListAttachmentsCoordinator:Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;

.field private identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

.field private final jsonObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

.field private final metaManager:Lio/olvid/engine/metamanager/MetaManager;

.field private notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

.field private final prng:Lio/olvid/engine/crypto/PRNGService;

.field private final refreshInboxAttachmentSignedUrlCoordinator:Lio/olvid/engine/networkfetch/coordinators/RefreshInboxAttachmentSignedUrlCoordinator;

.field private final serverPushNotificationsCoordinator:Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;

.field private final serverQueryCoordinator:Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator;

.field private final websocketCoordinator:Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;


# direct methods
.method public constructor <init>(Lio/olvid/engine/metamanager/MetaManager;Ljava/lang/String;Lio/olvid/engine/crypto/PRNGService;Lcom/fasterxml/jackson/databind/ObjectMapper;)V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lio/olvid/engine/networkfetch/FetchManager;->metaManager:Lio/olvid/engine/metamanager/MetaManager;

    .line 70
    iput-object p2, p0, Lio/olvid/engine/networkfetch/FetchManager;->attachmentStoragePath:Ljava/lang/String;

    .line 71
    iput-object p3, p0, Lio/olvid/engine/networkfetch/FetchManager;->prng:Lio/olvid/engine/crypto/PRNGService;

    .line 72
    iput-object p4, p0, Lio/olvid/engine/networkfetch/FetchManager;->jsonObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 73
    new-instance p2, Lio/olvid/engine/networkfetch/coordinators/CreateServerSessionCoordinator;

    invoke-direct {p2, p0}, Lio/olvid/engine/networkfetch/coordinators/CreateServerSessionCoordinator;-><init>(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;)V

    iput-object p2, p0, Lio/olvid/engine/networkfetch/FetchManager;->createServerSessionCoordinator:Lio/olvid/engine/networkfetch/coordinators/CreateServerSessionCoordinator;

    .line 74
    new-instance p2, Lio/olvid/engine/networkfetch/coordinators/RefreshInboxAttachmentSignedUrlCoordinator;

    invoke-direct {p2, p0}, Lio/olvid/engine/networkfetch/coordinators/RefreshInboxAttachmentSignedUrlCoordinator;-><init>(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;)V

    iput-object p2, p0, Lio/olvid/engine/networkfetch/FetchManager;->refreshInboxAttachmentSignedUrlCoordinator:Lio/olvid/engine/networkfetch/coordinators/RefreshInboxAttachmentSignedUrlCoordinator;

    .line 75
    new-instance p2, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;

    iget-object v0, p0, Lio/olvid/engine/networkfetch/FetchManager;->refreshInboxAttachmentSignedUrlCoordinator:Lio/olvid/engine/networkfetch/coordinators/RefreshInboxAttachmentSignedUrlCoordinator;

    invoke-direct {p2, p0, v0}, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;-><init>(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;Lio/olvid/engine/networkfetch/datatypes/RefreshInboxAttachmentSignedUrlDelegate;)V

    iput-object p2, p0, Lio/olvid/engine/networkfetch/FetchManager;->downloadAttachmentCoordinator:Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;

    .line 76
    new-instance p2, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;

    iget-object v0, p0, Lio/olvid/engine/networkfetch/FetchManager;->createServerSessionCoordinator:Lio/olvid/engine/networkfetch/coordinators/CreateServerSessionCoordinator;

    invoke-direct {p2, p0, v0}, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;-><init>(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;Lio/olvid/engine/networkfetch/datatypes/CreateServerSessionDelegate;)V

    iput-object p2, p0, Lio/olvid/engine/networkfetch/FetchManager;->downloadMessagesAndListAttachmentsCoordinator:Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;

    .line 77
    new-instance p2, Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator;

    iget-object v0, p0, Lio/olvid/engine/networkfetch/FetchManager;->createServerSessionCoordinator:Lio/olvid/engine/networkfetch/coordinators/CreateServerSessionCoordinator;

    invoke-direct {p2, p0, v0}, Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator;-><init>(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;Lio/olvid/engine/networkfetch/datatypes/CreateServerSessionDelegate;)V

    iput-object p2, p0, Lio/olvid/engine/networkfetch/FetchManager;->deleteMessageAndAttachmentsCoordinator:Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator;

    .line 78
    new-instance p2, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;

    iget-object v0, p0, Lio/olvid/engine/networkfetch/FetchManager;->createServerSessionCoordinator:Lio/olvid/engine/networkfetch/coordinators/CreateServerSessionCoordinator;

    iget-object v1, p0, Lio/olvid/engine/networkfetch/FetchManager;->downloadMessagesAndListAttachmentsCoordinator:Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;

    invoke-direct {p2, p0, v0, v1}, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;-><init>(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;Lio/olvid/engine/networkfetch/datatypes/CreateServerSessionDelegate;Lio/olvid/engine/networkfetch/datatypes/DownloadMessagesAndListAttachmentsDelegate;)V

    iput-object p2, p0, Lio/olvid/engine/networkfetch/FetchManager;->serverPushNotificationsCoordinator:Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;

    .line 79
    new-instance p2, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;

    iget-object v0, p0, Lio/olvid/engine/networkfetch/FetchManager;->createServerSessionCoordinator:Lio/olvid/engine/networkfetch/coordinators/CreateServerSessionCoordinator;

    iget-object v1, p0, Lio/olvid/engine/networkfetch/FetchManager;->downloadMessagesAndListAttachmentsCoordinator:Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;

    invoke-direct {p2, p0, v0, v1, p4}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;-><init>(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;Lio/olvid/engine/networkfetch/datatypes/CreateServerSessionDelegate;Lio/olvid/engine/networkfetch/datatypes/DownloadMessagesAndListAttachmentsDelegate;Lcom/fasterxml/jackson/databind/ObjectMapper;)V

    iput-object p2, p0, Lio/olvid/engine/networkfetch/FetchManager;->websocketCoordinator:Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;

    .line 80
    new-instance p2, Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator;

    iget-object p4, p0, Lio/olvid/engine/networkfetch/FetchManager;->createServerSessionCoordinator:Lio/olvid/engine/networkfetch/coordinators/CreateServerSessionCoordinator;

    invoke-direct {p2, p0, p3, p4}, Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator;-><init>(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;Lio/olvid/engine/crypto/PRNGService;Lio/olvid/engine/networkfetch/datatypes/CreateServerSessionDelegate;)V

    iput-object p2, p0, Lio/olvid/engine/networkfetch/FetchManager;->serverQueryCoordinator:Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator;

    .line 82
    const-class p2, Lio/olvid/engine/metamanager/CreateSessionDelegate;

    invoke-virtual {p1, p0, p2}, Lio/olvid/engine/metamanager/MetaManager;->requestDelegate(Lio/olvid/engine/metamanager/ObvManager;Ljava/lang/Class;)V

    .line 83
    const-class p2, Lio/olvid/engine/metamanager/SolveChallengeDelegate;

    invoke-virtual {p1, p0, p2}, Lio/olvid/engine/metamanager/MetaManager;->requestDelegate(Lio/olvid/engine/metamanager/ObvManager;Ljava/lang/Class;)V

    .line 84
    const-class p2, Lio/olvid/engine/metamanager/ProcessDownloadedMessageDelegate;

    invoke-virtual {p1, p0, p2}, Lio/olvid/engine/metamanager/MetaManager;->requestDelegate(Lio/olvid/engine/metamanager/ObvManager;Ljava/lang/Class;)V

    .line 85
    const-class p2, Lio/olvid/engine/metamanager/NotificationListeningDelegate;

    invoke-virtual {p1, p0, p2}, Lio/olvid/engine/metamanager/MetaManager;->requestDelegate(Lio/olvid/engine/metamanager/ObvManager;Ljava/lang/Class;)V

    .line 86
    const-class p2, Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    invoke-virtual {p1, p0, p2}, Lio/olvid/engine/metamanager/MetaManager;->requestDelegate(Lio/olvid/engine/metamanager/ObvManager;Ljava/lang/Class;)V

    .line 87
    const-class p2, Lio/olvid/engine/metamanager/ChannelDelegate;

    invoke-virtual {p1, p0, p2}, Lio/olvid/engine/metamanager/MetaManager;->requestDelegate(Lio/olvid/engine/metamanager/ObvManager;Ljava/lang/Class;)V

    .line 88
    const-class p2, Lio/olvid/engine/metamanager/IdentityDelegate;

    invoke-virtual {p1, p0, p2}, Lio/olvid/engine/metamanager/MetaManager;->requestDelegate(Lio/olvid/engine/metamanager/ObvManager;Ljava/lang/Class;)V

    .line 89
    invoke-virtual {p1, p0}, Lio/olvid/engine/metamanager/MetaManager;->registerImplementedDelegates(Ljava/lang/Object;)V

    return-void
.end method

.method public static upgradeTables(Lio/olvid/engine/datatypes/Session;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 122
    invoke-static {p0, p1, p2}, Lio/olvid/engine/networkfetch/databases/ServerSession;->upgradeTable(Lio/olvid/engine/datatypes/Session;II)V

    .line 123
    invoke-static {p0, p1, p2}, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->upgradeTable(Lio/olvid/engine/datatypes/Session;II)V

    .line 124
    invoke-static {p0, p1, p2}, Lio/olvid/engine/networkfetch/databases/PendingDeleteFromServer;->upgradeTable(Lio/olvid/engine/datatypes/Session;II)V

    .line 125
    invoke-static {p0, p1, p2}, Lio/olvid/engine/networkfetch/databases/InboxMessage;->upgradeTable(Lio/olvid/engine/datatypes/Session;II)V

    .line 126
    invoke-static {p0, p1, p2}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->upgradeTable(Lio/olvid/engine/datatypes/Session;II)V

    .line 127
    invoke-static {p0, p1, p2}, Lio/olvid/engine/networkfetch/databases/PendingServerQuery;->upgradeTable(Lio/olvid/engine/datatypes/Session;II)V

    return-void
.end method

.method private wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;
    .locals 11

    .line 186
    new-instance v10, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    iget-object v2, p0, Lio/olvid/engine/networkfetch/FetchManager;->downloadMessagesAndListAttachmentsCoordinator:Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;

    iget-object v3, p0, Lio/olvid/engine/networkfetch/FetchManager;->downloadAttachmentCoordinator:Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;

    iget-object v4, p0, Lio/olvid/engine/networkfetch/FetchManager;->deleteMessageAndAttachmentsCoordinator:Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator;

    iget-object v5, p0, Lio/olvid/engine/networkfetch/FetchManager;->serverPushNotificationsCoordinator:Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;

    iget-object v6, p0, Lio/olvid/engine/networkfetch/FetchManager;->serverQueryCoordinator:Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator;

    iget-object v7, p0, Lio/olvid/engine/networkfetch/FetchManager;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v8, p0, Lio/olvid/engine/networkfetch/FetchManager;->attachmentStoragePath:Ljava/lang/String;

    iget-object v9, p0, Lio/olvid/engine/networkfetch/FetchManager;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    move-object v0, v10

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;-><init>(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/networkfetch/databases/InboxMessage$InboxMessageListener;Lio/olvid/engine/networkfetch/databases/InboxAttachment$InboxAttachmentListener;Lio/olvid/engine/networkfetch/databases/PendingDeleteFromServer$PendingDeleteFromServerListener;Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification$RegisteredPushNotificationListener;Lio/olvid/engine/networkfetch/databases/PendingServerQuery$PendingServerQueryListener;Lio/olvid/engine/metamanager/IdentityDelegate;Ljava/lang/String;Lio/olvid/engine/metamanager/NotificationPostingDelegate;)V

    return-object v10
.end method


# virtual methods
.method public canAllAttachmentsBeDownloaded(Lio/olvid/engine/datatypes/UID;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 221
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/FetchManager;->getSession()Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    move-result-object v0

    .line 222
    :try_start_0
    invoke-static {v0, p1}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->getAll(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Lio/olvid/engine/datatypes/UID;)[Lio/olvid/engine/networkfetch/databases/InboxAttachment;

    move-result-object p1

    .line 223
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    .line 224
    invoke-virtual {v4}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->cannotBeFetched()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V

    :cond_3
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 221
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_4

    .line 229
    :try_start_2
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v1
.end method

.method public connectWebsockets()V
    .locals 1

    .line 443
    iget-object v0, p0, Lio/olvid/engine/networkfetch/FetchManager;->websocketCoordinator:Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;

    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->connectWebsockets()V

    return-void
.end method

.method public createPendingServerQuery(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ServerQuery;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 430
    invoke-direct {p0, p1}, Lio/olvid/engine/networkfetch/FetchManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    move-result-object p1

    iget-object v0, p0, Lio/olvid/engine/networkfetch/FetchManager;->prng:Lio/olvid/engine/crypto/PRNGService;

    invoke-static {p1, p2, v0}, Lio/olvid/engine/networkfetch/databases/PendingServerQuery;->create(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Lio/olvid/engine/datatypes/containers/ServerQuery;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/networkfetch/databases/PendingServerQuery;

    move-result-object p1

    if-eqz p1, :cond_0

    return-void

    .line 432
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method public deleteAttachment(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/UID;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 407
    invoke-direct {p0, p1}, Lio/olvid/engine/networkfetch/FetchManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    move-result-object p1

    .line 408
    invoke-static {p1, p2, p3}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->get(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Lio/olvid/engine/datatypes/UID;I)Lio/olvid/engine/networkfetch/databases/InboxAttachment;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    .line 412
    :cond_0
    invoke-virtual {p3}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->markForDeletion()V

    .line 413
    invoke-virtual {p3}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->getMessage()Lio/olvid/engine/networkfetch/databases/InboxMessage;

    move-result-object p3

    invoke-virtual {p3}, Lio/olvid/engine/networkfetch/databases/InboxMessage;->canBeDeleted()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 414
    invoke-static {p1, p2}, Lio/olvid/engine/networkfetch/databases/PendingDeleteFromServer;->create(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/networkfetch/databases/PendingDeleteFromServer;

    :cond_1
    return-void
.end method

.method public deleteExistingServerSessionAndCreateANewOne(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)V
    .locals 0

    .line 438
    invoke-direct {p0, p1}, Lio/olvid/engine/networkfetch/FetchManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    move-result-object p1

    invoke-static {p1, p2}, Lio/olvid/engine/networkfetch/databases/ServerSession;->deleteForIdentity(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Lio/olvid/engine/datatypes/Identity;)V

    .line 439
    iget-object p1, p0, Lio/olvid/engine/networkfetch/FetchManager;->createServerSessionCoordinator:Lio/olvid/engine/networkfetch/coordinators/CreateServerSessionCoordinator;

    invoke-virtual {p1, p2}, Lio/olvid/engine/networkfetch/coordinators/CreateServerSessionCoordinator;->createServerSession(Lio/olvid/engine/datatypes/Identity;)V

    return-void
.end method

.method public deleteMessage(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/UID;)V
    .locals 1

    .line 393
    invoke-direct {p0, p1}, Lio/olvid/engine/networkfetch/FetchManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    move-result-object p1

    .line 394
    invoke-static {p1, p2}, Lio/olvid/engine/networkfetch/databases/InboxMessage;->get(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/networkfetch/databases/InboxMessage;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 398
    :cond_0
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/databases/InboxMessage;->markForDeletion()V

    .line 399
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/databases/InboxMessage;->canBeDeleted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 400
    invoke-static {p1, p2}, Lio/olvid/engine/networkfetch/databases/PendingDeleteFromServer;->create(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/networkfetch/databases/PendingDeleteFromServer;

    :cond_1
    return-void
.end method

.method public deleteMessageAndAttachments(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/UID;)V
    .locals 4

    .line 378
    invoke-direct {p0, p1}, Lio/olvid/engine/networkfetch/FetchManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    move-result-object p1

    .line 379
    invoke-static {p1, p2}, Lio/olvid/engine/networkfetch/databases/InboxMessage;->get(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/networkfetch/databases/InboxMessage;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 383
    :cond_0
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/databases/InboxMessage;->markForDeletion()V

    .line 384
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/databases/InboxMessage;->getAttachments()[Lio/olvid/engine/networkfetch/databases/InboxAttachment;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 385
    invoke-virtual {v3}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->markForDeletion()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 387
    :cond_1
    invoke-static {p1, p2}, Lio/olvid/engine/networkfetch/databases/PendingDeleteFromServer;->create(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/networkfetch/databases/PendingDeleteFromServer;

    return-void
.end method

.method public deleteReturnReceipt(Lio/olvid/engine/datatypes/Identity;[B)V
    .locals 1

    .line 520
    iget-object v0, p0, Lio/olvid/engine/networkfetch/FetchManager;->websocketCoordinator:Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;

    invoke-virtual {v0, p1, p2}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->deleteReturnReceipt(Lio/olvid/engine/datatypes/Identity;[B)V

    return-void
.end method

.method public disconnectWebsockets()V
    .locals 1

    .line 447
    iget-object v0, p0, Lio/olvid/engine/networkfetch/FetchManager;->websocketCoordinator:Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;

    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->disconnectWebsockets()V

    return-void
.end method

.method public downloadAttachment(Lio/olvid/engine/datatypes/UID;II)V
    .locals 4

    const-string v0, "-"

    .line 261
    :try_start_0
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/FetchManager;->getSession()Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :try_start_1
    invoke-static {v1, p1, p2}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->get(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Lio/olvid/engine/datatypes/UID;I)Lio/olvid/engine/networkfetch/databases/InboxAttachment;

    move-result-object v2

    if-nez v2, :cond_1

    .line 264
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FetchManager received a downloadAttachment request for an unknown attachment "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 273
    :try_start_2
    invoke-virtual {v1}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-void

    .line 267
    :cond_1
    :try_start_3
    invoke-virtual {v2}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->cannotBeFetched()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 268
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FetchManager received a downloadAttachment request for an attachment that cannot be fetched "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_2

    .line 273
    :try_start_4
    invoke-virtual {v1}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    return-void

    .line 271
    :cond_3
    :try_start_5
    invoke-virtual {v2, p3}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->requestDownload(I)V

    .line 272
    iget-object p3, v1, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p3}, Lio/olvid/engine/datatypes/Session;->commit()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_5

    .line 273
    :try_start_6
    invoke-virtual {v1}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p3

    .line 261
    :try_start_7
    throw p3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v1, :cond_4

    .line 273
    :try_start_8
    invoke-virtual {v1}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    :try_start_9
    invoke-virtual {p3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    throw v2
    :try_end_9
    .catch Ljava/sql/SQLException; {:try_start_9 .. :try_end_9} :catch_0

    .line 274
    :catch_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FetchManager was unable to downloadAttachment "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public downloadMessages(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;)V
    .locals 1

    .line 203
    iget-object v0, p0, Lio/olvid/engine/networkfetch/FetchManager;->downloadMessagesAndListAttachmentsCoordinator:Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;

    invoke-virtual {v0, p1, p2}, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;->downloadMessagesAndListAttachments(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;)V

    return-void
.end method

.method public getAttachment(Lio/olvid/engine/datatypes/UID;I)Lio/olvid/engine/datatypes/containers/ReceivedAttachment;
    .locals 18

    move-object/from16 v1, p1

    move/from16 v2, p2

    const-string v3, "-"

    const/4 v4, 0x0

    .line 310
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/networkfetch/FetchManager;->getSession()Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    move-result-object v5
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 311
    :try_start_1
    invoke-static {v5, v1, v2}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->get(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Lio/olvid/engine/datatypes/UID;I)Lio/olvid/engine/networkfetch/databases/InboxAttachment;

    move-result-object v6

    if-nez v6, :cond_1

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FetchManager received a getAttachment request for an unknown attachment "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_0

    .line 330
    :try_start_2
    invoke-virtual {v5}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    return-object v4

    .line 316
    :cond_1
    :try_start_3
    invoke-virtual {v6}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->cannotBeFetched()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FetchManager received a getAttachment request for an attachment not yet ready "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_2

    .line 330
    :try_start_4
    invoke-virtual {v5}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    return-object v4

    .line 321
    :cond_3
    :try_start_5
    invoke-virtual {v6}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->getUrl()Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v12, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v7, v0

    :try_start_6
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    move-object v12, v4

    .line 322
    :goto_0
    new-instance v0, Lio/olvid/engine/datatypes/containers/ReceivedAttachment;

    .line 323
    invoke-virtual {v6}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->getMessageUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v9

    .line 324
    invoke-virtual {v6}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->getAttachmentNumber()I

    move-result v10

    .line 325
    invoke-virtual {v6}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->getMetadata()[B

    move-result-object v11

    .line 327
    invoke-virtual {v6}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->getExpectedLength()J

    move-result-wide v13

    .line 328
    invoke-virtual {v6}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->getReceivedLength()J

    move-result-wide v15

    .line 329
    invoke-virtual {v6}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->isDownloadRequested()Z

    move-result v17

    move-object v8, v0

    invoke-direct/range {v8 .. v17}, Lio/olvid/engine/datatypes/containers/ReceivedAttachment;-><init>(Lio/olvid/engine/datatypes/UID;I[BLjava/lang/String;JJZ)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v5, :cond_4

    .line 330
    :try_start_7
    invoke-virtual {v5}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_7
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_1

    :cond_4
    return-object v0

    :catchall_0
    move-exception v0

    move-object v6, v0

    .line 310
    :try_start_8
    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v0

    move-object v7, v0

    if-eqz v5, :cond_5

    .line 330
    :try_start_9
    invoke-virtual {v5}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v5, v0

    :try_start_a
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw v7
    :try_end_a
    .catch Ljava/sql/SQLException; {:try_start_a .. :try_end_a} :catch_1

    .line 331
    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FetchManager was unable to getAttachment "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    return-object v4
.end method

.method public getAttachmentReceiveLength(Lio/olvid/engine/datatypes/UID;I)J
    .locals 3

    const-wide/16 v0, -0x1

    .line 508
    :try_start_0
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/FetchManager;->getSession()Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    move-result-object v2
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    :try_start_1
    invoke-static {v2, p1, p2}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->get(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Lio/olvid/engine/datatypes/UID;I)Lio/olvid/engine/networkfetch/databases/InboxAttachment;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    if-eqz v2, :cond_0

    .line 514
    :try_start_2
    invoke-virtual {v2}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-wide v0

    .line 513
    :cond_1
    :try_start_3
    invoke-virtual {p1}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->getFileSize()J

    move-result-wide p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_2

    .line 514
    :try_start_4
    invoke-virtual {v2}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    return-wide p1

    :catchall_0
    move-exception p1

    .line 508
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v2, :cond_3

    .line 514
    :try_start_6
    invoke-virtual {v2}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v2

    :try_start_7
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw p2
    :try_end_7
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    return-wide v0
.end method

.method public getMessage(Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/datatypes/containers/DecryptedApplicationMessage;
    .locals 3

    const/4 v0, 0x0

    .line 208
    :try_start_0
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/FetchManager;->getSession()Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :try_start_1
    invoke-static {v1, p1}, Lio/olvid/engine/networkfetch/databases/InboxMessage;->get(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/networkfetch/databases/InboxMessage;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    if-eqz v1, :cond_0

    .line 214
    :try_start_2
    invoke-virtual {v1}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-object v0

    .line 213
    :cond_1
    :try_start_3
    invoke-virtual {p1}, Lio/olvid/engine/networkfetch/databases/InboxMessage;->getDecryptedApplicationMessage()Lio/olvid/engine/datatypes/containers/DecryptedApplicationMessage;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_2

    .line 214
    :try_start_4
    invoke-virtual {v1}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    return-object p1

    :catchall_0
    move-exception p1

    .line 208
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v1, :cond_3

    .line 214
    :try_start_6
    invoke-virtual {v1}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    :try_start_7
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v2
    :try_end_7
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    return-object v0
.end method

.method public getMessageAttachments(Lio/olvid/engine/datatypes/UID;)[Lio/olvid/engine/datatypes/containers/ReceivedAttachment;
    .locals 19

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 338
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/networkfetch/FetchManager;->getSession()Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    move-result-object v3
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 339
    :try_start_1
    invoke-static {v3, v1}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->getAll(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Lio/olvid/engine/datatypes/UID;)[Lio/olvid/engine/networkfetch/databases/InboxAttachment;

    move-result-object v4

    if-nez v4, :cond_1

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FetchManager received a getAttachment request for an unknown attachment "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    .line 363
    :try_start_2
    invoke-virtual {v3}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    return-object v2

    .line 344
    :cond_1
    :try_start_3
    array-length v0, v4

    new-array v5, v0, [Lio/olvid/engine/datatypes/containers/ReceivedAttachment;

    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 345
    :goto_0
    array-length v0, v4

    if-ge v6, v0, :cond_4

    .line 346
    aget-object v7, v4, v6

    .line 347
    invoke-virtual {v7}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->cannotBeFetched()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FetchManager received a getAttachment request for an attachment not yet ready "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_2

    .line 363
    :try_start_4
    invoke-virtual {v3}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    return-object v2

    .line 352
    :cond_3
    :try_start_5
    invoke-virtual {v7}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->getUrl()Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v13, v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v8, v0

    :try_start_6
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    move-object v13, v2

    .line 353
    :goto_1
    new-instance v0, Lio/olvid/engine/datatypes/containers/ReceivedAttachment;

    .line 354
    invoke-virtual {v7}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->getMessageUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v10

    .line 355
    invoke-virtual {v7}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->getAttachmentNumber()I

    move-result v11

    .line 356
    invoke-virtual {v7}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->getMetadata()[B

    move-result-object v12

    .line 358
    invoke-virtual {v7}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->getExpectedLength()J

    move-result-wide v14

    .line 359
    invoke-virtual {v7}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->getReceivedLength()J

    move-result-wide v16

    .line 360
    invoke-virtual {v7}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->isDownloadRequested()Z

    move-result v18

    move-object v9, v0

    invoke-direct/range {v9 .. v18}, Lio/olvid/engine/datatypes/containers/ReceivedAttachment;-><init>(Lio/olvid/engine/datatypes/UID;I[BLjava/lang/String;JJZ)V

    aput-object v0, v5, v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_5

    .line 363
    :try_start_7
    invoke-virtual {v3}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_7
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_1

    :cond_5
    return-object v5

    :catchall_0
    move-exception v0

    move-object v4, v0

    .line 338
    :try_start_8
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v0

    move-object v5, v0

    if-eqz v3, :cond_6

    .line 363
    :try_start_9
    invoke-virtual {v3}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v3, v0

    :try_start_a
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    throw v5
    :try_end_a
    .catch Ljava/sql/SQLException; {:try_start_a .. :try_end_a} :catch_1

    .line 364
    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FetchManager was unable to getAttachments "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    return-object v2
.end method

.method public getRegisteredPushNotificationExtraInfo(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;B)Lio/olvid/engine/encoder/Encoded;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 456
    invoke-direct {p0, p1}, Lio/olvid/engine/networkfetch/FetchManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    move-result-object p1

    .line 457
    invoke-static {p1, p2}, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->get(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 458
    invoke-virtual {p1}, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->getPushNotificationType()B

    move-result p2

    if-eq p2, p3, :cond_0

    goto :goto_0

    .line 461
    :cond_0
    invoke-virtual {p1}, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->getExtraInfo()Lio/olvid/engine/encoder/Encoded;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSession()Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lio/olvid/engine/networkfetch/FetchManager;->createSessionDelegate:Lio/olvid/engine/metamanager/CreateSessionDelegate;

    if-eqz v0, :cond_0

    .line 174
    new-instance v11, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    invoke-interface {v0}, Lio/olvid/engine/metamanager/CreateSessionDelegate;->getSession()Lio/olvid/engine/datatypes/Session;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/engine/networkfetch/FetchManager;->downloadMessagesAndListAttachmentsCoordinator:Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;

    iget-object v4, p0, Lio/olvid/engine/networkfetch/FetchManager;->downloadAttachmentCoordinator:Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;

    iget-object v5, p0, Lio/olvid/engine/networkfetch/FetchManager;->deleteMessageAndAttachmentsCoordinator:Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator;

    iget-object v6, p0, Lio/olvid/engine/networkfetch/FetchManager;->serverPushNotificationsCoordinator:Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;

    iget-object v7, p0, Lio/olvid/engine/networkfetch/FetchManager;->serverQueryCoordinator:Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator;

    iget-object v8, p0, Lio/olvid/engine/networkfetch/FetchManager;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v9, p0, Lio/olvid/engine/networkfetch/FetchManager;->attachmentStoragePath:Ljava/lang/String;

    iget-object v10, p0, Lio/olvid/engine/networkfetch/FetchManager;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;-><init>(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/networkfetch/databases/InboxMessage$InboxMessageListener;Lio/olvid/engine/networkfetch/databases/InboxAttachment$InboxAttachmentListener;Lio/olvid/engine/networkfetch/databases/PendingDeleteFromServer$PendingDeleteFromServerListener;Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification$RegisteredPushNotificationListener;Lio/olvid/engine/networkfetch/databases/PendingServerQuery$PendingServerQueryListener;Lio/olvid/engine/metamanager/IdentityDelegate;Ljava/lang/String;Lio/olvid/engine/metamanager/NotificationPostingDelegate;)V

    return-object v11

    .line 172
    :cond_0
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "No CreateSessionDelegate was set in FetchManager."

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initialisationComplete()V
    .locals 1

    .line 96
    iget-object v0, p0, Lio/olvid/engine/networkfetch/FetchManager;->deleteMessageAndAttachmentsCoordinator:Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator;

    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator;->initialQueueing()V

    .line 97
    iget-object v0, p0, Lio/olvid/engine/networkfetch/FetchManager;->serverPushNotificationsCoordinator:Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;

    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->initialQueueing()V

    .line 98
    iget-object v0, p0, Lio/olvid/engine/networkfetch/FetchManager;->downloadAttachmentCoordinator:Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;

    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;->initialQueueing()V

    .line 99
    iget-object v0, p0, Lio/olvid/engine/networkfetch/FetchManager;->serverQueryCoordinator:Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator;

    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator;->initialQueueing()V

    .line 100
    iget-object v0, p0, Lio/olvid/engine/networkfetch/FetchManager;->downloadMessagesAndListAttachmentsCoordinator:Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;

    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;->initialQueueing()V

    .line 101
    iget-object v0, p0, Lio/olvid/engine/networkfetch/FetchManager;->websocketCoordinator:Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;

    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->initialQueueing()V

    return-void
.end method

.method public isInboxAttachmentReceived(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/UID;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 371
    invoke-direct {p0, p1}, Lio/olvid/engine/networkfetch/FetchManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->get(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Lio/olvid/engine/datatypes/UID;I)Lio/olvid/engine/networkfetch/databases/InboxAttachment;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 372
    invoke-virtual {p1}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->getExpectedLength()J

    move-result-wide p2

    invoke-virtual {p1}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->getReceivedLength()J

    move-result-wide v0

    cmp-long p1, p2, v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public pauseDownloadAttachment(Lio/olvid/engine/datatypes/UID;I)V
    .locals 4

    const-string v0, "-"

    .line 280
    :try_start_0
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/FetchManager;->getSession()Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :try_start_1
    invoke-static {v1, p1, p2}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->get(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Lio/olvid/engine/datatypes/UID;I)Lio/olvid/engine/networkfetch/databases/InboxAttachment;

    move-result-object v2

    if-nez v2, :cond_1

    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FetchManager received a pauseDownloadAttachment request for an unknown attachment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 288
    :try_start_2
    invoke-virtual {v1}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-void

    .line 286
    :cond_1
    :try_start_3
    invoke-virtual {v2}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->pauseDownload()V

    .line 287
    iget-object v2, v1, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Session;->commit()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_3

    .line 288
    :try_start_4
    invoke-virtual {v1}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 280
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v3

    if-eqz v1, :cond_2

    .line 288
    :try_start_6
    invoke-virtual {v1}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    :try_start_7
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v3
    :try_end_7
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_0

    .line 289
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FetchManager was unable to pauseDownloadAttachment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public processAndroidPushNotification(Ljava/lang/String;)V
    .locals 1

    .line 499
    iget-object v0, p0, Lio/olvid/engine/networkfetch/FetchManager;->serverPushNotificationsCoordinator:Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;

    invoke-virtual {v0, p1}, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->processAndroidPushNotification(Ljava/lang/String;)V

    return-void
.end method

.method public registerPushNotification(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;BLio/olvid/engine/encoder/Encoded;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request to create in database a push notification of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 468
    invoke-direct {p0, p1}, Lio/olvid/engine/networkfetch/FetchManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    move-result-object p1

    .line 469
    invoke-static {p1, p2}, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->get(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 471
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->getDeviceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    invoke-virtual {v1, p3}, Lio/olvid/engine/datatypes/UID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 472
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->getExtraInfo()Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    invoke-virtual {v1, p5}, Lio/olvid/engine/encoder/Encoded;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 473
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->getPushNotificationType()B

    move-result v1

    if-ne v1, p4, :cond_0

    return-void

    .line 477
    :cond_0
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->delete()V

    .line 479
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Creating in database a push notification of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 480
    invoke-static {p1, p2, p3, p4, p5}, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->create(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;BLio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;

    move-result-object p1

    if-eqz p1, :cond_2

    return-void

    .line 481
    :cond_2
    new-instance p1, Ljava/sql/SQLException;

    invoke-direct {p1}, Ljava/sql/SQLException;-><init>()V

    throw p1
.end method

.method public resendAllDownloadedAttachmentNotifications()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 420
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/FetchManager;->getSession()Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    move-result-object v0

    .line 421
    :try_start_0
    invoke-static {v0}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->getAllDownloaded(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;)[Lio/olvid/engine/networkfetch/databases/InboxAttachment;

    move-result-object v1

    .line 422
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 423
    iget-object v5, p0, Lio/olvid/engine/networkfetch/FetchManager;->downloadAttachmentCoordinator:Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;

    invoke-virtual {v4}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->getMessageUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v6

    invoke-virtual {v4}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->getAttachmentNumber()I

    move-result v4

    invoke-virtual {v5, v6, v4}, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;->attachmentDownloadFinished(Lio/olvid/engine/datatypes/UID;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 425
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 420
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_2

    .line 425
    :try_start_2
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v2
.end method

.method public setAttachmentKeyAndMetadataAndMessagePayload(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/datatypes/containers/AttachmentKeyAndMetadata;[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p4, :cond_3

    .line 238
    invoke-direct {p0, p1}, Lio/olvid/engine/networkfetch/FetchManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    move-result-object p1

    .line 239
    invoke-static {p1, p2}, Lio/olvid/engine/networkfetch/databases/InboxMessage;->get(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/networkfetch/databases/InboxMessage;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 244
    invoke-virtual {p1}, Lio/olvid/engine/networkfetch/databases/InboxMessage;->getAttachments()[Lio/olvid/engine/networkfetch/databases/InboxAttachment;

    move-result-object p2

    .line 245
    array-length v0, p2

    array-length v1, p4

    if-ne v0, v1, :cond_1

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting attachmentKeyAndMetadata for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " attachments."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 250
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 251
    aget-object v1, p2, v0

    aget-object v2, p4, v0

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/containers/AttachmentKeyAndMetadata;->getKey()Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    move-result-object v2

    aget-object v3, p4, v0

    .line 252
    invoke-virtual {v3}, Lio/olvid/engine/datatypes/containers/AttachmentKeyAndMetadata;->getMetadata()[B

    move-result-object v3

    .line 251
    invoke-virtual {v1, v2, v3}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->setKeyAndMetadata(Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;[B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 254
    :cond_0
    invoke-virtual {p1, p5, p3}, Lio/olvid/engine/networkfetch/databases/InboxMessage;->setPayloadAndFromIdentity([BLio/olvid/engine/datatypes/Identity;)V

    return-void

    :cond_1
    const-string p1, "Attachment count mismatch between message and attachmentKeyAndMetadata in setAttachmentKeyAndMetadataAndMessagePayload."

    .line 246
    invoke-static {p1}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 247
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1

    :cond_2
    const-string p1, "FetchManager is trying to setAttachmentKeyAndMetadataAndMessagePayload for an non-existing messageUid."

    .line 241
    invoke-static {p1}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 242
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1

    :cond_3
    const-string p1, "FetchManager is trying to setAttachmentKeyAndMetadataAndMessagePayload with a null attachmentKeyAndMetadata."

    .line 235
    invoke-static {p1}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 236
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method public setDelegate(Lio/olvid/engine/metamanager/ChannelDelegate;)V
    .locals 1

    .line 158
    iget-object v0, p0, Lio/olvid/engine/networkfetch/FetchManager;->serverQueryCoordinator:Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator;

    invoke-virtual {v0, p1}, Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator;->setChannelDelegate(Lio/olvid/engine/metamanager/ChannelDelegate;)V

    return-void
.end method

.method public setDelegate(Lio/olvid/engine/metamanager/CreateSessionDelegate;)V
    .locals 2

    .line 105
    iput-object p1, p0, Lio/olvid/engine/networkfetch/FetchManager;->createSessionDelegate:Lio/olvid/engine/metamanager/CreateSessionDelegate;

    .line 107
    :try_start_0
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/FetchManager;->getSession()Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :try_start_1
    iget-object v0, p1, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-static {v0}, Lio/olvid/engine/networkfetch/databases/ServerSession;->createTable(Lio/olvid/engine/datatypes/Session;)V

    .line 109
    iget-object v0, p1, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-static {v0}, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->createTable(Lio/olvid/engine/datatypes/Session;)V

    .line 110
    iget-object v0, p1, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-static {v0}, Lio/olvid/engine/networkfetch/databases/PendingDeleteFromServer;->createTable(Lio/olvid/engine/datatypes/Session;)V

    .line 111
    iget-object v0, p1, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-static {v0}, Lio/olvid/engine/networkfetch/databases/InboxMessage;->createTable(Lio/olvid/engine/datatypes/Session;)V

    .line 112
    iget-object v0, p1, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-static {v0}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->createTable(Lio/olvid/engine/datatypes/Session;)V

    .line 113
    iget-object v0, p1, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-static {v0}, Lio/olvid/engine/networkfetch/databases/PendingServerQuery;->createTable(Lio/olvid/engine/datatypes/Session;)V

    .line 114
    iget-object v0, p1, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Session;->commit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 115
    :try_start_2
    invoke-virtual {p1}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 107
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p1, :cond_1

    .line 115
    :try_start_4
    invoke-virtual {p1}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
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

    .line 116
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    .line 117
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unable to createCurrentDevice network fetch databases"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDelegate(Lio/olvid/engine/metamanager/IdentityDelegate;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lio/olvid/engine/networkfetch/FetchManager;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    return-void
.end method

.method public setDelegate(Lio/olvid/engine/metamanager/NotificationListeningDelegate;)V
    .locals 1

    .line 140
    iget-object v0, p0, Lio/olvid/engine/networkfetch/FetchManager;->serverPushNotificationsCoordinator:Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;

    invoke-virtual {v0, p1}, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->setNotificationListeningDelegate(Lio/olvid/engine/metamanager/NotificationListeningDelegate;)V

    .line 141
    iget-object v0, p0, Lio/olvid/engine/networkfetch/FetchManager;->websocketCoordinator:Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;

    invoke-virtual {v0, p1}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->setNotificationListeningDelegate(Lio/olvid/engine/metamanager/NotificationListeningDelegate;)V

    .line 142
    iget-object v0, p0, Lio/olvid/engine/networkfetch/FetchManager;->downloadMessagesAndListAttachmentsCoordinator:Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;

    invoke-virtual {v0, p1}, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;->setNotificationListeningDelegate(Lio/olvid/engine/metamanager/NotificationListeningDelegate;)V

    .line 143
    iget-object v0, p0, Lio/olvid/engine/networkfetch/FetchManager;->downloadAttachmentCoordinator:Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;

    invoke-virtual {v0, p1}, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;->setNotificationListeningDelegate(Lio/olvid/engine/metamanager/NotificationListeningDelegate;)V

    .line 144
    iget-object v0, p0, Lio/olvid/engine/networkfetch/FetchManager;->deleteMessageAndAttachmentsCoordinator:Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator;

    invoke-virtual {v0, p1}, Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator;->setNotificationListeningDelegate(Lio/olvid/engine/metamanager/NotificationListeningDelegate;)V

    .line 145
    iget-object v0, p0, Lio/olvid/engine/networkfetch/FetchManager;->serverQueryCoordinator:Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator;

    invoke-virtual {v0, p1}, Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator;->setNotificationListeningDelegate(Lio/olvid/engine/metamanager/NotificationListeningDelegate;)V

    return-void
.end method

.method public setDelegate(Lio/olvid/engine/metamanager/NotificationPostingDelegate;)V
    .locals 1

    .line 149
    iput-object p1, p0, Lio/olvid/engine/networkfetch/FetchManager;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    .line 150
    iget-object v0, p0, Lio/olvid/engine/networkfetch/FetchManager;->downloadAttachmentCoordinator:Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;

    invoke-virtual {v0, p1}, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;->setNotificationPostingDelegate(Lio/olvid/engine/metamanager/NotificationPostingDelegate;)V

    .line 151
    iget-object v0, p0, Lio/olvid/engine/networkfetch/FetchManager;->createServerSessionCoordinator:Lio/olvid/engine/networkfetch/coordinators/CreateServerSessionCoordinator;

    invoke-virtual {v0, p1}, Lio/olvid/engine/networkfetch/coordinators/CreateServerSessionCoordinator;->setNotificationPostingDelegate(Lio/olvid/engine/metamanager/NotificationPostingDelegate;)V

    .line 152
    iget-object v0, p0, Lio/olvid/engine/networkfetch/FetchManager;->refreshInboxAttachmentSignedUrlCoordinator:Lio/olvid/engine/networkfetch/coordinators/RefreshInboxAttachmentSignedUrlCoordinator;

    invoke-virtual {v0, p1}, Lio/olvid/engine/networkfetch/coordinators/RefreshInboxAttachmentSignedUrlCoordinator;->setNotificationPostingDelegate(Lio/olvid/engine/metamanager/NotificationPostingDelegate;)V

    .line 153
    iget-object v0, p0, Lio/olvid/engine/networkfetch/FetchManager;->downloadMessagesAndListAttachmentsCoordinator:Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;

    invoke-virtual {v0, p1}, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;->setNotificationPostingDelegate(Lio/olvid/engine/metamanager/NotificationPostingDelegate;)V

    .line 154
    iget-object v0, p0, Lio/olvid/engine/networkfetch/FetchManager;->websocketCoordinator:Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;

    invoke-virtual {v0, p1}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->setNotificationPostingDelegate(Lio/olvid/engine/metamanager/NotificationPostingDelegate;)V

    return-void
.end method

.method public setDelegate(Lio/olvid/engine/metamanager/ProcessDownloadedMessageDelegate;)V
    .locals 1

    .line 136
    iget-object v0, p0, Lio/olvid/engine/networkfetch/FetchManager;->downloadMessagesAndListAttachmentsCoordinator:Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;

    invoke-virtual {v0, p1}, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;->setProcessDownloadedMessageDelegate(Lio/olvid/engine/metamanager/ProcessDownloadedMessageDelegate;)V

    return-void
.end method

.method public setDelegate(Lio/olvid/engine/metamanager/SolveChallengeDelegate;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lio/olvid/engine/networkfetch/FetchManager;->createServerSessionCoordinator:Lio/olvid/engine/networkfetch/coordinators/CreateServerSessionCoordinator;

    invoke-virtual {v0, p1}, Lio/olvid/engine/networkfetch/coordinators/CreateServerSessionCoordinator;->setSolveChallengeDelegate(Lio/olvid/engine/metamanager/SolveChallengeDelegate;)V

    return-void
.end method

.method public unregisterPushNotification(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 487
    invoke-direct {p0, p1}, Lio/olvid/engine/networkfetch/FetchManager;->wrapSession(Lio/olvid/engine/datatypes/Session;)Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    move-result-object p1

    .line 488
    invoke-static {p1, p2}, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->get(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 490
    invoke-virtual {p1}, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->delete()V

    .line 491
    invoke-virtual {p1}, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->getPushNotificationType()B

    move-result p1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 492
    iget-object p1, p0, Lio/olvid/engine/networkfetch/FetchManager;->serverPushNotificationsCoordinator:Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;

    invoke-virtual {p1, p2}, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->stopPolling(Lio/olvid/engine/datatypes/Identity;)V

    :cond_0
    return-void
.end method
