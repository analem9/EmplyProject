.class public Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;
.super Ljava/lang/Object;
.source "ServerPushNotificationsCoordinator.java"

# interfaces
.implements Lio/olvid/engine/networkfetch/datatypes/RegisterServerPushNotificationDelegate;
.implements Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification$RegisteredPushNotificationListener;
.implements Lio/olvid/engine/datatypes/Operation$OnCancelCallback;
.implements Lio/olvid/engine/datatypes/Operation$OnFinishCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$IdentityAndUid;,
        Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$RegisterPushNotificationInfo;,
        Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$ServerSessionCreatedNotificationListener;
    }
.end annotation


# instance fields
.field private final androidIdentityMaskingUids:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lio/olvid/engine/datatypes/UID;",
            "Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$IdentityAndUid;",
            ">;"
        }
    .end annotation
.end field

.field private final awaitingServerSessionOperations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lio/olvid/engine/datatypes/Identity;",
            "Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$RegisterPushNotificationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final awaitingServerSessionOperationsLock:Ljava/lang/Object;

.field private final createServerSessionDelegate:Lio/olvid/engine/networkfetch/datatypes/CreateServerSessionDelegate;

.field private final currentlyPollingIdentities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lio/olvid/engine/datatypes/Identity;",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final downloadMessagesAndListAttachmentsDelegate:Lio/olvid/engine/networkfetch/datatypes/DownloadMessagesAndListAttachmentsDelegate;

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

.field private initialQueueingPerformed:Z

.field private final lock:Ljava/lang/Object;

.field private notificationListeningDelegate:Lio/olvid/engine/metamanager/NotificationListeningDelegate;

.field private final registerPushNotificationOperationQueue:Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;

.field private final scheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private final serverSessionCreatedNotificationListener:Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$ServerSessionCreatedNotificationListener;


