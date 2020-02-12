.class public Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;
.super Ljava/lang/Object;
.source "SendAttachmentCoordinator.java"

# interfaces
.implements Lio/olvid/engine/networksend/databases/OutboxAttachment$OutboxAttachmentCanBeSentListener;
.implements Lio/olvid/engine/datatypes/Operation$OnCancelCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator$AttachmentPriorityInfo;,
        Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator$SignedUrlsRefreshedNotificationListener;
    }
.end annotation


# instance fields
.field private final awaitingRefreshedUrlsLock:Ljava/util/concurrent/locks/Lock;

.field private final awaitingRefreshedUrlsOperations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lio/olvid/engine/datatypes/containers/UidAndNumber;",
            "Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator$AttachmentPriorityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final failedAttemptCounts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lio/olvid/engine/datatypes/containers/UidAndNumber;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final fileFailedAttemptCounts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lio/olvid/engine/datatypes/containers/UidAndNumber;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private initialQueueingPerformed:Z

.field private final lock:Ljava/lang/Object;

.field private notificationListeningDelegate:Lio/olvid/engine/metamanager/NotificationListeningDelegate;

.field private final refreshOutboxAttachmentSignedUrlDelegate:Lio/olvid/engine/networksend/datatypes/RefreshOutboxAttachmentSignedUrlDelegate;

.field private final scheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private final sendAttachmentOperationQueue:Lio/olvid/engine/datatypes/PriorityOperationQueue;

.field private final sendManagerSessionFactory:Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;

.field private final signedUrlsRefreshedNotificationListener:Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator$SignedUrlsRefreshedNotificationListener;


