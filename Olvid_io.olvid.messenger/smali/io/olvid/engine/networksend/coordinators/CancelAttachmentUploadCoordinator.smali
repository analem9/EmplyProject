.class public Lio/olvid/engine/networksend/coordinators/CancelAttachmentUploadCoordinator;
.super Ljava/lang/Object;
.source "CancelAttachmentUploadCoordinator.java"

# interfaces
.implements Lio/olvid/engine/networksend/databases/OutboxAttachment$OutboxAttachmentCancelRequestedListener;
.implements Lio/olvid/engine/datatypes/Operation$OnCancelCallback;
.implements Lio/olvid/engine/datatypes/Operation$OnFinishCallback;


# instance fields
.field private final cancelAttachmentUploadOperationQueue:Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;

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

.field private initialQueueingPerformed:Z

.field private final lock:Ljava/lang/Object;

.field private final scheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private final sendManagerSessionFactory:Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;


# direct methods
.method public constructor <init>(Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lio/olvid/engine/networksend/coordinators/CancelAttachmentUploadCoordinator;->initialQueueingPerformed:Z

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/olvid/engine/networksend/coordinators/CancelAttachmentUploadCoordinator;->lock:Ljava/lang/Object;

    .line 34
    iput-object p1, p0, Lio/olvid/engine/networksend/coordinators/CancelAttachmentUploadCoordinator;->sendManagerSessionFactory:Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;

    .line 36
    new-instance p1, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;

    invoke-direct {p1}, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;-><init>()V

    iput-object p1, p0, Lio/olvid/engine/networksend/coordinators/CancelAttachmentUploadCoordinator;->cancelAttachmentUploadOperationQueue:Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;

    .line 37
    iget-object p1, p0, Lio/olvid/engine/networksend/coordinators/CancelAttachmentUploadCoordinator;->cancelAttachmentUploadOperationQueue:Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;->execute(I)V

    .line 39
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/networksend/coordinators/CancelAttachmentUploadCoordinator;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 41
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/olvid/engine/networksend/coordinators/CancelAttachmentUploadCoordinator;->failedAttemptCounts:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lio/olvid/engine/networksend/coordinators/CancelAttachmentUploadCoordinator;Lio/olvid/engine/datatypes/UID;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lio/olvid/engine/networksend/coordinators/CancelAttachmentUploadCoordinator;->queueNewCancelAttachmentUploadCompositeOperation(Lio/olvid/engine/datatypes/UID;I)V

    return-void
.end method

.method private queueNewCancelAttachmentUploadCompositeOperation(Lio/olvid/engine/datatypes/UID;I)V
    .locals 7

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Queueing new CancelAttachmentUploadCompositeOperation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    .line 64
    new-instance v0, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadCompositeOperation;

    iget-object v2, p0, Lio/olvid/engine/networksend/coordinators/CancelAttachmentUploadCoordinator;->sendManagerSessionFactory:Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;

    move-object v1, v0

    move-object v3, p1

    move v4, p2

    move-object v5, p0

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadCompositeOperation;-><init>(Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;Lio/olvid/engine/datatypes/UID;ILio/olvid/engine/datatypes/Operation$OnFinishCallback;Lio/olvid/engine/datatypes/Operation$OnCancelCallback;)V

    .line 65
    iget-object p1, p0, Lio/olvid/engine/networksend/coordinators/CancelAttachmentUploadCoordinator;->cancelAttachmentUploadOperationQueue:Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;

    invoke-virtual {p1, v0}, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;->queue(Lio/olvid/engine/datatypes/Operation;)V

    return-void
.end method

.method private scheduleNewCancelAttachmentUploadCompositeOperationQueueing(Lio/olvid/engine/datatypes/UID;I)V
    .locals 4

    .line 69
    new-instance v0, Lio/olvid/engine/datatypes/containers/UidAndNumber;

    invoke-direct {v0, p1, p2}, Lio/olvid/engine/datatypes/containers/UidAndNumber;-><init>(Lio/olvid/engine/datatypes/UID;I)V

    .line 70
    iget-object v1, p0, Lio/olvid/engine/networksend/coordinators/CancelAttachmentUploadCoordinator;->failedAttemptCounts:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 72
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 76
    :goto_0
    iget-object v2, p0, Lio/olvid/engine/networksend/coordinators/CancelAttachmentUploadCoordinator;->failedAttemptCounts:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/olvid/engine/datatypes/Constants;->computeReschedulingDelay(I)J

    move-result-wide v0

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheduling a CancelAttachmentUploadCompositeOperation for "

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

    .line 79
    iget-object v2, p0, Lio/olvid/engine/networksend/coordinators/CancelAttachmentUploadCoordinator;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lio/olvid/engine/networksend/coordinators/CancelAttachmentUploadCoordinator$1;

    invoke-direct {v3, p0, p1, p2}, Lio/olvid/engine/networksend/coordinators/CancelAttachmentUploadCoordinator$1;-><init>(Lio/olvid/engine/networksend/coordinators/CancelAttachmentUploadCoordinator;Lio/olvid/engine/datatypes/UID;I)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v0, v1, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public initialQueueing()V
    .locals 7

    .line 46
    iget-object v0, p0, Lio/olvid/engine/networksend/coordinators/CancelAttachmentUploadCoordinator;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 47
    :try_start_0
    iget-boolean v1, p0, Lio/olvid/engine/networksend/coordinators/CancelAttachmentUploadCoordinator;->initialQueueingPerformed:Z

    if-eqz v1, :cond_0

    .line 48
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    return-void

    .line 50
    :cond_0
    :try_start_1
    iget-object v1, p0, Lio/olvid/engine/networksend/coordinators/CancelAttachmentUploadCoordinator;->sendManagerSessionFactory:Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;

    invoke-interface {v1}, Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;->getSession()Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    move-result-object v1
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 51
    :try_start_2
    invoke-static {v1}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->getAllToCancel(Lio/olvid/engine/networksend/datatypes/SendManagerSession;)[Lio/olvid/engine/networksend/databases/OutboxAttachment;

    move-result-object v2

    .line 52
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 53
    invoke-virtual {v5}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->getMessageUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v6

    invoke-virtual {v5}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->getAttachmentNumber()I

    move-result v5

    invoke-direct {p0, v6, v5}, Lio/olvid/engine/networksend/coordinators/CancelAttachmentUploadCoordinator;->queueNewCancelAttachmentUploadCompositeOperation(Lio/olvid/engine/datatypes/UID;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    .line 55
    iput-boolean v2, p0, Lio/olvid/engine/networksend/coordinators/CancelAttachmentUploadCoordinator;->initialQueueingPerformed:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_3

    .line 56
    :try_start_3
    invoke-virtual {v1}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    :catchall_0
    move-exception v2

    .line 50
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v3

    if-eqz v1, :cond_2

    .line 56
    :try_start_5
    invoke-virtual {v1}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
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
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catch_0
    move-exception v1

    .line 57
    :try_start_7
    invoke-virtual {v1}, Ljava/sql/SQLException;->printStackTrace()V

    .line 59
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

.method public onCancelCallback(Lio/olvid/engine/datatypes/Operation;)V
    .locals 4

    .line 86
    move-object v0, p1

    check-cast v0, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadCompositeOperation;

    invoke-virtual {v0}, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadCompositeOperation;->getMessageUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    .line 87
    invoke-virtual {v0}, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadCompositeOperation;->getAttachmentNumber()I

    move-result v0

    .line 88
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Operation;->getReasonForCancel()Ljava/lang/Integer;

    move-result-object p1

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UploadAttachmentCompositeOperation cancelled for reason "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 91
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 93
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    .line 97
    invoke-direct {p0, v1, v0}, Lio/olvid/engine/networksend/coordinators/CancelAttachmentUploadCoordinator;->scheduleNewCancelAttachmentUploadCompositeOperationQueueing(Lio/olvid/engine/datatypes/UID;I)V

    :cond_1
    return-void
.end method

.method public onFinishCallback(Lio/olvid/engine/datatypes/Operation;)V
    .locals 2

    .line 103
    check-cast p1, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadCompositeOperation;

    invoke-virtual {p1}, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadCompositeOperation;->getMessageUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v0

    .line 104
    invoke-virtual {p1}, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadCompositeOperation;->getAttachmentNumber()I

    move-result p1

    .line 106
    new-instance v1, Lio/olvid/engine/datatypes/containers/UidAndNumber;

    invoke-direct {v1, v0, p1}, Lio/olvid/engine/datatypes/containers/UidAndNumber;-><init>(Lio/olvid/engine/datatypes/UID;I)V

    .line 107
    iget-object p1, p0, Lio/olvid/engine/networksend/coordinators/CancelAttachmentUploadCoordinator;->failedAttemptCounts:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public outboxAttachmentCancelRequested(Lio/olvid/engine/datatypes/UID;I)V
    .locals 0

    .line 114
    invoke-direct {p0, p1, p2}, Lio/olvid/engine/networksend/coordinators/CancelAttachmentUploadCoordinator;->queueNewCancelAttachmentUploadCompositeOperation(Lio/olvid/engine/datatypes/UID;I)V

    return-void
.end method
