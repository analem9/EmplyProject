.class public Lio/olvid/engine/networksend/coordinators/RefreshOutboxAttachmentSignedUrlCoordinator;
.super Ljava/lang/Object;
.source "RefreshOutboxAttachmentSignedUrlCoordinator.java"

# interfaces
.implements Lio/olvid/engine/datatypes/Operation$OnFinishCallback;
.implements Lio/olvid/engine/datatypes/Operation$OnCancelCallback;
.implements Lio/olvid/engine/networksend/datatypes/RefreshOutboxAttachmentSignedUrlDelegate;


# instance fields
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

.field private notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

.field private final refreshOutboxAttachmentSignedUrlOperationQueue:Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;

.field private final scheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private final sendManagerSessionFactory:Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;


# direct methods
.method public constructor <init>(Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lio/olvid/engine/networksend/coordinators/RefreshOutboxAttachmentSignedUrlCoordinator;->sendManagerSessionFactory:Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;

    .line 37
    new-instance p1, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;

    invoke-direct {p1}, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;-><init>()V

    iput-object p1, p0, Lio/olvid/engine/networksend/coordinators/RefreshOutboxAttachmentSignedUrlCoordinator;->refreshOutboxAttachmentSignedUrlOperationQueue:Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;

    .line 38
    iget-object p1, p0, Lio/olvid/engine/networksend/coordinators/RefreshOutboxAttachmentSignedUrlCoordinator;->refreshOutboxAttachmentSignedUrlOperationQueue:Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;->execute(I)V

    .line 40
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/olvid/engine/networksend/coordinators/RefreshOutboxAttachmentSignedUrlCoordinator;->failedAttemptCounts:Ljava/util/HashMap;

    .line 42
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/networksend/coordinators/RefreshOutboxAttachmentSignedUrlCoordinator;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method static synthetic access$000(Lio/olvid/engine/networksend/coordinators/RefreshOutboxAttachmentSignedUrlCoordinator;Lio/olvid/engine/datatypes/UID;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lio/olvid/engine/networksend/coordinators/RefreshOutboxAttachmentSignedUrlCoordinator;->queueNewRefreshOutboxAttachmentSignedUrlOperation(Lio/olvid/engine/datatypes/UID;I)V

    return-void
.end method

.method private queueNewRefreshOutboxAttachmentSignedUrlOperation(Lio/olvid/engine/datatypes/UID;I)V
    .locals 7

    .line 50
    new-instance v6, Lio/olvid/engine/networksend/operations/RefreshOutboxAttachmentSignedUrlOperation;

    iget-object v1, p0, Lio/olvid/engine/networksend/coordinators/RefreshOutboxAttachmentSignedUrlCoordinator;->sendManagerSessionFactory:Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;

    move-object v0, v6

    move-object v2, p1

    move v3, p2

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lio/olvid/engine/networksend/operations/RefreshOutboxAttachmentSignedUrlOperation;-><init>(Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;Lio/olvid/engine/datatypes/UID;ILio/olvid/engine/datatypes/Operation$OnFinishCallback;Lio/olvid/engine/datatypes/Operation$OnCancelCallback;)V

    .line 51
    iget-object p1, p0, Lio/olvid/engine/networksend/coordinators/RefreshOutboxAttachmentSignedUrlCoordinator;->refreshOutboxAttachmentSignedUrlOperationQueue:Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;

    invoke-virtual {p1, v6}, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;->queue(Lio/olvid/engine/datatypes/Operation;)V

    return-void
.end method

.method private scheduleNewRefreshOutboxAttachmentSignedUrlOperationQueueing(Lio/olvid/engine/datatypes/UID;I)V
    .locals 4

    .line 55
    iget-object v0, p0, Lio/olvid/engine/networksend/coordinators/RefreshOutboxAttachmentSignedUrlCoordinator;->failedAttemptCounts:Ljava/util/HashMap;

    new-instance v1, Lio/olvid/engine/datatypes/containers/UidAndNumber;

    invoke-direct {v1, p1, p2}, Lio/olvid/engine/datatypes/containers/UidAndNumber;-><init>(Lio/olvid/engine/datatypes/UID;I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 61
    :goto_0
    iget-object v1, p0, Lio/olvid/engine/networksend/coordinators/RefreshOutboxAttachmentSignedUrlCoordinator;->failedAttemptCounts:Ljava/util/HashMap;

    new-instance v2, Lio/olvid/engine/datatypes/containers/UidAndNumber;

    invoke-direct {v2, p1, p2}, Lio/olvid/engine/datatypes/containers/UidAndNumber;-><init>(Lio/olvid/engine/datatypes/UID;I)V

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/olvid/engine/datatypes/Constants;->computeReschedulingDelay(I)J

    move-result-wide v0

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheduling a RefreshOutboxAttachmentSignedUrlOperation for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/UID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 64
    iget-object v2, p0, Lio/olvid/engine/networksend/coordinators/RefreshOutboxAttachmentSignedUrlCoordinator;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lio/olvid/engine/networksend/coordinators/RefreshOutboxAttachmentSignedUrlCoordinator$1;

    invoke-direct {v3, p0, p1, p2}, Lio/olvid/engine/networksend/coordinators/RefreshOutboxAttachmentSignedUrlCoordinator$1;-><init>(Lio/olvid/engine/networksend/coordinators/RefreshOutboxAttachmentSignedUrlCoordinator;Lio/olvid/engine/datatypes/UID;I)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v0, v1, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public onCancelCallback(Lio/olvid/engine/datatypes/Operation;)V
    .locals 4

    .line 81
    move-object v0, p1

    check-cast v0, Lio/olvid/engine/networksend/operations/RefreshOutboxAttachmentSignedUrlOperation;

    invoke-virtual {v0}, Lio/olvid/engine/networksend/operations/RefreshOutboxAttachmentSignedUrlOperation;->getMessageUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    .line 82
    invoke-virtual {v0}, Lio/olvid/engine/networksend/operations/RefreshOutboxAttachmentSignedUrlOperation;->getAttachmentNumber()I

    move-result v0

    .line 84
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Operation;->getReasonForCancel()Ljava/lang/Integer;

    move-result-object p1

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RefreshOutboxAttachmentSignedUrlOperation cancelled for reason "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/olvid/engine/Logger;->i(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 87
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 89
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    .line 106
    invoke-direct {p0, v1, v0}, Lio/olvid/engine/networksend/coordinators/RefreshOutboxAttachmentSignedUrlCoordinator;->scheduleNewRefreshOutboxAttachmentSignedUrlOperationQueueing(Lio/olvid/engine/datatypes/UID;I)V

    goto :goto_1

    .line 93
    :cond_1
    :try_start_0
    iget-object p1, p0, Lio/olvid/engine/networksend/coordinators/RefreshOutboxAttachmentSignedUrlCoordinator;->sendManagerSessionFactory:Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;

    invoke-interface {p1}, Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;->getSession()Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :try_start_1
    iget-object v2, p1, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Session;->startTransaction()V

    .line 95
    invoke-static {p1, v1, v0}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->get(Lio/olvid/engine/networksend/datatypes/SendManagerSession;Lio/olvid/engine/datatypes/UID;I)Lio/olvid/engine/networksend/databases/OutboxAttachment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 98
    invoke-virtual {v0}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->getNumberOfChunks()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->setAcknowledgedChunkCount(I)V

    .line 100
    :cond_2
    iget-object v0, p1, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Session;->commit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_4

    .line 101
    :try_start_2
    invoke-virtual {p1}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 93
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p1, :cond_3

    .line 101
    :try_start_4
    invoke-virtual {p1}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    :try_start_5
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v1
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    .line 102
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method

.method public onFinishCallback(Lio/olvid/engine/datatypes/Operation;)V
    .locals 3

    .line 70
    check-cast p1, Lio/olvid/engine/networksend/operations/RefreshOutboxAttachmentSignedUrlOperation;

    invoke-virtual {p1}, Lio/olvid/engine/networksend/operations/RefreshOutboxAttachmentSignedUrlOperation;->getMessageUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v0

    .line 71
    invoke-virtual {p1}, Lio/olvid/engine/networksend/operations/RefreshOutboxAttachmentSignedUrlOperation;->getAttachmentNumber()I

    move-result p1

    .line 72
    iget-object v1, p0, Lio/olvid/engine/networksend/coordinators/RefreshOutboxAttachmentSignedUrlCoordinator;->failedAttemptCounts:Ljava/util/HashMap;

    new-instance v2, Lio/olvid/engine/datatypes/containers/UidAndNumber;

    invoke-direct {v2, v0, p1}, Lio/olvid/engine/datatypes/containers/UidAndNumber;-><init>(Lio/olvid/engine/datatypes/UID;I)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "message_uid"

    .line 74
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "attachment_number"

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object p1, p0, Lio/olvid/engine/networksend/coordinators/RefreshOutboxAttachmentSignedUrlCoordinator;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    const-string v0, "netword_send_notification_signed_url_refreshed"

    invoke-interface {p1, v0, v1}, Lio/olvid/engine/metamanager/NotificationPostingDelegate;->postNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public refreshOutboxAttachmentSignedUrl(Lio/olvid/engine/datatypes/UID;I)V
    .locals 0

    .line 113
    invoke-direct {p0, p1, p2}, Lio/olvid/engine/networksend/coordinators/RefreshOutboxAttachmentSignedUrlCoordinator;->queueNewRefreshOutboxAttachmentSignedUrlOperation(Lio/olvid/engine/datatypes/UID;I)V

    return-void
.end method

.method public setNotificationPostingDelegate(Lio/olvid/engine/metamanager/NotificationPostingDelegate;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lio/olvid/engine/networksend/coordinators/RefreshOutboxAttachmentSignedUrlCoordinator;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    return-void
.end method