# direct methods
.method public constructor <init>(Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;Lio/olvid/engine/networksend/coordinators/RefreshOutboxAttachmentSignedUrlCoordinator;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;->initialQueueingPerformed:Z

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;->lock:Ljava/lang/Object;

    .line 53
    iput-object p1, p0, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;->sendManagerSessionFactory:Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;

    .line 54
    iput-object p2, p0, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;->refreshOutboxAttachmentSignedUrlDelegate:Lio/olvid/engine/networksend/datatypes/RefreshOutboxAttachmentSignedUrlDelegate;

    .line 56
    new-instance p1, Lio/olvid/engine/datatypes/PriorityOperationQueue;

    invoke-direct {p1}, Lio/olvid/engine/datatypes/PriorityOperationQueue;-><init>()V

    iput-object p1, p0, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;->sendAttachmentOperationQueue:Lio/olvid/engine/datatypes/PriorityOperationQueue;

    .line 57
    iget-object p1, p0, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;->sendAttachmentOperationQueue:Lio/olvid/engine/datatypes/PriorityOperationQueue;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lio/olvid/engine/datatypes/PriorityOperationQueue;->execute(I)V

    const/4 p1, 0x1

    .line 59
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 61
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;->failedAttemptCounts:Ljava/util/HashMap;

    .line 62
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;->fileFailedAttemptCounts:Ljava/util/HashMap;

    .line 64
    new-instance p1, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator$SignedUrlsRefreshedNotificationListener;

    invoke-direct {p1, p0}, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator$SignedUrlsRefreshedNotificationListener;-><init>(Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;)V

    iput-object p1, p0, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;->signedUrlsRefreshedNotificationListener:Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator$SignedUrlsRefreshedNotificationListener;

    .line 65
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;->awaitingRefreshedUrlsOperations:Ljava/util/HashMap;

    .line 66
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;->awaitingRefreshedUrlsLock:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method static synthetic access$000(Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;Lio/olvid/engine/datatypes/UID;IJ)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;->queueNewSendAttachmentCompositeOperation(Lio/olvid/engine/datatypes/UID;IJ)V

    return-void
.end method

.method static synthetic access$100(Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;)Ljava/util/concurrent/locks/Lock;
    .locals 0

    .line 32
    iget-object p0, p0, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;->awaitingRefreshedUrlsLock:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method

.method static synthetic access$200(Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;)Ljava/util/HashMap;
    .locals 0

    .line 32
    iget-object p0, p0, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;->awaitingRefreshedUrlsOperations:Ljava/util/HashMap;

    return-object p0
.end method

.method private queueNewSendAttachmentCompositeOperation(Lio/olvid/engine/datatypes/UID;IJ)V
    .locals 10

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Queueing new UploadAttachmentCompositeOperation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " with priority "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    .line 100
    new-instance v0, Lio/olvid/engine/networksend/operations/UploadAttachmentCompositeOperation;

    iget-object v2, p0, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;->sendManagerSessionFactory:Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;

    const/4 v8, 0x0

    move-object v1, v0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    move-object v7, p0

    move-object v9, p0

    invoke-direct/range {v1 .. v9}, Lio/olvid/engine/networksend/operations/UploadAttachmentCompositeOperation;-><init>(Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;Lio/olvid/engine/datatypes/UID;IJLio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;Lio/olvid/engine/datatypes/Operation$OnFinishCallback;Lio/olvid/engine/datatypes/Operation$OnCancelCallback;)V

    .line 101
    iget-object p1, p0, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;->sendAttachmentOperationQueue:Lio/olvid/engine/datatypes/PriorityOperationQueue;

    invoke-virtual {p1, v0}, Lio/olvid/engine/datatypes/PriorityOperationQueue;->queue(Lio/olvid/engine/datatypes/PriorityOperation;)V

    .line 102
    iget-object p1, p0, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;->sendAttachmentOperationQueue:Lio/olvid/engine/datatypes/PriorityOperationQueue;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/PriorityOperationQueue;->getExecutingOperationThatShouldBeCancelledWhenQueueingWithHigherPriority()Lio/olvid/engine/datatypes/PriorityOperation;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 103
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/PriorityOperation;->getPriority()J

    move-result-wide v0

    cmp-long p2, v0, p3

    if-lez p2, :cond_0

    .line 104
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Canceling a UploadAttachmentCompositeOperation with lower priority "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/PriorityOperation;->getPriority()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    const/4 p2, 0x7

    .line 105
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/olvid/engine/datatypes/PriorityOperation;->cancel(Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method private scheduleNewSendAttachmentCompositeOperationQueueing(Lio/olvid/engine/datatypes/UID;IJ)V
    .locals 10

    .line 110
    new-instance v0, Lio/olvid/engine/datatypes/containers/UidAndNumber;

    invoke-direct {v0, p1, p2}, Lio/olvid/engine/datatypes/containers/UidAndNumber;-><init>(Lio/olvid/engine/datatypes/UID;I)V

    .line 111
    iget-object v1, p0, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;->failedAttemptCounts:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 113
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 117
    :goto_0
    iget-object v2, p0, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;->failedAttemptCounts:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/olvid/engine/datatypes/Constants;->computeReschedulingDelay(I)J

    move-result-wide v0

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheduling a UploadAttachmentCompositeOperation for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/olvid/engine/Logger;->i(Ljava/lang/String;)V

    .line 120
    iget-object v2, p0, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v9, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator$1;

    move-object v3, v9

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-wide v7, p3

    invoke-direct/range {v3 .. v8}, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator$1;-><init>(Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;Lio/olvid/engine/datatypes/UID;IJ)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v9, v0, v1, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private waitForRefreshedUrls(Lio/olvid/engine/datatypes/UID;IJ)V
    .locals 9

    .line 124
    iget-object v0, p0, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;->awaitingRefreshedUrlsLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 125
    iget-object v0, p0, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;->awaitingRefreshedUrlsOperations:Ljava/util/HashMap;

    new-instance v1, Lio/olvid/engine/datatypes/containers/UidAndNumber;

    invoke-direct {v1, p1, p2}, Lio/olvid/engine/datatypes/containers/UidAndNumber;-><init>(Lio/olvid/engine/datatypes/UID;I)V

    new-instance v8, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator$AttachmentPriorityInfo;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-wide v6, p3

    invoke-direct/range {v2 .. v7}, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator$AttachmentPriorityInfo;-><init>(Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;Lio/olvid/engine/datatypes/UID;IJ)V

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object p1, p0, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;->awaitingRefreshedUrlsLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method


# virtual methods
.method public initialQueueing()V
    .locals 14

    .line 76
    iget-object v0, p0, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 77
    :try_start_0
    iget-boolean v1, p0, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;->initialQueueingPerformed:Z

    if-eqz v1, :cond_0

    .line 78
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    return-void

    .line 80
    :cond_0
    :try_start_1
    iget-object v1, p0, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;->sendManagerSessionFactory:Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;

    invoke-interface {v1}, Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;->getSession()Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    move-result-object v1
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 81
    :try_start_2
    invoke-static {v1}, Lio/olvid/engine/networksend/databases/OutboxMessage;->getAll(Lio/olvid/engine/networksend/datatypes/SendManagerSession;)[Lio/olvid/engine/networksend/databases/OutboxMessage;

    move-result-object v2

    .line 82
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_3

    aget-object v6, v2, v5

    .line 83
    invoke-virtual {v6}, Lio/olvid/engine/networksend/databases/OutboxMessage;->getUidFromServer()Lio/olvid/engine/datatypes/UID;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 84
    invoke-virtual {v6}, Lio/olvid/engine/networksend/databases/OutboxMessage;->getAttachments()[Lio/olvid/engine/networksend/databases/OutboxAttachment;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_2

    aget-object v9, v6, v8

    .line 85
    invoke-virtual {v9}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->isAcknowledged()Z

    move-result v10

    if-nez v10, :cond_1

    .line 86
    invoke-virtual {v9}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->getMessageUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v10

    invoke-virtual {v9}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->getAttachmentNumber()I

    move-result v11

    invoke-virtual {v9}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->getPriority()J

    move-result-wide v12

    invoke-direct {p0, v10, v11, v12, v13}, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;->queueNewSendAttachmentCompositeOperation(Lio/olvid/engine/datatypes/UID;IJ)V

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    .line 91
    iput-boolean v2, p0, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;->initialQueueingPerformed:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_5

    .line 92
    :try_start_3
    invoke-virtual {v1}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_0
    move-exception v2

    .line 80
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v3

    if-eqz v1, :cond_4

    .line 92
    :try_start_5
    invoke-virtual {v1}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    :try_start_6
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw v3
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catch_0
    move-exception v1

    .line 93
    :try_start_7
    invoke-virtual {v1}, Ljava/sql/SQLException;->printStackTrace()V

    .line 95
    :cond_5
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

.method public onCancelCallback(Lio/olvid/engine/datatypes/Operation;)V
    .locals 9

    .line 137
    move-object v0, p1

    check-cast v0, Lio/olvid/engine/networksend/operations/UploadAttachmentCompositeOperation;

    invoke-virtual {v0}, Lio/olvid/engine/networksend/operations/UploadAttachmentCompositeOperation;->getMessageUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    .line 138
    invoke-virtual {v0}, Lio/olvid/engine/networksend/operations/UploadAttachmentCompositeOperation;->getAttachmentNumber()I

    move-result v2

    .line 139
    invoke-virtual {v0}, Lio/olvid/engine/networksend/operations/UploadAttachmentCompositeOperation;->getPriority()J

    move-result-wide v3

    .line 140
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Operation;->getReasonForCancel()Ljava/lang/Integer;

    move-result-object p1

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UploadAttachmentCompositeOperation cancelled for reason "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 143
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 145
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    const/4 v5, 0x4

    if-eq p1, v5, :cond_8

    const/4 v5, 0x6

    const/16 v6, 0x8

    if-eq p1, v5, :cond_3

    const/4 v0, 0x7

    if-eq p1, v0, :cond_2

    if-eq p1, v6, :cond_1

    .line 179
    invoke-direct {p0, v1, v2, v3, v4}, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;->scheduleNewSendAttachmentCompositeOperationQueueing(Lio/olvid/engine/datatypes/UID;IJ)V

    goto :goto_2

    .line 168
    :cond_1
    invoke-direct {p0, v1, v2, v3, v4}, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;->waitForRefreshedUrls(Lio/olvid/engine/datatypes/UID;IJ)V

    .line 169
    iget-object p1, p0, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;->refreshOutboxAttachmentSignedUrlDelegate:Lio/olvid/engine/networksend/datatypes/RefreshOutboxAttachmentSignedUrlDelegate;

    invoke-interface {p1, v1, v2}, Lio/olvid/engine/networksend/datatypes/RefreshOutboxAttachmentSignedUrlDelegate;->refreshOutboxAttachmentSignedUrl(Lio/olvid/engine/datatypes/UID;I)V

    goto :goto_2

    .line 176
    :cond_2
    invoke-direct {p0, v1, v2, v3, v4}, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;->queueNewSendAttachmentCompositeOperation(Lio/olvid/engine/datatypes/UID;IJ)V

    goto :goto_2

    .line 148
    :cond_3
    iget-object p1, p0, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;->fileFailedAttemptCounts:Ljava/util/HashMap;

    new-instance v5, Lio/olvid/engine/datatypes/containers/UidAndNumber;

    invoke-direct {v5, v1, v2}, Lio/olvid/engine/datatypes/containers/UidAndNumber;-><init>(Lio/olvid/engine/datatypes/UID;I)V

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_4

    const/4 p1, 0x0

    .line 150
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 152
    :cond_4
    iget-object v5, p0, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;->fileFailedAttemptCounts:Ljava/util/HashMap;

    new-instance v7, Lio/olvid/engine/datatypes/containers/UidAndNumber;

    invoke-direct {v7, v1, v2}, Lio/olvid/engine/datatypes/containers/UidAndNumber;-><init>(Lio/olvid/engine/datatypes/UID;I)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v8, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lt p1, v6, :cond_7

    .line 156
    :try_start_0
    iget-object p1, p0, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;->sendManagerSessionFactory:Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;

    invoke-interface {p1}, Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;->getSession()Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :try_start_1
    invoke-static {p1, v1, v2}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->get(Lio/olvid/engine/networksend/datatypes/SendManagerSession;Lio/olvid/engine/datatypes/UID;I)Lio/olvid/engine/networksend/databases/OutboxAttachment;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 159
    invoke-virtual {v0}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->setCancelExternallyRequested()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_8

    .line 162
    :try_start_2
    invoke-virtual {p1}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V

    goto :goto_2

    :cond_5
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 156
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v5

    if-eqz p1, :cond_6

    .line 162
    :try_start_4
    invoke-virtual {p1}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    :try_start_5
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_0
    throw v5
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0

    .line 164
    :catch_0
    :cond_7
    :goto_1
    invoke-direct {p0, v1, v2, v3, v4}, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;->scheduleNewSendAttachmentCompositeOperationQueueing(Lio/olvid/engine/datatypes/UID;IJ)V

    :cond_8
    :goto_2
    return-void
.end method

.method public outboxAttachmentCanBeSent(Lio/olvid/engine/datatypes/UID;IJ)V
    .locals 0

    .line 186
    invoke-direct {p0, p1, p2, p3, p4}, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;->queueNewSendAttachmentCompositeOperation(Lio/olvid/engine/datatypes/UID;IJ)V

    return-void
.end method

.method public resetFailedAttemptCount(Lio/olvid/engine/datatypes/UID;I)V
    .locals 2

    .line 130
    iget-object v0, p0, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;->failedAttemptCounts:Ljava/util/HashMap;

    new-instance v1, Lio/olvid/engine/datatypes/containers/UidAndNumber;

    invoke-direct {v1, p1, p2}, Lio/olvid/engine/datatypes/containers/UidAndNumber;-><init>(Lio/olvid/engine/datatypes/UID;I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setNotificationListeningDelegate(Lio/olvid/engine/metamanager/NotificationListeningDelegate;)V
    .locals 2

    .line 70
    iput-object p1, p0, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;->notificationListeningDelegate:Lio/olvid/engine/metamanager/NotificationListeningDelegate;

    .line 72
    iget-object p1, p0, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;->notificationListeningDelegate:Lio/olvid/engine/metamanager/NotificationListeningDelegate;

    iget-object v0, p0, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;->signedUrlsRefreshedNotificationListener:Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator$SignedUrlsRefreshedNotificationListener;

    const-string v1, "netword_send_notification_signed_url_refreshed"

    invoke-interface {p1, v1, v0}, Lio/olvid/engine/metamanager/NotificationListeningDelegate;->addListener(Ljava/lang/String;Lio/olvid/engine/datatypes/NotificationListener;)J

    return-void
.end method
