.class public Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;
.super Ljava/lang/Object;
.source "DownloadAttachmentCoordinator.java"

# interfaces
.implements Lio/olvid/engine/networkfetch/databases/InboxAttachment$InboxAttachmentListener;
.implements Lio/olvid/engine/datatypes/Operation$OnCancelCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator$AttachmentPriorityInfo;,
        Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator$SignedUrlsRefreshedNotificationListener;
    }
.end annotation


# instance fields
.field private final awaitingRefreshedUrlsLock:Ljava/util/concurrent/locks/Lock;

.field private final awaitingRefreshedUrlsOperations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lio/olvid/engine/datatypes/containers/UidAndNumber;",
            "Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator$AttachmentPriorityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final downloadAttachmentOperationTimestampQueue:Lio/olvid/engine/datatypes/PriorityOperationQueue;

.field private final downloadAttachmentOperationWeightQueue:Lio/olvid/engine/datatypes/PriorityOperationQueue;

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

.field private final fetchManagerSessionFactory:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;

.field private notificationListeningDelegate:Lio/olvid/engine/metamanager/NotificationListeningDelegate;

.field private notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

.field private final refreshInboxAttachmentSignedUrlDelegate:Lio/olvid/engine/networkfetch/datatypes/RefreshInboxAttachmentSignedUrlDelegate;

.field private final scheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private final signedUrlsRefreshedNotificationListener:Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator$SignedUrlsRefreshedNotificationListener;


