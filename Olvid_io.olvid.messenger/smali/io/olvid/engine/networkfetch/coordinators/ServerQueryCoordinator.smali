.class public Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator;
.super Ljava/lang/Object;
.source "ServerQueryCoordinator.java"

# interfaces
.implements Lio/olvid/engine/networkfetch/databases/PendingServerQuery$PendingServerQueryListener;
.implements Lio/olvid/engine/datatypes/Operation$OnCancelCallback;
.implements Lio/olvid/engine/datatypes/Operation$OnFinishCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator$ServerSessionCreatedNotificationListener;
    }
.end annotation


# instance fields
.field private final awaitingServerSessionOperations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lio/olvid/engine/datatypes/Identity;",
            "Lio/olvid/engine/datatypes/UID;",
            ">;"
        }
    .end annotation
.end field

.field private final awaitingServerSessionOperationsLock:Ljava/util/concurrent/locks/Lock;

.field private channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

.field private final createServerSessionDelegate:Lio/olvid/engine/networkfetch/datatypes/CreateServerSessionDelegate;

.field private final failedAttemptCounts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lio/olvid/engine/datatypes/UID;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final fetchManagerSessionFactory:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;

.field private initialQueueingPerformed:Z

.field private final lock:Ljava/lang/Object;

.field private notificationListeningDelegate:Lio/olvid/engine/metamanager/NotificationListeningDelegate;

.field private final prng:Lio/olvid/engine/crypto/PRNGService;

.field private final scheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private final serverQueriesOperationQueue:Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;

.field private final serverSessionCreatedNotificationListener:Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator$ServerSessionCreatedNotificationListener;


