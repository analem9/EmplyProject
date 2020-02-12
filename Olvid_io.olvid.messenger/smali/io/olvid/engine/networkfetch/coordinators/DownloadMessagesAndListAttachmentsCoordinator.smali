.class public Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;
.super Ljava/lang/Object;
.source "DownloadMessagesAndListAttachmentsCoordinator.java"

# interfaces
.implements Lio/olvid/engine/datatypes/Operation$OnCancelCallback;
.implements Lio/olvid/engine/networkfetch/datatypes/DownloadMessagesAndListAttachmentsDelegate;
.implements Lio/olvid/engine/networkfetch/databases/InboxMessage$InboxMessageListener;
.implements Lio/olvid/engine/datatypes/Operation$OnFinishCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator$ServerSessionCreatedNotificationListener;
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

.field private final downloadMessagesAndListAttachmentsOperationQueue:Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;

.field private final failedAttemptCounts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lio/olvid/engine/datatypes/Identity;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final fetchManagerSessionFactory:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;

.field private notificationListeningDelegate:Lio/olvid/engine/metamanager/NotificationListeningDelegate;

.field private notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

.field private processDownloadedMessageDelegate:Lio/olvid/engine/metamanager/ProcessDownloadedMessageDelegate;

.field private final scheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private final serverSessionCreatedNotificationListener:Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator$ServerSessionCreatedNotificationListener;