# direct methods
.method public constructor <init>(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;Lio/olvid/engine/networkfetch/datatypes/RefreshInboxAttachmentSignedUrlDelegate;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;->fetchManagerSessionFactory:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;

    .line 60
    iput-object p2, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;->refreshInboxAttachmentSignedUrlDelegate:Lio/olvid/engine/networkfetch/datatypes/RefreshInboxAttachmentSignedUrlDelegate;

    .line 62
    new-instance p1, Lio/olvid/engine/datatypes/PriorityOperationQueue;

    invoke-direct {p1}, Lio/olvid/engine/datatypes/PriorityOperationQueue;-><init>()V

    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;->downloadAttachmentOperationWeightQueue:Lio/olvid/engine/datatypes/PriorityOperationQueue;

    .line 63
    iget-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;->downloadAttachmentOperationWeightQueue:Lio/olvid/engine/datatypes/PriorityOperationQueue;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lio/olvid/engine/datatypes/PriorityOperationQueue;->execute(I)V

    .line 65
    new-instance p1, Lio/olvid/engine/datatypes/PriorityOperationQueue;

    invoke-direct {p1}, Lio/olvid/engine/datatypes/PriorityOperationQueue;-><init>()V

    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;->downloadAttachmentOperationTimestampQueue:Lio/olvid/engine/datatypes/PriorityOperationQueue;

    .line 66
    iget-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;->downloadAttachmentOperationTimestampQueue:Lio/olvid/engine/datatypes/PriorityOperationQueue;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lio/olvid/engine/datatypes/PriorityOperationQueue;->execute(I)V

    const/4 p1, 0x1

    .line 68
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 71
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;->failedAttemptCounts:Ljava/util/HashMap;

    .line 73
    new-instance p1, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator$SignedUrlsRefreshedNotificationListener;

    invoke-direct {p1, p0}, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator$SignedUrlsRefreshedNotificationListener;-><init>(Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;)V

    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;->signedUrlsRefreshedNotificationListener:Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator$SignedUrlsRefreshedNotificationListener;

    .line 74
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;->awaitingRefreshedUrlsOperations:Ljava/util/HashMap;

    .line 75
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;->awaitingRefreshedUrlsLock:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method static synthetic access$000(Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;Lio/olvid/engine/datatypes/UID;IIJ)V
    .locals 0

    .line 33
    invoke-direct/range {p0 .. p5}, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;->queueNewDownloadAttachmentOperation(Lio/olvid/engine/datatypes/UID;IIJ)V

    return-void
.end method

.method static synthetic access$100(Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;)Ljava/util/concurrent/locks/Lock;
    .locals 0

    .line 33
    iget-object p0, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;->awaitingRefreshedUrlsLock:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method

.method static synthetic access$200(Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;)Ljava/util/HashMap;
    .locals 0

    .line 33
    iget-object p0, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;->awaitingRefreshedUrlsOperations:Ljava/util/HashMap;

    return-object p0
.end method

.method private queueNewDownloadAttachmentOperation(Lio/olvid/engine/datatypes/UID;IIJ)V
    .locals 13

    move-object v10, p0

    move/from16 v11, p3

    const-string v0, "Download attachment coordinator queueing new DownloadAttachmentOperation."

    .line 105
    invoke-static {v0}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    .line 106
    new-instance v12, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;

    iget-object v1, v10, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;->fetchManagerSessionFactory:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;

    const/4 v8, 0x0

    move-object v0, v12

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move-wide/from16 v5, p4

    move-object v7, p0

    move-object v9, p0

    invoke-direct/range {v0 .. v9}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;-><init>(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;Lio/olvid/engine/datatypes/UID;IIJLio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;Lio/olvid/engine/datatypes/Operation$OnFinishCallback;Lio/olvid/engine/datatypes/Operation$OnCancelCallback;)V

    const/16 v0, 0x8

    const-string v1, "Canceling a DownloadAttachmentOperation with lower priority "

    if-eqz v11, :cond_1

    const/4 v2, 0x1

    if-eq v11, v2, :cond_0

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to queue a DownloadAttachmentOperation with unknown priorityCategory "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_0
    iget-object v2, v10, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;->downloadAttachmentOperationTimestampQueue:Lio/olvid/engine/datatypes/PriorityOperationQueue;

    invoke-virtual {v2, v12}, Lio/olvid/engine/datatypes/PriorityOperationQueue;->queue(Lio/olvid/engine/datatypes/PriorityOperation;)V

    .line 118
    iget-object v2, v10, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;->downloadAttachmentOperationTimestampQueue:Lio/olvid/engine/datatypes/PriorityOperationQueue;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/PriorityOperationQueue;->getExecutingOperationThatShouldBeCancelledWhenQueueingWithHigherPriority()Lio/olvid/engine/datatypes/PriorityOperation;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 119
    invoke-virtual {v2}, Lio/olvid/engine/datatypes/PriorityOperation;->getPriority()J

    move-result-wide v3

    cmp-long v5, v3, p4

    if-lez v5, :cond_2

    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/PriorityOperation;->getPriority()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    .line 121
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/olvid/engine/datatypes/PriorityOperation;->cancel(Ljava/lang/Integer;)V

    goto :goto_0

    .line 109
    :cond_1
    iget-object v2, v10, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;->downloadAttachmentOperationWeightQueue:Lio/olvid/engine/datatypes/PriorityOperationQueue;

    invoke-virtual {v2, v12}, Lio/olvid/engine/datatypes/PriorityOperationQueue;->queue(Lio/olvid/engine/datatypes/PriorityOperation;)V

    .line 110
    iget-object v2, v10, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;->downloadAttachmentOperationWeightQueue:Lio/olvid/engine/datatypes/PriorityOperationQueue;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/PriorityOperationQueue;->getExecutingOperationThatShouldBeCancelledWhenQueueingWithHigherPriority()Lio/olvid/engine/datatypes/PriorityOperation;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 111
    invoke-virtual {v2}, Lio/olvid/engine/datatypes/PriorityOperation;->getPriority()J

    move-result-wide v3

    cmp-long v5, v3, p4

    if-lez v5, :cond_2

    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/PriorityOperation;->getPriority()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    .line 113
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/olvid/engine/datatypes/PriorityOperation;->cancel(Ljava/lang/Integer;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private scheduleNewDownloadAttachmentOperationQueueing(Lio/olvid/engine/datatypes/UID;IIJ)V
    .locals 12

    move-object v7, p0

    move-object v2, p1

    move v3, p2

    .line 130
    new-instance v0, Lio/olvid/engine/datatypes/containers/UidAndNumber;

    invoke-direct {v0, p1, p2}, Lio/olvid/engine/datatypes/containers/UidAndNumber;-><init>(Lio/olvid/engine/datatypes/UID;I)V

    .line 131
    iget-object v1, v7, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;->failedAttemptCounts:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v4, 0x1

    if-nez v1, :cond_0

    .line 133
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 137
    :goto_0
    iget-object v4, v7, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;->failedAttemptCounts:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/olvid/engine/datatypes/Constants;->computeReschedulingDelay(I)J

    move-result-wide v8

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scheduling a DownloadAttachmentOperation for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/olvid/engine/Logger;->i(Ljava/lang/String;)V

    .line 140
    iget-object v10, v7, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v11, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator$1;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide/from16 v5, p4

    invoke-direct/range {v0 .. v6}, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator$1;-><init>(Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;Lio/olvid/engine/datatypes/UID;IIJ)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v10, v11, v8, v9, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private waitForRefreshedUrls(Lio/olvid/engine/datatypes/UID;IIJ)V
    .locals 10

    .line 144
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;->awaitingRefreshedUrlsLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 145
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;->awaitingRefreshedUrlsOperations:Ljava/util/HashMap;

    new-instance v1, Lio/olvid/engine/datatypes/containers/UidAndNumber;

    invoke-direct {v1, p1, p2}, Lio/olvid/engine/datatypes/containers/UidAndNumber;-><init>(Lio/olvid/engine/datatypes/UID;I)V

    new-instance v9, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator$AttachmentPriorityInfo;

    move-object v2, v9

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-wide v7, p4

    invoke-direct/range {v2 .. v8}, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator$AttachmentPriorityInfo;-><init>(Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;Lio/olvid/engine/datatypes/UID;IIJ)V

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;->awaitingRefreshedUrlsLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method


# virtual methods
.method public attachmentDownloadFinished(Lio/olvid/engine/datatypes/UID;I)V
    .locals 2

    .line 305
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "messageUid"

    .line 306
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "attachmentNumber"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    iget-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    const-string p2, "network_fetch_notification_attachment_download_finished"

    invoke-interface {p1, p2, v0}, Lio/olvid/engine/metamanager/NotificationPostingDelegate;->postNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public attachmentDownloadProgressed(Lio/olvid/engine/datatypes/UID;IF)V
    .locals 2

    .line 294
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "messageUid"

    .line 295
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "attachmentNumber"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string p2, "progress"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    iget-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    const-string p2, "network_fetch_notification_attachment_download_progress"

    invoke-interface {p1, p2, v0}, Lio/olvid/engine/metamanager/NotificationPostingDelegate;->postNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public attachmentDownloadWasRequested(Lio/olvid/engine/datatypes/UID;IIJ)V
    .locals 0

    .line 313
    invoke-direct/range {p0 .. p5}, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;->queueNewDownloadAttachmentOperation(Lio/olvid/engine/datatypes/UID;IIJ)V

    return-void
.end method

.method public initialQueueing()V
    .locals 11

    .line 89
    :try_start_0
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;->fetchManagerSessionFactory:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;

    invoke-interface {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;->getSession()Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :try_start_1
    invoke-static {v0}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->getAllAttachmentsToResume(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;)[Lio/olvid/engine/networkfetch/databases/InboxAttachment;

    move-result-object v1

    .line 92
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 93
    invoke-virtual {v4}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->getMessageUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v6

    invoke-virtual {v4}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->getAttachmentNumber()I

    move-result v7

    invoke-virtual {v4}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->getPriorityCategory()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v4}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->getPriority()J

    move-result-wide v9

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;->queueNewDownloadAttachmentOperation(Lio/olvid/engine/datatypes/UID;IIJ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 98
    :cond_0
    iget-object v1, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Session;->commit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 99
    :try_start_2
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 89
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    .line 99
    :try_start_4
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v2
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    .line 100
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method

.method public onCancelCallback(Lio/olvid/engine/datatypes/Operation;)V
    .locals 11

    .line 155
    move-object v0, p1

    check-cast v0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;

    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->getMessageUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v7

    .line 156
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->getAttachmentNumber()I

    move-result v8

    .line 157
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->getPriorityCategory()I

    move-result v4

    .line 158
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->getPriority()J

    move-result-wide v5

    .line 159
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentOperation;->getToIdentity()Lio/olvid/engine/datatypes/Identity;

    .line 160
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Operation;->getReasonForCancel()Ljava/lang/Integer;

    move-result-object p1

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadAttachmentOperation cancelled for reason "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/olvid/engine/Logger;->i(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 163
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 165
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v0, "network_fetch_notification_attachment_download_was_paused"

    const-string v9, "attachmentNumber"

    const-string v10, "messageUid"

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move-object v1, p0

    move-object v2, v7

    move v3, v8

    .line 212
    invoke-direct/range {v1 .. v6}, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;->scheduleNewDownloadAttachmentOperationQueueing(Lio/olvid/engine/datatypes/UID;IIJ)V

    goto/16 :goto_2

    .line 204
    :pswitch_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 205
    invoke-virtual {p1, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object v1, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    invoke-interface {v1, v0, p1}, Lio/olvid/engine/metamanager/NotificationPostingDelegate;->postNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_2

    :pswitch_2
    move-object v1, p0

    move-object v2, v7

    move v3, v8

    .line 191
    invoke-direct/range {v1 .. v6}, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;->queueNewDownloadAttachmentOperation(Lio/olvid/engine/datatypes/UID;IIJ)V

    .line 193
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 194
    invoke-virtual {p1, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v1, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    invoke-interface {v1, v0, p1}, Lio/olvid/engine/metamanager/NotificationPostingDelegate;->postNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_2

    .line 172
    :pswitch_3
    :try_start_0
    iget-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;->fetchManagerSessionFactory:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;

    invoke-interface {p1}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;->getSession()Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :try_start_1
    iget-object v0, p1, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Session;->startTransaction()V

    .line 174
    invoke-static {p1, v7, v8}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->get(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Lio/olvid/engine/datatypes/UID;I)Lio/olvid/engine/networkfetch/databases/InboxAttachment;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->markForDeletion()V

    .line 176
    iget-object v0, p1, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Session;->commit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    .line 177
    :try_start_2
    invoke-virtual {p1}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 172
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p1, :cond_1

    .line 177
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

    .line 178
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    .line 180
    :cond_2
    :goto_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 181
    invoke-virtual {p1, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    const-string v1, "network_fetch_notification_attachment_download_failed"

    invoke-interface {v0, v1, p1}, Lio/olvid/engine/metamanager/NotificationPostingDelegate;->postNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_2

    :pswitch_4
    move-object v1, p0

    move-object v2, v7

    move v3, v8

    .line 199
    invoke-direct/range {v1 .. v6}, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;->waitForRefreshedUrls(Lio/olvid/engine/datatypes/UID;IIJ)V

    .line 200
    iget-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;->refreshInboxAttachmentSignedUrlDelegate:Lio/olvid/engine/networkfetch/datatypes/RefreshInboxAttachmentSignedUrlDelegate;

    invoke-interface {p1, v7, v8}, Lio/olvid/engine/networkfetch/datatypes/RefreshInboxAttachmentSignedUrlDelegate;->refreshInboxAttachmentSignedUrl(Lio/olvid/engine/datatypes/UID;I)V

    :goto_2
    :pswitch_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public resetFailedAttemptCount(Lio/olvid/engine/datatypes/UID;I)V
    .locals 2

    .line 150
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;->failedAttemptCounts:Ljava/util/HashMap;

    new-instance v1, Lio/olvid/engine/datatypes/containers/UidAndNumber;

    invoke-direct {v1, p1, p2}, Lio/olvid/engine/datatypes/containers/UidAndNumber;-><init>(Lio/olvid/engine/datatypes/UID;I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setNotificationListeningDelegate(Lio/olvid/engine/metamanager/NotificationListeningDelegate;)V
    .locals 2

    .line 79
    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;->notificationListeningDelegate:Lio/olvid/engine/metamanager/NotificationListeningDelegate;

    .line 81
    iget-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;->notificationListeningDelegate:Lio/olvid/engine/metamanager/NotificationListeningDelegate;

    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;->signedUrlsRefreshedNotificationListener:Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator$SignedUrlsRefreshedNotificationListener;

    const-string v1, "netword_fetch_notification_signed_url_refreshed"

    invoke-interface {p1, v1, v0}, Lio/olvid/engine/metamanager/NotificationListeningDelegate;->addListener(Ljava/lang/String;Lio/olvid/engine/datatypes/NotificationListener;)J

    return-void
.end method

.method public setNotificationPostingDelegate(Lio/olvid/engine/metamanager/NotificationPostingDelegate;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/DownloadAttachmentCoordinator;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    return-void
.end method