# direct methods
.method public constructor <init>(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;Lio/olvid/engine/networkfetch/datatypes/CreateServerSessionDelegate;Lio/olvid/engine/networkfetch/datatypes/DownloadMessagesAndListAttachmentsDelegate;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->initialQueueingPerformed:Z

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->lock:Ljava/lang/Object;

    .line 57
    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->fetchManagerSessionFactory:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;

    .line 58
    iput-object p2, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->createServerSessionDelegate:Lio/olvid/engine/networkfetch/datatypes/CreateServerSessionDelegate;

    .line 59
    iput-object p3, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->downloadMessagesAndListAttachmentsDelegate:Lio/olvid/engine/networkfetch/datatypes/DownloadMessagesAndListAttachmentsDelegate;

    .line 61
    new-instance p1, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;

    invoke-direct {p1}, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;-><init>()V

    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->registerPushNotificationOperationQueue:Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;

    .line 62
    iget-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->registerPushNotificationOperationQueue:Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;->execute(I)V

    .line 64
    invoke-static {p2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 65
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->awaitingServerSessionOperations:Ljava/util/HashMap;

    .line 66
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->awaitingServerSessionOperationsLock:Ljava/lang/Object;

    .line 68
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->currentlyPollingIdentities:Ljava/util/HashMap;

    .line 69
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->androidIdentityMaskingUids:Ljava/util/HashMap;

    .line 71
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->failedAttemptCounts:Ljava/util/HashMap;

    .line 73
    new-instance p1, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$ServerSessionCreatedNotificationListener;

    invoke-direct {p1, p0}, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$ServerSessionCreatedNotificationListener;-><init>(Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;)V

    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->serverSessionCreatedNotificationListener:Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$ServerSessionCreatedNotificationListener;

    return-void
.end method

.method static synthetic access$000(Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;BLio/olvid/engine/encoder/Encoded;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->queueNewRegisterPushNotificationOperation(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;BLio/olvid/engine/encoder/Encoded;)V

    return-void
.end method

.method static synthetic access$100(Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;)Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;
    .locals 0

    .line 31
    iget-object p0, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->fetchManagerSessionFactory:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;

    return-object p0
.end method

.method static synthetic access$200(Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;)Lio/olvid/engine/networkfetch/datatypes/DownloadMessagesAndListAttachmentsDelegate;
    .locals 0

    .line 31
    iget-object p0, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->downloadMessagesAndListAttachmentsDelegate:Lio/olvid/engine/networkfetch/datatypes/DownloadMessagesAndListAttachmentsDelegate;

    return-object p0
.end method

.method static synthetic access$300(Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;)Ljava/lang/Object;
    .locals 0

    .line 31
    iget-object p0, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->awaitingServerSessionOperationsLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$400(Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;)Ljava/util/HashMap;
    .locals 0

    .line 31
    iget-object p0, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->awaitingServerSessionOperations:Ljava/util/HashMap;

    return-object p0
.end method

.method private queueNewRegisterPushNotificationOperation(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;BLio/olvid/engine/encoder/Encoded;)V
    .locals 9

    .line 114
    new-instance v8, Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationOperation;

    iget-object v1, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->fetchManagerSessionFactory:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;

    move-object v0, v8

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p0

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationOperation;-><init>(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;BLio/olvid/engine/encoder/Encoded;Lio/olvid/engine/datatypes/Operation$OnFinishCallback;Lio/olvid/engine/datatypes/Operation$OnCancelCallback;)V

    .line 115
    iget-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->registerPushNotificationOperationQueue:Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;

    invoke-virtual {p1, v8}, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;->queue(Lio/olvid/engine/datatypes/Operation;)V

    return-void
.end method

.method private scheduleNewRegisterPushNotificationOperationQueueing(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;BLio/olvid/engine/encoder/Encoded;)V
    .locals 10

    .line 119
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->failedAttemptCounts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 121
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 125
    :goto_0
    iget-object v1, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->failedAttemptCounts:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/olvid/engine/datatypes/Constants;->computeReschedulingDelay(I)J

    move-result-wide v0

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheduling a RegisterPushNotificationOperation for "

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

    .line 128
    iget-object v2, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v9, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$1;

    move-object v3, v9

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$1;-><init>(Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;BLio/olvid/engine/encoder/Encoded;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v9, v0, v1, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private startPolling(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/encoder/Encoded;)V
    .locals 9

    .line 234
    :try_start_0
    invoke-virtual {p3}, Lio/olvid/engine/encoder/Encoded;->decodeLong()J

    move-result-wide v0
    :try_end_0
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-wide v6, v0

    goto :goto_1

    :catch_0
    const-wide/16 v0, 0x3e8

    goto :goto_0

    .line 238
    :goto_1
    iget-object p3, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->currentlyPollingIdentities:Ljava/util/HashMap;

    monitor-enter p3

    .line 239
    :try_start_1
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->currentlyPollingIdentities:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 241
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 242
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->currentlyPollingIdentities:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    :cond_0
    iget-object v2, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$2;

    invoke-direct {v3, p0, p1, p2}, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$2;-><init>(Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;)V

    const-wide/16 v4, 0x0

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p2

    .line 257
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->currentlyPollingIdentities:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    monitor-exit p3

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private storeAndroidIdentityMaskingUid(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/encoder/Encoded;)V
    .locals 2

    .line 223
    :try_start_0
    invoke-virtual {p3}, Lio/olvid/engine/encoder/Encoded;->decodeList()[Lio/olvid/engine/encoder/Encoded;

    move-result-object p3

    const/4 v0, 0x1

    .line 224
    aget-object p3, p3, v0

    invoke-virtual {p3}, Lio/olvid/engine/encoder/Encoded;->decodeUid()Lio/olvid/engine/datatypes/UID;

    move-result-object p3

    .line 225
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->androidIdentityMaskingUids:Ljava/util/HashMap;

    new-instance v1, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$IdentityAndUid;

    invoke-direct {v1, p1, p2}, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$IdentityAndUid;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;)V

    invoke-virtual {v0, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 227
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private waitForServerSession(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$RegisterPushNotificationInfo;)V
    .locals 2

    .line 177
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->awaitingServerSessionOperationsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 178
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->awaitingServerSessionOperations:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public initialQueueing()V
    .locals 10

    .line 83
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 84
    :try_start_0
    iget-boolean v1, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->initialQueueingPerformed:Z

    if-eqz v1, :cond_0

    .line 85
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    return-void

    .line 87
    :cond_0
    :try_start_1
    iget-object v1, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->fetchManagerSessionFactory:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;

    invoke-interface {v1}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;->getSession()Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 88
    :try_start_2
    invoke-static {v1}, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->getAll(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;)[Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;

    move-result-object v2

    .line 89
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v3, :cond_4

    aget-object v6, v2, v4

    .line 90
    invoke-virtual {v6}, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->getPushNotificationType()B

    move-result v7

    const/4 v8, -0x2

    if-eq v7, v8, :cond_3

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    if-eq v7, v5, :cond_1

    goto :goto_1

    .line 95
    :cond_1
    invoke-virtual {v6}, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->getIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v7

    invoke-virtual {v6}, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->getDeviceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v8

    invoke-virtual {v6}, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->getExtraInfo()Lio/olvid/engine/encoder/Encoded;

    move-result-object v9

    invoke-direct {p0, v7, v8, v9}, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->storeAndroidIdentityMaskingUid(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/encoder/Encoded;)V

    .line 96
    invoke-virtual {v6}, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->getIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v7

    invoke-virtual {v6}, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->getDeviceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v8

    invoke-virtual {v6}, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->getExtraInfo()Lio/olvid/engine/encoder/Encoded;

    move-result-object v6

    invoke-virtual {p0, v7, v8, v5, v6}, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->registerServerPushNotification(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;BLio/olvid/engine/encoder/Encoded;)V

    goto :goto_1

    .line 99
    :cond_2
    invoke-virtual {v6}, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->getIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v5

    invoke-virtual {v6}, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->getDeviceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v7

    invoke-virtual {v6}, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->getExtraInfo()Lio/olvid/engine/encoder/Encoded;

    move-result-object v6

    invoke-virtual {p0, v5, v7, v8, v6}, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->registerServerPushNotification(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;BLio/olvid/engine/encoder/Encoded;)V

    goto :goto_1

    .line 92
    :cond_3
    invoke-virtual {v6}, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->getIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v5

    invoke-virtual {v6}, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->getDeviceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v7

    invoke-virtual {v6}, Lio/olvid/engine/networkfetch/databases/RegisteredPushNotification;->getExtraInfo()Lio/olvid/engine/encoder/Encoded;

    move-result-object v6

    invoke-direct {p0, v5, v7, v6}, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->startPolling(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/encoder/Encoded;)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 105
    :cond_4
    iput-boolean v5, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->initialQueueingPerformed:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_6

    .line 106
    :try_start_3
    invoke-virtual {v1}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_0
    move-exception v2

    .line 87
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v3

    if-eqz v1, :cond_5

    .line 106
    :try_start_5
    invoke-virtual {v1}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    :try_start_6
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    throw v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catch_0
    move-exception v1

    .line 107
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 109
    :cond_6
    :goto_3
    monitor-exit v0

    return-void

    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v1
.end method

.method public newRegisteredPushNotification(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;BLio/olvid/engine/encoder/Encoded;)V
    .locals 1

    const/4 v0, -0x2

    if-eq p3, v0, :cond_2

    const/4 v0, -0x1

    if-eq p3, v0, :cond_1

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    invoke-direct {p0, p1, p2, p4}, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->storeAndroidIdentityMaskingUid(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/encoder/Encoded;)V

    .line 195
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->registerServerPushNotification(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;BLio/olvid/engine/encoder/Encoded;)V

    goto :goto_0

    .line 198
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->registerServerPushNotification(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;BLio/olvid/engine/encoder/Encoded;)V

    goto :goto_0

    .line 191
    :cond_2
    invoke-direct {p0, p1, p2, p4}, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->startPolling(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/encoder/Encoded;)V

    :goto_0
    return-void
.end method

.method public onCancelCallback(Lio/olvid/engine/datatypes/Operation;)V
    .locals 6

    .line 157
    move-object v0, p1

    check-cast v0, Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationOperation;

    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationOperation;->getIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    .line 158
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationOperation;->getDeviceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v2

    .line 159
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationOperation;->getPushNotificationType()B

    move-result v3

    .line 160
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationOperation;->getExtraInfo()Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    .line 161
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Operation;->getReasonForCancel()Ljava/lang/Integer;

    move-result-object p1

    .line 162
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RegisterPushNotificationOperation cancelled for reason "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/olvid/engine/Logger;->i(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 164
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 166
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v4, 0x2

    if-eq p1, v4, :cond_1

    .line 172
    invoke-direct {p0, v1, v2, v3, v0}, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->scheduleNewRegisterPushNotificationOperationQueueing(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;BLio/olvid/engine/encoder/Encoded;)V

    goto :goto_0

    .line 168
    :cond_1
    new-instance p1, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$RegisterPushNotificationInfo;

    invoke-direct {p1, p0, v2, v3, v0}, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$RegisterPushNotificationInfo;-><init>(Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;Lio/olvid/engine/datatypes/UID;BLio/olvid/engine/encoder/Encoded;)V

    invoke-direct {p0, v1, p1}, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->waitForServerSession(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$RegisterPushNotificationInfo;)V

    .line 169
    iget-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->createServerSessionDelegate:Lio/olvid/engine/networkfetch/datatypes/CreateServerSessionDelegate;

    invoke-interface {p1, v1}, Lio/olvid/engine/networkfetch/datatypes/CreateServerSessionDelegate;->createServerSession(Lio/olvid/engine/datatypes/Identity;)V

    :goto_0
    return-void
.end method

.method public onFinishCallback(Lio/olvid/engine/datatypes/Operation;)V
    .locals 2

    .line 150
    check-cast p1, Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationOperation;

    invoke-virtual {p1}, Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationOperation;->getIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->failedAttemptCounts:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Registered to push notification of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationOperation;->getPushNotificationType()B

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " on the server."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public processAndroidPushNotification(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 211
    :cond_0
    :try_start_0
    new-instance v0, Lio/olvid/engine/datatypes/UID;

    invoke-direct {v0, p1}, Lio/olvid/engine/datatypes/UID;-><init>(Ljava/lang/String;)V

    .line 212
    iget-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->androidIdentityMaskingUids:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$IdentityAndUid;

    if-eqz p1, :cond_1

    .line 214
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->downloadMessagesAndListAttachmentsDelegate:Lio/olvid/engine/networkfetch/datatypes/DownloadMessagesAndListAttachmentsDelegate;

    iget-object v1, p1, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$IdentityAndUid;->identity:Lio/olvid/engine/datatypes/Identity;

    iget-object p1, p1, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$IdentityAndUid;->deviceUid:Lio/olvid/engine/datatypes/UID;

    invoke-interface {v0, v1, p1}, Lio/olvid/engine/networkfetch/datatypes/DownloadMessagesAndListAttachmentsDelegate;->downloadMessagesAndListAttachments(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 217
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public registerServerPushNotification(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;BLio/olvid/engine/encoder/Encoded;)V
    .locals 0

    .line 184
    invoke-direct {p0, p1, p2, p3, p4}, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->queueNewRegisterPushNotificationOperation(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;BLio/olvid/engine/encoder/Encoded;)V

    return-void
.end method

.method public setNotificationListeningDelegate(Lio/olvid/engine/metamanager/NotificationListeningDelegate;)V
    .locals 2

    .line 77
    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->notificationListeningDelegate:Lio/olvid/engine/metamanager/NotificationListeningDelegate;

    .line 79
    iget-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->notificationListeningDelegate:Lio/olvid/engine/metamanager/NotificationListeningDelegate;

    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->serverSessionCreatedNotificationListener:Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$ServerSessionCreatedNotificationListener;

    const-string v1, "network_fetch_notification_server_session_created"

    invoke-interface {p1, v1, v0}, Lio/olvid/engine/metamanager/NotificationListeningDelegate;->addListener(Ljava/lang/String;Lio/olvid/engine/datatypes/NotificationListener;)J

    return-void
.end method

.method public stopPolling(Lio/olvid/engine/datatypes/Identity;)V
    .locals 3

    .line 262
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->currentlyPollingIdentities:Ljava/util/HashMap;

    monitor-enter v0

    .line 263
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->currentlyPollingIdentities:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 265
    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 266
    iget-object v1, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;->currentlyPollingIdentities:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
