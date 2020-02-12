.class public Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;
.super Ljava/lang/Object;
.source "WebsocketCoordinator.java"

# interfaces
.implements Lio/olvid/engine/datatypes/Operation$OnFinishCallback;
.implements Lio/olvid/engine/datatypes/Operation$OnCancelCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebSocketClient;,
        Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$IdentityRegistrationOperation;,
        Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebsocketCreationOperation;,
        Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$IdentityAndUid;,
        Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$OwnedIdentityListUpdatedNotificationListener;,
        Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$ServerSessionCreatedNotificationListener;
    }
.end annotation


# static fields
.field private static final websocketServerUris:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final awaitingServerSessionIdentities:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/olvid/engine/datatypes/Identity;",
            ">;"
        }
    .end annotation
.end field

.field private final awaitingServerSessionIdentitiesLock:Ljava/lang/Object;

.field private final createServerSessionDelegate:Lio/olvid/engine/networkfetch/datatypes/CreateServerSessionDelegate;

.field private doConnect:Z

.field private final downloadMessagesAndListAttachmentsDelegate:Lio/olvid/engine/networkfetch/datatypes/DownloadMessagesAndListAttachmentsDelegate;

.field private final existingWebsockets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebSocketClient;",
            ">;"
        }
    .end annotation
.end field

.field private final fetchManagerSessionFactory:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;

.field private final identityRegistrationOperationQueue:Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;

.field private initialQueueingPerformed:Z

.field private final jsonObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

.field private notificationListeningDelegate:Lio/olvid/engine/metamanager/NotificationListeningDelegate;

.field private notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

.field private final ownedIdentityAndUidsByServer:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$IdentityAndUid;",
            ">;>;"
        }
    .end annotation
.end field

.field private final ownedIdentityAndUidsLock:Ljava/lang/Object;

.field private final ownedIdentityCurrentDebiceUids:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/olvid/engine/datatypes/Identity;",
            "Lio/olvid/engine/datatypes/UID;",
            ">;"
        }
    .end annotation
.end field

.field private final ownedIdentityListUpdatedNotificationListener:Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$OwnedIdentityListUpdatedNotificationListener;

.field private final scheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private final serverSessionCreatedNotificationListener:Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$ServerSessionCreatedNotificationListener;

