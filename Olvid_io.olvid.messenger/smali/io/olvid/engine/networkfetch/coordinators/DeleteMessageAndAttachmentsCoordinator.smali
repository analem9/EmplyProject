.class public Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator;
.super Ljava/lang/Object;
.source "DeleteMessageAndAttachmentsCoordinator.java"

# interfaces
.implements Lio/olvid/engine/datatypes/Operation$OnCancelCallback;
.implements Lio/olvid/engine/networkfetch/databases/PendingDeleteFromServer$PendingDeleteFromServerListener;
.implements Lio/olvid/engine/datatypes/Operation$OnFinishCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator$ServerSessionCreatedNotificationListener;
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

.field private final createServerSessionDelegate:Lio/olvid/engine/networkfetch/datatypes/CreateServerSessionDelegate;

.field private final deleteMessageAndAttachmentsFromServerOperationQueue:Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;

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

.field private final scheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private final serverSessionCreatedNotificationListener:Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator$ServerSessionCreatedNotificationListener;


# direct methods
.method public constructor <init>(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;Lio/olvid/engine/networkfetch/datatypes/CreateServerSessionDelegate;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator;->initialQueueingPerformed:Z

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator;->lock:Ljava/lang/Object;

    .line 46
    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator;->fetchManagerSessionFactory:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;

    .line 47
    iput-object p2, p0, Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator;->createServerSessionDelegate:Lio/olvid/engine/networkfetch/datatypes/CreateServerSessionDelegate;

    .line 49
    new-instance p1, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;

    invoke-direct {p1}, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;-><init>()V

    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator;->deleteMessageAndAttachmentsFromServerOperationQueue:Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;

    .line 50
    iget-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator;->deleteMessageAndAttachmentsFromServerOperationQueue:Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;->execute(I)V

    .line 52
    invoke-static {p2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 53
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator;->awaitingServerSessionOperations:Ljava/util/HashMap;

    .line 54
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator;->awaitingServerSessionOperationsLock:Ljava/util/concurrent/locks/Lock;

    .line 56
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator;->failedAttemptCounts:Ljava/util/HashMap;

    .line 59
    new-instance p1, Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator$ServerSessionCreatedNotificationListener;

    invoke-direct {p1, p0}, Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator$ServerSessionCreatedNotificationListener;-><init>(Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator;)V

    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator;->serverSessionCreatedNotificationListener:Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator$ServerSessionCreatedNotificationListener;

    return-void
.end method

.method static synthetic access$000(Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator;Lio/olvid/engine/datatypes/UID;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator;->queueNewDeleteMessageAndAttachmentsFromServerOperation(Lio/olvid/engine/datatypes/UID;)V

    return-void
.end method

.method static synthetic access$100(Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator;)Ljava/util/concurrent/locks/Lock;
    .locals 0

    .line 26
    iget-object p0, p0, Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator;->awaitingServerSessionOperationsLock:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method

.method static synthetic access$200(Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator;)Ljava/util/HashMap;
    .locals 0

    .line 26
    iget-object p0, p0, Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator;->awaitingServerSessionOperations:Ljava/util/HashMap;

    return-object p0
.end method

.method private queueNewDeleteMessageAndAttachmentsFromServerOperation(Lio/olvid/engine/datatypes/UID;)V
    .locals 2

    .line 87
    new-instance v0, Lio/olvid/engine/networkfetch/operations/DeleteMessageAndAttachmentFromServerAndLocalInboxesOperation;

    iget-object v1, p0, Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator;->fetchManagerSessionFactory:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;

    invoke-direct {v0, v1, p1, p0, p0}, Lio/olvid/engine/networkfetch/operations/DeleteMessageAndAttachmentFromServerAndLocalInboxesOperation;-><init>(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Operation$OnFinishCallback;Lio/olvid/engine/datatypes/Operation$OnCancelCallback;)V

    .line 88
    iget-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator;->deleteMessageAndAttachmentsFromServerOperationQueue:Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;

    invoke-virtual {p1, v0}, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;->queue(Lio/olvid/engine/datatypes/Operation;)V

    return-void
.end method

.method private scheduleNewDeleteMessageAndAttachmentsFromServerOperationQueueing(Lio/olvid/engine/datatypes/UID;)V
    .locals 4

    .line 92
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator;->failedAttemptCounts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 94
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 98
    :goto_0
    iget-object v1, p0, Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator;->failedAttemptCounts:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/olvid/engine/datatypes/Constants;->computeReschedulingDelay(I)J

    move-result-wide v0

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheduling a DeleteMessageAndAttachmentFromServerAndLocalInboxesOperation for "

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

    .line 101
    iget-object v2, p0, Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator$1;

    invoke-direct {v3, p0, p1}, Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator$1;-><init>(Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator;Lio/olvid/engine/datatypes/UID;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v0, v1, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private waitForServerSession(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;)V
    .locals 1

    .line 105
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator;->awaitingServerSessionOperationsLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 106
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator;->awaitingServerSessionOperations:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator;->awaitingServerSessionOperationsLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method


# virtual methods
.method public initialQueueing()V
    .locals 6

    .line 69
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_0
    iget-boolean v1, p0, Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator;->initialQueueingPerformed:Z

    if-eqz v1, :cond_0

    .line 71
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    return-void

    .line 73
    :cond_0
    :try_start_1
    iget-object v1, p0, Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator;->fetchManagerSessionFactory:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;

    invoke-interface {v1}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;->getSession()Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 74
    :try_start_2
    invoke-static {v1}, Lio/olvid/engine/networkfetch/databases/PendingDeleteFromServer;->getAll(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;)[Lio/olvid/engine/networkfetch/databases/PendingDeleteFromServer;

    move-result-object v2

    .line 75
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 76
    invoke-virtual {v5}, Lio/olvid/engine/networkfetch/databases/PendingDeleteFromServer;->getMessageUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v5

    invoke-direct {p0, v5}, Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator;->queueNewDeleteMessageAndAttachmentsFromServerOperation(Lio/olvid/engine/datatypes/UID;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    .line 78
    iput-boolean v2, p0, Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator;->initialQueueingPerformed:Z
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

    .line 83
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

.method public newPendingDeleteFromServer(Lio/olvid/engine/datatypes/UID;)V
    .locals 0

    .line 167
    invoke-direct {p0, p1}, Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator;->queueNewDeleteMessageAndAttachmentsFromServerOperation(Lio/olvid/engine/datatypes/UID;)V

    return-void
.end method

.method public onCancelCallback(Lio/olvid/engine/datatypes/Operation;)V
    .locals 4

    .line 119
    move-object v0, p1

    check-cast v0, Lio/olvid/engine/networkfetch/operations/DeleteMessageAndAttachmentFromServerAndLocalInboxesOperation;

    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/operations/DeleteMessageAndAttachmentFromServerAndLocalInboxesOperation;->getMessageUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    .line 120
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/operations/DeleteMessageAndAttachmentFromServerAndLocalInboxesOperation;->getToIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    .line 121
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Operation;->getReasonForCancel()Ljava/lang/Integer;

    move-result-object p1

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DeleteMessageAndAttachmentFromServerAndLocalInboxesOperation cancelled for reason "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/olvid/engine/Logger;->i(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 124
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 126
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    .line 138
    invoke-direct {p0, v1}, Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator;->scheduleNewDeleteMessageAndAttachmentsFromServerOperationQueueing(Lio/olvid/engine/datatypes/UID;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 131
    invoke-direct {p0, v0, v1}, Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator;->waitForServerSession(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;)V

    .line 132
    iget-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator;->createServerSessionDelegate:Lio/olvid/engine/networkfetch/datatypes/CreateServerSessionDelegate;

    invoke-interface {p1, v0}, Lio/olvid/engine/networkfetch/datatypes/CreateServerSessionDelegate;->createServerSession(Lio/olvid/engine/datatypes/Identity;)V

    goto :goto_0

    .line 134
    :cond_2
    invoke-direct {p0, v1}, Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator;->scheduleNewDeleteMessageAndAttachmentsFromServerOperationQueueing(Lio/olvid/engine/datatypes/UID;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onFinishCallback(Lio/olvid/engine/datatypes/Operation;)V
    .locals 1

    .line 113
    check-cast p1, Lio/olvid/engine/networkfetch/operations/DeleteMessageAndAttachmentFromServerAndLocalInboxesOperation;

    invoke-virtual {p1}, Lio/olvid/engine/networkfetch/operations/DeleteMessageAndAttachmentFromServerAndLocalInboxesOperation;->getMessageUid()Lio/olvid/engine/datatypes/UID;

    move-result-object p1

    .line 114
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator;->failedAttemptCounts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setNotificationListeningDelegate(Lio/olvid/engine/metamanager/NotificationListeningDelegate;)V
    .locals 2

    .line 63
    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator;->notificationListeningDelegate:Lio/olvid/engine/metamanager/NotificationListeningDelegate;

    .line 65
    iget-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator;->notificationListeningDelegate:Lio/olvid/engine/metamanager/NotificationListeningDelegate;

    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator;->serverSessionCreatedNotificationListener:Lio/olvid/engine/networkfetch/coordinators/DeleteMessageAndAttachmentsCoordinator$ServerSessionCreatedNotificationListener;

    const-string v1, "network_fetch_notification_server_session_created"

    invoke-interface {p1, v1, v0}, Lio/olvid/engine/metamanager/NotificationListeningDelegate;->addListener(Ljava/lang/String;Lio/olvid/engine/datatypes/NotificationListener;)J

    return-void
.end method