# direct methods
.method public constructor <init>(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;Lio/olvid/engine/crypto/PRNGService;Lio/olvid/engine/networkfetch/datatypes/CreateServerSessionDelegate;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator;->initialQueueingPerformed:Z

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator;->lock:Ljava/lang/Object;

    .line 52
    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator;->fetchManagerSessionFactory:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;

    .line 53
    iput-object p2, p0, Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator;->prng:Lio/olvid/engine/crypto/PRNGService;

    .line 54
    iput-object p3, p0, Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator;->createServerSessionDelegate:Lio/olvid/engine/networkfetch/datatypes/CreateServerSessionDelegate;

    .line 56
    new-instance p1, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;

    invoke-direct {p1}, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;-><init>()V

    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator;->serverQueriesOperationQueue:Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;

    .line 57
    iget-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator;->serverQueriesOperationQueue:Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;->execute(I)V

    .line 59
    invoke-static {p2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 60
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator;->awaitingServerSessionOperations:Ljava/util/HashMap;

    .line 61
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator;->awaitingServerSessionOperationsLock:Ljava/util/concurrent/locks/Lock;

    .line 63
    new-instance p1, Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator$ServerSessionCreatedNotificationListener;

    invoke-direct {p1, p0}, Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator$ServerSessionCreatedNotificationListener;-><init>(Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator;)V

    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator;->serverSessionCreatedNotificationListener:Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator$ServerSessionCreatedNotificationListener;

    .line 65
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator;->failedAttemptCounts:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator;)Ljava/util/concurrent/locks/Lock;
    .locals 0

    .line 31
    iget-object p0, p0, Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator;->awaitingServerSessionOperationsLock:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method

.method static synthetic access$100(Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator;)Ljava/util/HashMap;
    .locals 0

    .line 31
    iget-object p0, p0, Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator;->awaitingServerSessionOperations:Ljava/util/HashMap;

    return-object p0
.end method

.method private waitForServerSession(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator;->awaitingServerSessionOperationsLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 97
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator;->awaitingServerSessionOperations:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator;->awaitingServerSessionOperationsLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method


# virtual methods
.method public initialQueueing()V
    .locals 6

    .line 69
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_0
    iget-boolean v1, p0, Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator;->initialQueueingPerformed:Z

    if-eqz v1, :cond_0

    .line 71
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    return-void

    .line 73
    :cond_0
    :try_start_1
    iget-object v1, p0, Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator;->fetchManagerSessionFactory:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;

    invoke-interface {v1}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;->getSession()Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 74
    :try_start_2
    invoke-static {v1}, Lio/olvid/engine/networkfetch/databases/PendingServerQuery;->getAll(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;)[Lio/olvid/engine/networkfetch/databases/PendingServerQuery;

    move-result-object v2

    .line 75
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 76
    invoke-virtual {v5}, Lio/olvid/engine/networkfetch/databases/PendingServerQuery;->getUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v5

    invoke-virtual {p0, v5}, Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator;->queueNewServerQueryOperation(Lio/olvid/engine/datatypes/UID;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    .line 78
    iput-boolean v2, p0, Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator;->initialQueueingPerformed:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_3

    .line 79
    :try_start_3
    invoke-virtual {v1}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    :catchall_0
    move-exception v2

    .line 73
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v3

    if-eqz v1, :cond_2

    .line 79
    :try_start_5
    invoke-virtual {v1}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v1

    :try_start_6
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catch_0
    move-exception v1

    .line 80
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 82
    :cond_3
    :goto_2
    monitor-exit v0

    return-void

    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v1
.end method

.method public newPendingServerQuery(Lio/olvid/engine/datatypes/UID;)V
    .locals 0

    .line 218
    invoke-virtual {p0, p1}, Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator;->queueNewServerQueryOperation(Lio/olvid/engine/datatypes/UID;)V

    return-void
.end method

.method public onCancelCallback(Lio/olvid/engine/datatypes/Operation;)V
    .locals 4

    .line 143
    move-object v0, p1

    check-cast v0, Lio/olvid/engine/networkfetch/operations/ServerQueryOperation;

    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/operations/ServerQueryOperation;->getServerQueryUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    .line 144
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Operation;->getReasonForCancel()Ljava/lang/Integer;

    move-result-object p1

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ServerQueryOperation cancelled for reason "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/olvid/engine/Logger;->i(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 147
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 149
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    goto :goto_0

    .line 164
    :cond_1
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/operations/ServerQueryOperation;->getServerQuery()Lio/olvid/engine/datatypes/containers/ServerQuery;

    move-result-object p1

    .line 165
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/containers/ServerQuery;->getType()Lio/olvid/engine/datatypes/containers/ServerQuery$Type;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/containers/ServerQuery$Type;->getId()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 166
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/containers/ServerQuery;->getType()Lio/olvid/engine/datatypes/containers/ServerQuery$Type;

    move-result-object p1

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/containers/ServerQuery$Type;->getIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    .line 167
    invoke-direct {p0, p1, v1}, Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator;->waitForServerSession(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;)V

    .line 168
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator;->createServerSessionDelegate:Lio/olvid/engine/networkfetch/datatypes/CreateServerSessionDelegate;

    invoke-interface {v0, p1}, Lio/olvid/engine/networkfetch/datatypes/CreateServerSessionDelegate;->createServerSession(Lio/olvid/engine/datatypes/Identity;)V

    goto :goto_2

    .line 174
    :cond_2
    :goto_0
    invoke-virtual {p0, v1}, Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator;->scheduleNewServerQueryOperation(Lio/olvid/engine/datatypes/UID;)V

    goto :goto_2

    .line 152
    :cond_3
    :try_start_0
    iget-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator;->fetchManagerSessionFactory:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;

    invoke-interface {p1}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;->getSession()Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :try_start_1
    invoke-static {p1, v1}, Lio/olvid/engine/networkfetch/databases/PendingServerQuery;->get(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/networkfetch/databases/PendingServerQuery;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 155
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/databases/PendingServerQuery;->delete()V

    .line 156
    iget-object v0, p1, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Session;->commit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    if-eqz p1, :cond_6

    .line 158
    :try_start_2
    invoke-virtual {p1}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 152
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p1, :cond_5

    .line 158
    :try_start_4
    invoke-virtual {p1}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    :try_start_5
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw v1
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    .line 159
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    :cond_6
    :goto_2
    return-void
.end method

.method public onFinishCallback(Lio/olvid/engine/datatypes/Operation;)V
    .locals 5

    .line 180
    :try_start_0
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator;->fetchManagerSessionFactory:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;

    invoke-interface {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;->getSession()Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 181
    :try_start_1
    move-object v1, p1

    check-cast v1, Lio/olvid/engine/networkfetch/operations/ServerQueryOperation;

    invoke-virtual {v1}, Lio/olvid/engine/networkfetch/operations/ServerQueryOperation;->getServerQueryUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    .line 182
    move-object v2, p1

    check-cast v2, Lio/olvid/engine/networkfetch/operations/ServerQueryOperation;

    invoke-virtual {v2}, Lio/olvid/engine/networkfetch/operations/ServerQueryOperation;->getServerQuery()Lio/olvid/engine/datatypes/containers/ServerQuery;

    move-result-object v2

    .line 183
    check-cast p1, Lio/olvid/engine/networkfetch/operations/ServerQueryOperation;

    invoke-virtual {p1}, Lio/olvid/engine/networkfetch/operations/ServerQueryOperation;->getServerResponse()Lio/olvid/engine/encoder/Encoded;

    move-result-object p1

    .line 185
    iget-object v3, p0, Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator;->failedAttemptCounts:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    invoke-static {v0, v1}, Lio/olvid/engine/networkfetch/databases/PendingServerQuery;->get(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/networkfetch/databases/PendingServerQuery;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    .line 208
    :try_start_2
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    return-void

    .line 191
    :cond_1
    :try_start_3
    new-instance v3, Lio/olvid/engine/datatypes/containers/ChannelServerResponseMessageToSend;

    .line 192
    invoke-virtual {v2}, Lio/olvid/engine/datatypes/containers/ServerQuery;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    .line 194
    invoke-virtual {v2}, Lio/olvid/engine/datatypes/containers/ServerQuery;->getEncodedElements()Lio/olvid/engine/encoder/Encoded;

    move-result-object v2

    invoke-direct {v3, v4, p1, v2}, Lio/olvid/engine/datatypes/containers/ChannelServerResponseMessageToSend;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/encoder/Encoded;Lio/olvid/engine/encoder/Encoded;)V

    .line 196
    iget-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    if-nez p1, :cond_3

    const-string p1, "ServerQueryOperation finished but no ChannelDelegate is set to post the response to."

    .line 197
    invoke-static {p1}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_2

    .line 208
    :try_start_4
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    return-void

    .line 201
    :cond_3
    :try_start_5
    iget-object p1, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Session;->startTransaction()V

    .line 202
    iget-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v2, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v4, p0, Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator;->prng:Lio/olvid/engine/crypto/PRNGService;

    invoke-interface {p1, v2, v3, v4}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    .line 203
    invoke-virtual {v1}, Lio/olvid/engine/networkfetch/databases/PendingServerQuery;->delete()V

    .line 204
    iget-object p1, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Session;->commit()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 206
    :catch_0
    :try_start_6
    iget-object p1, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Session;->rollback()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_0
    if-eqz v0, :cond_5

    .line 208
    :try_start_7
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 180
    :try_start_8
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_4

    .line 208
    :try_start_9
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_a
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    :catch_1
    move-exception p1

    .line 209
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_2
    return-void
.end method

.method public queueNewServerQueryOperation(Lio/olvid/engine/datatypes/UID;)V
    .locals 2

    .line 124
    new-instance v0, Lio/olvid/engine/networkfetch/operations/ServerQueryOperation;

    iget-object v1, p0, Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator;->fetchManagerSessionFactory:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;

    invoke-direct {v0, v1, p1, p0, p0}, Lio/olvid/engine/networkfetch/operations/ServerQueryOperation;-><init>(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Operation$OnFinishCallback;Lio/olvid/engine/datatypes/Operation$OnCancelCallback;)V

    .line 125
    iget-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator;->serverQueriesOperationQueue:Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;

    invoke-virtual {p1, v0}, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;->queue(Lio/olvid/engine/datatypes/Operation;)V

    return-void
.end method

.method public scheduleNewServerQueryOperation(Lio/olvid/engine/datatypes/UID;)V
    .locals 4

    .line 129
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator;->failedAttemptCounts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 131
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 135
    :goto_0
    iget-object v1, p0, Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator;->failedAttemptCounts:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/olvid/engine/datatypes/Constants;->computeReschedulingDelay(I)J

    move-result-wide v0

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheduling a ServerQueryOperation for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/olvid/engine/Logger;->i(Ljava/lang/String;)V

    .line 138
    iget-object v2, p0, Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator$1;

    invoke-direct {v3, p0, p1}, Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator$1;-><init>(Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator;Lio/olvid/engine/datatypes/UID;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v0, v1, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public setChannelDelegate(Lio/olvid/engine/metamanager/ChannelDelegate;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    return-void
.end method

.method public setNotificationListeningDelegate(Lio/olvid/engine/metamanager/NotificationListeningDelegate;)V
    .locals 2

    .line 86
    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator;->notificationListeningDelegate:Lio/olvid/engine/metamanager/NotificationListeningDelegate;

    .line 88
    iget-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator;->notificationListeningDelegate:Lio/olvid/engine/metamanager/NotificationListeningDelegate;

    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator;->serverSessionCreatedNotificationListener:Lio/olvid/engine/networkfetch/coordinators/ServerQueryCoordinator$ServerSessionCreatedNotificationListener;

    const-string v1, "network_fetch_notification_server_session_created"

    invoke-interface {p1, v1, v0}, Lio/olvid/engine/metamanager/NotificationListeningDelegate;->addListener(Ljava/lang/String;Lio/olvid/engine/datatypes/NotificationListener;)J

    return-void
.end method