# direct methods
.method public constructor <init>(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;Lio/olvid/engine/networkfetch/datatypes/CreateServerSessionDelegate;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;->fetchManagerSessionFactory:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;

    .line 52
    iput-object p2, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;->createServerSessionDelegate:Lio/olvid/engine/networkfetch/datatypes/CreateServerSessionDelegate;

    .line 54
    new-instance p1, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;

    invoke-direct {p1}, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;-><init>()V

    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;->downloadMessagesAndListAttachmentsOperationQueue:Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;

    .line 55
    iget-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;->downloadMessagesAndListAttachmentsOperationQueue:Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;->execute(I)V

    .line 57
    invoke-static {p2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 58
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;->awaitingServerSessionOperations:Ljava/util/HashMap;

    .line 59
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;->awaitingServerSessionOperationsLock:Ljava/util/concurrent/locks/Lock;

    .line 61
    new-instance p1, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator$ServerSessionCreatedNotificationListener;

    invoke-direct {p1, p0}, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator$ServerSessionCreatedNotificationListener;-><init>(Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;)V

    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;->serverSessionCreatedNotificationListener:Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator$ServerSessionCreatedNotificationListener;

    .line 63
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;->failedAttemptCounts:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;->queueNewDownloadMessagesAndListAttachmentsOperation(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;)V

    return-void
.end method

.method static synthetic access$100(Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;)Ljava/util/concurrent/locks/Lock;
    .locals 0

    .line 31
    iget-object p0, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;->awaitingServerSessionOperationsLock:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method

.method static synthetic access$200(Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;)Ljava/util/HashMap;
    .locals 0

    .line 31
    iget-object p0, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;->awaitingServerSessionOperations:Ljava/util/HashMap;

    return-object p0
.end method

.method private queueNewDownloadMessagesAndListAttachmentsOperation(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;)V
    .locals 7

    .line 94
    new-instance v6, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsOperation;

    iget-object v1, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;->fetchManagerSessionFactory:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsOperation;-><init>(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Operation$OnFinishCallback;Lio/olvid/engine/datatypes/Operation$OnCancelCallback;)V

    .line 95
    iget-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;->downloadMessagesAndListAttachmentsOperationQueue:Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;

    invoke-virtual {p1, v6}, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;->queue(Lio/olvid/engine/datatypes/Operation;)V

    return-void
.end method

.method private scheduleNewDownloadMessagesAndListAttachmentsOperationQueueing(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;)V
    .locals 4

    .line 99
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;->failedAttemptCounts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 101
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 105
    :goto_0
    iget-object v1, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;->failedAttemptCounts:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/olvid/engine/datatypes/Constants;->computeReschedulingDelay(I)J

    move-result-wide v0

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheduling a DownloadMessagesAndListAttachmentsOperation for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Identity;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/olvid/engine/Logger;->i(Ljava/lang/String;)V

    .line 108
    iget-object v2, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator$1;

    invoke-direct {v3, p0, p1, p2}, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator$1;-><init>(Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v0, v1, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private waitForServerSession(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;->awaitingServerSessionOperationsLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 113
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;->awaitingServerSessionOperations:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;->awaitingServerSessionOperationsLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method


# virtual methods
.method public downloadMessagesAndListAttachments(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;)V
    .locals 0

    .line 203
    invoke-direct {p0, p1, p2}, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;->queueNewDownloadMessagesAndListAttachmentsOperation(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;)V

    return-void
.end method

.method public initialQueueing()V
    .locals 8

    .line 77
    :try_start_0
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;->fetchManagerSessionFactory:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;

    invoke-interface {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;->getSession()Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :try_start_1
    iget-object v1, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v2, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-interface {v1, v2}, Lio/olvid/engine/metamanager/IdentityDelegate;->getOwnedIdentities(Lio/olvid/engine/datatypes/Session;)[Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    .line 79
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 80
    iget-object v6, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v7, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-interface {v6, v7, v5}, Lio/olvid/engine/metamanager/IdentityDelegate;->getCurrentDeviceUidOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/UID;

    move-result-object v6

    .line 81
    invoke-virtual {p0, v5, v6}, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;->downloadMessagesAndListAttachments(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 84
    :cond_0
    invoke-static {v0}, Lio/olvid/engine/networkfetch/databases/InboxMessage;->getDecryptedMessages(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;)[Lio/olvid/engine/networkfetch/databases/InboxMessage;

    move-result-object v1

    .line 85
    array-length v2, v1

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 86
    invoke-virtual {v4}, Lio/olvid/engine/networkfetch/databases/InboxMessage;->getUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;->messageDecrypted(Lio/olvid/engine/datatypes/UID;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_3

    .line 88
    :try_start_2
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catchall_0
    move-exception v1

    .line 77
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_2

    .line 88
    :try_start_4
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw v2
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    .line 89
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    :cond_3
    :goto_3
    return-void
.end method

.method public messageDecrypted(Lio/olvid/engine/datatypes/UID;)V
    .locals 2

    .line 129
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    if-eqz v0, :cond_0

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "uid"

    .line 131
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    const-string v1, "network_fetch_notification_message_payload_set"

    invoke-interface {p1, v1, v0}, Lio/olvid/engine/metamanager/NotificationPostingDelegate;->postNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method

.method public messageWasDownloaded(Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage;)V
    .locals 1

    .line 121
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;->processDownloadedMessageDelegate:Lio/olvid/engine/metamanager/ProcessDownloadedMessageDelegate;

    if-nez v0, :cond_0

    const-string p1, "A message was downloaded but no ProcessDownloadedMessageDelegate is set yet."

    .line 122
    invoke-static {p1}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    return-void

    .line 125
    :cond_0
    invoke-interface {v0, p1}, Lio/olvid/engine/metamanager/ProcessDownloadedMessageDelegate;->processDownloadedMessage(Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage;)V

    return-void
.end method

.method public onCancelCallback(Lio/olvid/engine/datatypes/Operation;)V
    .locals 4

    .line 176
    move-object v0, p1

    check-cast v0, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsOperation;

    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsOperation;->getIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    .line 177
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsOperation;->getDeviceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v0

    .line 178
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Operation;->getReasonForCancel()Ljava/lang/Integer;

    move-result-object p1

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DownloadMessagesAndListAttachmentsOperation cancelled for reason "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/olvid/engine/Logger;->i(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 181
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 183
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    .line 190
    invoke-direct {p0, v1, v0}, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;->scheduleNewDownloadMessagesAndListAttachmentsOperationQueueing(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;)V

    .line 193
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "owned_identity"

    .line 194
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 195
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "success"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    const-string v1, "network_fetch_notification_server_polled"

    invoke-interface {v0, v1, p1}, Lio/olvid/engine/metamanager/NotificationPostingDelegate;->postNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 185
    :cond_1
    invoke-direct {p0, v1, v0}, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;->waitForServerSession(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;)V

    .line 187
    iget-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;->createServerSessionDelegate:Lio/olvid/engine/networkfetch/datatypes/CreateServerSessionDelegate;

    invoke-interface {p1, v1}, Lio/olvid/engine/networkfetch/datatypes/CreateServerSessionDelegate;->createServerSession(Lio/olvid/engine/datatypes/Identity;)V

    :goto_0
    return-void
.end method

.method public onFinishCallback(Lio/olvid/engine/datatypes/Operation;)V
    .locals 2

    .line 165
    check-cast p1, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsOperation;

    invoke-virtual {p1}, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsOperation;->getIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    .line 166
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;->failedAttemptCounts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "owned_identity"

    .line 169
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 170
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "success"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    const-string v1, "network_fetch_notification_server_polled"

    invoke-interface {p1, v1, v0}, Lio/olvid/engine/metamanager/NotificationPostingDelegate;->postNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public setNotificationListeningDelegate(Lio/olvid/engine/metamanager/NotificationListeningDelegate;)V
    .locals 2

    .line 67
    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;->notificationListeningDelegate:Lio/olvid/engine/metamanager/NotificationListeningDelegate;

    .line 69
    iget-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;->notificationListeningDelegate:Lio/olvid/engine/metamanager/NotificationListeningDelegate;

    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;->serverSessionCreatedNotificationListener:Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator$ServerSessionCreatedNotificationListener;

    const-string v1, "network_fetch_notification_server_session_created"

    invoke-interface {p1, v1, v0}, Lio/olvid/engine/metamanager/NotificationListeningDelegate;->addListener(Ljava/lang/String;Lio/olvid/engine/datatypes/NotificationListener;)J

    return-void
.end method

.method public setNotificationPostingDelegate(Lio/olvid/engine/metamanager/NotificationPostingDelegate;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    return-void
.end method

.method public setProcessDownloadedMessageDelegate(Lio/olvid/engine/metamanager/ProcessDownloadedMessageDelegate;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadMessagesAndListAttachmentsCoordinator;->processDownloadedMessageDelegate:Lio/olvid/engine/metamanager/ProcessDownloadedMessageDelegate;

    return-void
.end method