.field private final websocketCreationFailedAttemptCounts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final websocketCreationOperationQueue:Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->websocketServerUris:Ljava/util/Map;

    .line 76
    sget-object v0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->websocketServerUris:Ljava/util/Map;

    const-string v1, "wss://ws-server.dev.olvid.io"

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    const-string v2, "https://server.dev.olvid.io"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->websocketServerUris:Ljava/util/Map;

    const-string v1, "wss://ws-server.olvid.io"

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    const-string v2, "https://server.olvid.io"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;Lio/olvid/engine/networkfetch/datatypes/CreateServerSessionDelegate;Lio/olvid/engine/networkfetch/datatypes/DownloadMessagesAndListAttachmentsDelegate;Lcom/fasterxml/jackson/databind/ObjectMapper;)V
    .locals 2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->initialQueueingPerformed:Z

    .line 56
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->ownedIdentityAndUidsLock:Ljava/lang/Object;

    .line 81
    iput-boolean v0, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->doConnect:Z

    .line 87
    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->fetchManagerSessionFactory:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;

    .line 88
    iput-object p2, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->createServerSessionDelegate:Lio/olvid/engine/networkfetch/datatypes/CreateServerSessionDelegate;

    .line 89
    iput-object p3, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->downloadMessagesAndListAttachmentsDelegate:Lio/olvid/engine/networkfetch/datatypes/DownloadMessagesAndListAttachmentsDelegate;

    .line 90
    iput-object p4, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->jsonObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 92
    new-instance p1, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;

    invoke-direct {p1}, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;-><init>()V

    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->websocketCreationOperationQueue:Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;

    .line 93
    iget-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->websocketCreationOperationQueue:Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;->execute(I)V

    .line 95
    new-instance p1, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;

    invoke-direct {p1}, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;-><init>()V

    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->identityRegistrationOperationQueue:Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;

    .line 96
    iget-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->identityRegistrationOperationQueue:Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;

    invoke-virtual {p1, p2}, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;->execute(I)V

    .line 98
    invoke-static {p2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 99
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->awaitingServerSessionIdentities:Ljava/util/Set;

    .line 100
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->awaitingServerSessionIdentitiesLock:Ljava/lang/Object;

    .line 102
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->websocketCreationFailedAttemptCounts:Ljava/util/HashMap;

    .line 104
    new-instance p1, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$ServerSessionCreatedNotificationListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$ServerSessionCreatedNotificationListener;-><init>(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$1;)V

    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->serverSessionCreatedNotificationListener:Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$ServerSessionCreatedNotificationListener;

    .line 105
    new-instance p1, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$OwnedIdentityListUpdatedNotificationListener;

    invoke-direct {p1, p0, p2}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$OwnedIdentityListUpdatedNotificationListener;-><init>(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$1;)V

    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->ownedIdentityListUpdatedNotificationListener:Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$OwnedIdentityListUpdatedNotificationListener;

    .line 107
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->ownedIdentityAndUidsByServer:Ljava/util/Map;

    .line 108
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->ownedIdentityCurrentDebiceUids:Ljava/util/Map;

    .line 109
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->existingWebsockets:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$1000(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;)Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;
    .locals 0

    .line 46
    iget-object p0, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->fetchManagerSessionFactory:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;

    return-object p0
.end method

.method static synthetic access$1100(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;)Ljava/util/Map;
    .locals 0

    .line 46
    iget-object p0, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->ownedIdentityAndUidsByServer:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1200(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->resetWebsockets()V

    return-void
.end method

.method static synthetic access$1300(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->doConnect:Z

    return p0
.end method

.method static synthetic access$1400(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;)Ljava/util/Map;
    .locals 0

    .line 46
    iget-object p0, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->existingWebsockets:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1500()Ljava/util/Map;
    .locals 1

    .line 46
    sget-object v0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->websocketServerUris:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1700(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 0

    .line 46
    iget-object p0, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->jsonObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-object p0
.end method

.method static synthetic access$1800(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;)Lio/olvid/engine/networkfetch/datatypes/CreateServerSessionDelegate;
    .locals 0

    .line 46
    iget-object p0, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->createServerSessionDelegate:Lio/olvid/engine/networkfetch/datatypes/CreateServerSessionDelegate;

    return-object p0
.end method

.method static synthetic access$1900(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;)Lio/olvid/engine/networkfetch/datatypes/DownloadMessagesAndListAttachmentsDelegate;
    .locals 0

    .line 46
    iget-object p0, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->downloadMessagesAndListAttachmentsDelegate:Lio/olvid/engine/networkfetch/datatypes/DownloadMessagesAndListAttachmentsDelegate;

    return-object p0
.end method

.method static synthetic access$2000(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;)Lio/olvid/engine/metamanager/NotificationPostingDelegate;
    .locals 0

    .line 46
    iget-object p0, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    return-object p0
.end method

.method static synthetic access$400(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->queueWebsocketCreationOperation(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;)Ljava/lang/Object;
    .locals 0

    .line 46
    iget-object p0, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->awaitingServerSessionIdentitiesLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$600(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;)Ljava/util/Set;
    .locals 0

    .line 46
    iget-object p0, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->awaitingServerSessionIdentities:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$700(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;)Ljava/util/Map;
    .locals 0

    .line 46
    iget-object p0, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->ownedIdentityCurrentDebiceUids:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$800(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->queueIdentityRegistrationOperation(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;)V

    return-void
.end method

.method static synthetic access$900(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;)Ljava/lang/Object;
    .locals 0

    .line 46
    iget-object p0, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->ownedIdentityAndUidsLock:Ljava/lang/Object;

    return-object p0
.end method

.method private internalConnectWebsockets()V
    .locals 3

    .line 175
    iget-boolean v0, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->doConnect:Z

    if-nez v0, :cond_0

    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->ownedIdentityAndUidsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 179
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->ownedIdentityAndUidsByServer:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 180
    invoke-direct {p0, v2}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->queueWebsocketCreationOperation(Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private internalDisconnectWebsockets()V
    .locals 4

    .line 169
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->existingWebsockets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebSocketClient;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 170
    invoke-virtual {v1, v2, v3}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebSocketClient;->closeConnection(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private queueIdentityRegistrationOperation(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;)V
    .locals 9

    .line 190
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->identityRegistrationOperationQueue:Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;

    new-instance v8, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$IdentityRegistrationOperation;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p0

    move-object v6, p0

    invoke-direct/range {v1 .. v7}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$IdentityRegistrationOperation;-><init>(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Operation$OnFinishCallback;Lio/olvid/engine/datatypes/Operation$OnCancelCallback;Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$1;)V

    invoke-virtual {v0, v8}, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;->queue(Lio/olvid/engine/datatypes/Operation;)V

    return-void
.end method

.method private queueWebsocketCreationOperation(Ljava/lang/String;)V
    .locals 8

    .line 186
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->websocketCreationOperationQueue:Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;

    new-instance v7, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebsocketCreationOperation;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebsocketCreationOperation;-><init>(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;Ljava/lang/String;Lio/olvid/engine/datatypes/Operation$OnFinishCallback;Lio/olvid/engine/datatypes/Operation$OnCancelCallback;Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$1;)V

    invoke-virtual {v0, v7}, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;->queue(Lio/olvid/engine/datatypes/Operation;)V

    return-void
.end method

.method private resetWebsockets()V
    .locals 0

    .line 164
    invoke-direct {p0}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->internalDisconnectWebsockets()V

    .line 165
    invoke-direct {p0}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->internalConnectWebsockets()V

    return-void
.end method

.method private scheduleNewWebsocketCreationQueueing(Ljava/lang/String;)V
    .locals 4

    .line 194
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->websocketCreationFailedAttemptCounts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 196
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 198
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 200
    :goto_0
    iget-object v1, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->websocketCreationFailedAttemptCounts:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/olvid/engine/datatypes/Constants;->computeReschedulingDelay(I)J

    move-result-wide v0

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheduling a Websocket Connection to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/olvid/engine/Logger;->i(Ljava/lang/String;)V

    .line 203
    iget-object v2, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$1;

    invoke-direct {v3, p0, p1}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$1;-><init>(Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;Ljava/lang/String;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v0, v1, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public connectWebsockets()V
    .locals 1

    const/4 v0, 0x1

    .line 153
    iput-boolean v0, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->doConnect:Z

    .line 154
    invoke-direct {p0}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->internalConnectWebsockets()V

    return-void
.end method

.method public deleteReturnReceipt(Lio/olvid/engine/datatypes/Identity;[B)V
    .locals 3

    .line 462
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Identity;->getServer()Ljava/lang/String;

    move-result-object p1

    .line 463
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->existingWebsockets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebSocketClient;

    if-eqz p1, :cond_0

    .line 466
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "action"

    const-string v2, "delete_return_receipt"

    .line 467
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "serverUid"

    .line 468
    invoke-static {p2}, Lnet/iharder/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    iget-object p2, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->jsonObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebSocketClient;->send(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 471
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public disconnectWebsockets()V
    .locals 1

    const/4 v0, 0x0

    .line 158
    iput-boolean v0, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->doConnect:Z

    .line 159
    invoke-direct {p0}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->internalDisconnectWebsockets()V

    return-void
.end method

.method public initialQueueing()V
    .locals 10

    .line 125
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->ownedIdentityAndUidsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 126
    :try_start_0
    iget-boolean v1, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->initialQueueingPerformed:Z

    if-eqz v1, :cond_0

    .line 127
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    return-void

    .line 129
    :cond_0
    :try_start_1
    iget-object v1, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->fetchManagerSessionFactory:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;

    invoke-interface {v1}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;->getSession()Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 130
    :try_start_2
    iget-object v2, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->ownedIdentityAndUidsByServer:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 131
    iget-object v2, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->ownedIdentityCurrentDebiceUids:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 132
    iget-object v2, v1, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v3, v1, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-interface {v2, v3}, Lio/olvid/engine/metamanager/IdentityDelegate;->getOwnedIdentities(Lio/olvid/engine/datatypes/Session;)[Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    .line 133
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 134
    iget-object v6, v1, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v7, v1, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-interface {v6, v7, v5}, Lio/olvid/engine/metamanager/IdentityDelegate;->getCurrentDeviceUidOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/UID;

    move-result-object v6

    .line 135
    iget-object v7, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->ownedIdentityCurrentDebiceUids:Ljava/util/Map;

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-virtual {v5}, Lio/olvid/engine/datatypes/Identity;->getServer()Ljava/lang/String;

    move-result-object v7

    .line 137
    iget-object v8, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->ownedIdentityAndUidsByServer:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    if-nez v8, :cond_1

    .line 139
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 140
    iget-object v9, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->ownedIdentityAndUidsByServer:Ljava/util/Map;

    invoke-interface {v9, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :cond_1
    new-instance v7, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$IdentityAndUid;

    invoke-direct {v7, v5, v6}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$IdentityAndUid;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;)V

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_4

    .line 144
    :try_start_3
    invoke-virtual {v1}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    :catchall_0
    move-exception v2

    .line 129
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v3

    if-eqz v1, :cond_3

    .line 144
    :try_start_5
    invoke-virtual {v1}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v1

    :try_start_6
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catch_0
    move-exception v1

    .line 145
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    const/4 v1, 0x1

    .line 147
    iput-boolean v1, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->initialQueueingPerformed:Z

    .line 148
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 149
    invoke-direct {p0}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->resetWebsockets()V

    return-void

    :catchall_3
    move-exception v1

    .line 148
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v1
.end method

.method public onCancelCallback(Lio/olvid/engine/datatypes/Operation;)V
    .locals 6

    .line 220
    instance-of v0, p1, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebsocketCreationOperation;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 221
    move-object v0, p1

    check-cast v0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebsocketCreationOperation;

    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebsocketCreationOperation;->getServer()Ljava/lang/String;

    move-result-object v0

    .line 222
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Operation;->getReasonForCancel()Ljava/lang/Integer;

    move-result-object p1

    .line 223
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WebsocketCreationOperation cancelled for reason "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/olvid/engine/Logger;->i(Ljava/lang/String;)V

    if-nez p1, :cond_0

    move-object p1, v1

    .line 227
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v3, :cond_5

    if-eq p1, v2, :cond_5

    .line 232
    invoke-direct {p0, v0}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->scheduleNewWebsocketCreationQueueing(Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :cond_1
    instance-of v0, p1, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$IdentityRegistrationOperation;

    if-eqz v0, :cond_5

    .line 235
    move-object v0, p1

    check-cast v0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$IdentityRegistrationOperation;

    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$IdentityRegistrationOperation;->getIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    .line 236
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$IdentityRegistrationOperation;->getDeviceUid()Lio/olvid/engine/datatypes/UID;

    .line 237
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Operation;->getReasonForCancel()Ljava/lang/Integer;

    move-result-object p1

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IdentityRegistrationOperation cancelled for reason "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/olvid/engine/Logger;->i(Ljava/lang/String;)V

    if-nez p1, :cond_2

    move-object p1, v1

    .line 242
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v3, :cond_4

    if-eq p1, v2, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    goto :goto_0

    .line 249
    :cond_3
    iget-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->awaitingServerSessionIdentitiesLock:Ljava/lang/Object;

    monitor-enter p1

    .line 250
    :try_start_0
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->awaitingServerSessionIdentities:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 251
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    iget-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->createServerSessionDelegate:Lio/olvid/engine/networkfetch/datatypes/CreateServerSessionDelegate;

    invoke-interface {p1, v4}, Lio/olvid/engine/networkfetch/datatypes/CreateServerSessionDelegate;->createServerSession(Lio/olvid/engine/datatypes/Identity;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 251
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 245
    :cond_4
    invoke-direct {p0}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->resetWebsockets()V

    :cond_5
    :goto_0
    return-void
.end method

.method public onFinishCallback(Lio/olvid/engine/datatypes/Operation;)V
    .locals 1

    .line 210
    instance-of v0, p1, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebsocketCreationOperation;

    if-eqz v0, :cond_0

    .line 211
    check-cast p1, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebsocketCreationOperation;

    invoke-virtual {p1}, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$WebsocketCreationOperation;->getServer()Ljava/lang/String;

    move-result-object p1

    .line 212
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->websocketCreationFailedAttemptCounts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 213
    :cond_0
    instance-of p1, p1, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$IdentityRegistrationOperation;

    :goto_0
    return-void
.end method

.method public setNotificationListeningDelegate(Lio/olvid/engine/metamanager/NotificationListeningDelegate;)V
    .locals 2

    .line 113
    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->notificationListeningDelegate:Lio/olvid/engine/metamanager/NotificationListeningDelegate;

    .line 115
    iget-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->notificationListeningDelegate:Lio/olvid/engine/metamanager/NotificationListeningDelegate;

    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->serverSessionCreatedNotificationListener:Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$ServerSessionCreatedNotificationListener;

    const-string v1, "network_fetch_notification_server_session_created"

    invoke-interface {p1, v1, v0}, Lio/olvid/engine/metamanager/NotificationListeningDelegate;->addListener(Ljava/lang/String;Lio/olvid/engine/datatypes/NotificationListener;)J

    .line 117
    iget-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->notificationListeningDelegate:Lio/olvid/engine/metamanager/NotificationListeningDelegate;

    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->ownedIdentityListUpdatedNotificationListener:Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$OwnedIdentityListUpdatedNotificationListener;

    const-string v1, "identity_manager_notification_owned_identity_list_updated"

    invoke-interface {p1, v1, v0}, Lio/olvid/engine/metamanager/NotificationListeningDelegate;->addListener(Ljava/lang/String;Lio/olvid/engine/datatypes/NotificationListener;)J

    return-void
.end method

.method public setNotificationPostingDelegate(Lio/olvid/engine/metamanager/NotificationPostingDelegate;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    return-void
.end method
