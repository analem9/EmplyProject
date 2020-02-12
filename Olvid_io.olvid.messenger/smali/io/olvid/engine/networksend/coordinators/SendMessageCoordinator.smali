.class public Lio/olvid/engine/networksend/coordinators/SendMessageCoordinator;
.super Ljava/lang/Object;
.source "SendMessageCoordinator.java"

# interfaces
.implements Lio/olvid/engine/networksend/databases/OutboxMessage$NewOutboxMessageListener;
.implements Lio/olvid/engine/datatypes/Operation$OnCancelCallback;
.implements Lio/olvid/engine/datatypes/Operation$OnFinishCallback;


# instance fields
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

.field private initialQueueingPerformed:Z

.field private final lock:Ljava/lang/Object;

.field private final scheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private final sendManagerSessionFactory:Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;

.field private final sendMessageOperationQueue:Lio/olvid/engine/datatypes/OperationQueue;


# direct methods
.method public constructor <init>(Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lio/olvid/engine/networksend/coordinators/SendMessageCoordinator;->initialQueueingPerformed:Z

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/olvid/engine/networksend/coordinators/SendMessageCoordinator;->lock:Ljava/lang/Object;

    .line 32
    iput-object p1, p0, Lio/olvid/engine/networksend/coordinators/SendMessageCoordinator;->sendManagerSessionFactory:Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;

    .line 34
    new-instance p1, Lio/olvid/engine/datatypes/OperationQueue;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lio/olvid/engine/datatypes/OperationQueue;-><init>(Z)V

    iput-object p1, p0, Lio/olvid/engine/networksend/coordinators/SendMessageCoordinator;->sendMessageOperationQueue:Lio/olvid/engine/datatypes/OperationQueue;

    .line 35
    iget-object p1, p0, Lio/olvid/engine/networksend/coordinators/SendMessageCoordinator;->sendMessageOperationQueue:Lio/olvid/engine/datatypes/OperationQueue;

    invoke-virtual {p1, v0}, Lio/olvid/engine/datatypes/OperationQueue;->execute(I)V

    .line 37
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/networksend/coordinators/SendMessageCoordinator;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 39
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/olvid/engine/networksend/coordinators/SendMessageCoordinator;->failedAttemptCounts:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lio/olvid/engine/networksend/coordinators/SendMessageCoordinator;Lio/olvid/engine/datatypes/UID;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lio/olvid/engine/networksend/coordinators/SendMessageCoordinator;->queueNewSendMessageCompositeOperation(Lio/olvid/engine/datatypes/UID;)V

    return-void
.end method

.method private queueNewSendMessageCompositeOperation(Lio/olvid/engine/datatypes/UID;)V
    .locals 2

    .line 60
    new-instance v0, Lio/olvid/engine/networksend/operations/UploadMessageCompositeOperation;

    iget-object v1, p0, Lio/olvid/engine/networksend/coordinators/SendMessageCoordinator;->sendManagerSessionFactory:Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;

    invoke-direct {v0, v1, p1, p0, p0}, Lio/olvid/engine/networksend/operations/UploadMessageCompositeOperation;-><init>(Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Operation$OnFinishCallback;Lio/olvid/engine/datatypes/Operation$OnCancelCallback;)V

    .line 61
    iget-object p1, p0, Lio/olvid/engine/networksend/coordinators/SendMessageCoordinator;->sendMessageOperationQueue:Lio/olvid/engine/datatypes/OperationQueue;

    invoke-virtual {p1, v0}, Lio/olvid/engine/datatypes/OperationQueue;->queue(Lio/olvid/engine/datatypes/Operation;)V

    return-void
.end method

.method private scheduleNewSendMessageCompositeOperationQueueing(Lio/olvid/engine/datatypes/UID;)V
    .locals 4

    .line 65
    iget-object v0, p0, Lio/olvid/engine/networksend/coordinators/SendMessageCoordinator;->failedAttemptCounts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 71
    :goto_0
    iget-object v1, p0, Lio/olvid/engine/networksend/coordinators/SendMessageCoordinator;->failedAttemptCounts:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/olvid/engine/datatypes/Constants;->computeReschedulingDelay(I)J

    move-result-wide v0

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheduling a UploadMessageCompositeOperation for "

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

    .line 74
    iget-object v2, p0, Lio/olvid/engine/networksend/coordinators/SendMessageCoordinator;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lio/olvid/engine/networksend/coordinators/SendMessageCoordinator$1;

    invoke-direct {v3, p0, p1}, Lio/olvid/engine/networksend/coordinators/SendMessageCoordinator$1;-><init>(Lio/olvid/engine/networksend/coordinators/SendMessageCoordinator;Lio/olvid/engine/datatypes/UID;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v0, v1, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public initialQueueing()V
    .locals 6

    .line 43
    iget-object v0, p0, Lio/olvid/engine/networksend/coordinators/SendMessageCoordinator;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 44
    :try_start_0
    iget-boolean v1, p0, Lio/olvid/engine/networksend/coordinators/SendMessageCoordinator;->initialQueueingPerformed:Z

    if-eqz v1, :cond_0

    .line 45
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    return-void

    .line 47
    :cond_0
    :try_start_1
    iget-object v1, p0, Lio/olvid/engine/networksend/coordinators/SendMessageCoordinator;->sendManagerSessionFactory:Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;

    invoke-interface {v1}, Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;->getSession()Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    move-result-object v1
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 48
    :try_start_2
    invoke-static {v1}, Lio/olvid/engine/networksend/databases/OutboxMessage;->getAll(Lio/olvid/engine/networksend/datatypes/SendManagerSession;)[Lio/olvid/engine/networksend/databases/OutboxMessage;

    move-result-object v2

    .line 49
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 50
    invoke-virtual {v5}, Lio/olvid/engine/networksend/databases/OutboxMessage;->getUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v5

    invoke-direct {p0, v5}, Lio/olvid/engine/networksend/coordinators/SendMessageCoordinator;->queueNewSendMessageCompositeOperation(Lio/olvid/engine/datatypes/UID;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    .line 52
    iput-boolean v2, p0, Lio/olvid/engine/networksend/coordinators/SendMessageCoordinator;->initialQueueingPerformed:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_3

    .line 53
    :try_start_3
    invoke-virtual {v1}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    :catchall_0
    move-exception v2

    .line 47
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v3

    if-eqz v1, :cond_2

    .line 53
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

    .line 54
    :try_start_7
    invoke-virtual {v1}, Ljava/sql/SQLException;->printStackTrace()V

    .line 56
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

.method public newMessageToSend(Lio/olvid/engine/datatypes/UID;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lio/olvid/engine/networksend/coordinators/SendMessageCoordinator;->queueNewSendMessageCompositeOperation(Lio/olvid/engine/datatypes/UID;)V

    return-void
.end method

.method public onCancelCallback(Lio/olvid/engine/datatypes/Operation;)V
    .locals 3

    .line 86
    move-object v0, p1

    check-cast v0, Lio/olvid/engine/networksend/operations/UploadMessageCompositeOperation;

    invoke-virtual {v0}, Lio/olvid/engine/networksend/operations/UploadMessageCompositeOperation;->getMessageUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v0

    .line 87
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Operation;->getReasonForCancel()Ljava/lang/Integer;

    move-result-object p1

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UploadMessageCompositeOperation cancelled for reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/olvid/engine/Logger;->i(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 90
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 92
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    .line 100
    invoke-direct {p0, v0}, Lio/olvid/engine/networksend/coordinators/SendMessageCoordinator;->scheduleNewSendMessageCompositeOperationQueueing(Lio/olvid/engine/datatypes/UID;)V

    goto :goto_0

    .line 97
    :cond_1
    invoke-direct {p0, v0}, Lio/olvid/engine/networksend/coordinators/SendMessageCoordinator;->scheduleNewSendMessageCompositeOperationQueueing(Lio/olvid/engine/datatypes/UID;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onFinishCallback(Lio/olvid/engine/datatypes/Operation;)V
    .locals 1

    .line 79
    check-cast p1, Lio/olvid/engine/networksend/operations/UploadMessageCompositeOperation;

    invoke-virtual {p1}, Lio/olvid/engine/networksend/operations/UploadMessageCompositeOperation;->getMessageUid()Lio/olvid/engine/datatypes/UID;

    move-result-object p1

    .line 80
    iget-object v0, p0, Lio/olvid/engine/networksend/coordinators/SendMessageCoordinator;->failedAttemptCounts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
