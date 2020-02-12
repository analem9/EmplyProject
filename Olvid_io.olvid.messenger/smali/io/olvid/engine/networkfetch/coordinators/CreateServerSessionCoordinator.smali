.class public Lio/olvid/engine/networkfetch/coordinators/CreateServerSessionCoordinator;
.super Ljava/lang/Object;
.source "CreateServerSessionCoordinator.java"

# interfaces
.implements Lio/olvid/engine/datatypes/Operation$OnFinishCallback;
.implements Lio/olvid/engine/datatypes/Operation$OnCancelCallback;
.implements Lio/olvid/engine/networkfetch/datatypes/CreateServerSessionDelegate;


# instance fields
.field private final createServerSessionOperationQueue:Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;

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

.field private notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

.field private final scheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private solveChallengeDelegate:Lio/olvid/engine/metamanager/SolveChallengeDelegate;


# direct methods
.method public constructor <init>(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/CreateServerSessionCoordinator;->fetchManagerSessionFactory:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;

    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/CreateServerSessionCoordinator;->solveChallengeDelegate:Lio/olvid/engine/metamanager/SolveChallengeDelegate;

    .line 35
    new-instance p1, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;

    invoke-direct {p1}, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;-><init>()V

    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/CreateServerSessionCoordinator;->createServerSessionOperationQueue:Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;

    .line 36
    iget-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/CreateServerSessionCoordinator;->createServerSessionOperationQueue:Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;->execute(I)V

    .line 38
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/CreateServerSessionCoordinator;->failedAttemptCounts:Ljava/util/HashMap;

    .line 40
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/CreateServerSessionCoordinator;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method static synthetic access$000(Lio/olvid/engine/networkfetch/coordinators/CreateServerSessionCoordinator;Lio/olvid/engine/datatypes/Identity;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lio/olvid/engine/networkfetch/coordinators/CreateServerSessionCoordinator;->queueNewCreateServerSessionCompositeOperation(Lio/olvid/engine/datatypes/Identity;)V

    return-void
.end method

.method private queueNewCreateServerSessionCompositeOperation(Lio/olvid/engine/datatypes/Identity;)V
    .locals 7

    .line 52
    iget-object v3, p0, Lio/olvid/engine/networkfetch/coordinators/CreateServerSessionCoordinator;->solveChallengeDelegate:Lio/olvid/engine/metamanager/SolveChallengeDelegate;

    if-nez v3, :cond_0

    const-string p1, "The SolveChallengeDelegate is not set in the CreateServerSessionCoordinator. Unable to queue a new CreateServerSessionCompositeOperation."

    .line 53
    invoke-static {p1}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 56
    :cond_0
    new-instance v6, Lio/olvid/engine/networkfetch/operations/CreateServerSessionCompositeOperation;

    iget-object v1, p0, Lio/olvid/engine/networkfetch/coordinators/CreateServerSessionCoordinator;->fetchManagerSessionFactory:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;

    move-object v0, v6

    move-object v2, p1

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lio/olvid/engine/networkfetch/operations/CreateServerSessionCompositeOperation;-><init>(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/metamanager/SolveChallengeDelegate;Lio/olvid/engine/datatypes/Operation$OnFinishCallback;Lio/olvid/engine/datatypes/Operation$OnCancelCallback;)V

    .line 57
    iget-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/CreateServerSessionCoordinator;->createServerSessionOperationQueue:Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;

    invoke-virtual {p1, v6}, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;->queue(Lio/olvid/engine/datatypes/Operation;)V

    return-void
.end method

.method private scheduleNewCreateServerSessionCompositeOperationQueueing(Lio/olvid/engine/datatypes/Identity;)V
    .locals 4

    .line 61
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/CreateServerSessionCoordinator;->failedAttemptCounts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 67
    :goto_0
    iget-object v1, p0, Lio/olvid/engine/networkfetch/coordinators/CreateServerSessionCoordinator;->failedAttemptCounts:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/olvid/engine/datatypes/Constants;->computeReschedulingDelay(I)J

    move-result-wide v0

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheduling a CreateServerSessionCompositeOperation for "

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

    .line 70
    iget-object v2, p0, Lio/olvid/engine/networkfetch/coordinators/CreateServerSessionCoordinator;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lio/olvid/engine/networkfetch/coordinators/CreateServerSessionCoordinator$1;

    invoke-direct {v3, p0, p1}, Lio/olvid/engine/networkfetch/coordinators/CreateServerSessionCoordinator$1;-><init>(Lio/olvid/engine/networkfetch/coordinators/CreateServerSessionCoordinator;Lio/olvid/engine/datatypes/Identity;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v0, v1, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public createServerSession(Lio/olvid/engine/datatypes/Identity;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lio/olvid/engine/networkfetch/coordinators/CreateServerSessionCoordinator;->queueNewCreateServerSessionCompositeOperation(Lio/olvid/engine/datatypes/Identity;)V

    return-void
.end method

.method public onCancelCallback(Lio/olvid/engine/datatypes/Operation;)V
    .locals 3

    .line 85
    move-object v0, p1

    check-cast v0, Lio/olvid/engine/networkfetch/operations/CreateServerSessionCompositeOperation;

    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/operations/CreateServerSessionCompositeOperation;->getIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    .line 86
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Operation;->getReasonForCancel()Ljava/lang/Integer;

    move-result-object p1

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CreateServerSessionCompositeOperation cancelled for reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/olvid/engine/Logger;->i(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 89
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 91
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x6

    if-eq p1, v1, :cond_3

    const/16 v1, 0x8

    if-eq p1, v1, :cond_1

    .line 106
    invoke-direct {p0, v0}, Lio/olvid/engine/networkfetch/coordinators/CreateServerSessionCoordinator;->scheduleNewCreateServerSessionCompositeOperationQueueing(Lio/olvid/engine/datatypes/Identity;)V

    goto :goto_0

    .line 98
    :cond_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v1, "identity"

    .line 99
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v1, p0, Lio/olvid/engine/networkfetch/coordinators/CreateServerSessionCoordinator;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    const-string v2, "network_fetch_notification_api_key_rejected_by_server"

    invoke-interface {v1, v2, p1}, Lio/olvid/engine/metamanager/NotificationPostingDelegate;->postNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 101
    invoke-direct {p0, v0}, Lio/olvid/engine/networkfetch/coordinators/CreateServerSessionCoordinator;->scheduleNewCreateServerSessionCompositeOperationQueueing(Lio/olvid/engine/datatypes/Identity;)V

    goto :goto_0

    .line 93
    :cond_2
    invoke-direct {p0, v0}, Lio/olvid/engine/networkfetch/coordinators/CreateServerSessionCoordinator;->queueNewCreateServerSessionCompositeOperation(Lio/olvid/engine/datatypes/Identity;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onFinishCallback(Lio/olvid/engine/datatypes/Operation;)V
    .locals 2

    .line 76
    check-cast p1, Lio/olvid/engine/networkfetch/operations/CreateServerSessionCompositeOperation;

    invoke-virtual {p1}, Lio/olvid/engine/networkfetch/operations/CreateServerSessionCompositeOperation;->getIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    .line 77
    iget-object v0, p0, Lio/olvid/engine/networkfetch/coordinators/CreateServerSessionCoordinator;->failedAttemptCounts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "identity"

    .line 79
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/CreateServerSessionCoordinator;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    const-string v1, "network_fetch_notification_server_session_created"

    invoke-interface {p1, v1, v0}, Lio/olvid/engine/metamanager/NotificationPostingDelegate;->postNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public setNotificationPostingDelegate(Lio/olvid/engine/metamanager/NotificationPostingDelegate;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/CreateServerSessionCoordinator;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    return-void
.end method

.method public setSolveChallengeDelegate(Lio/olvid/engine/metamanager/SolveChallengeDelegate;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/CreateServerSessionCoordinator;->solveChallengeDelegate:Lio/olvid/engine/metamanager/SolveChallengeDelegate;

    return-void
.end method
