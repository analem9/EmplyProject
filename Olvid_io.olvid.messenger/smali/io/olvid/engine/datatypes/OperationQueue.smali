.class public Lio/olvid/engine/datatypes/OperationQueue;
.super Ljava/lang/Object;
.source "OperationQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/engine/datatypes/OperationQueue$OperationQueueThread;
    }
.end annotation


# static fields
.field protected static final MILLISECONDS_TO_WAIT_BETWEEN_TWO_OPERATION_EXECUTIONS:I = 0x14


# instance fields
.field private count:I

.field private executing:Z

.field private final lockOnCount:Ljava/util/concurrent/locks/Lock;

.field private final notifier:Ljava/lang/Object;

.field private final operations:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/olvid/engine/datatypes/Operation;",
            ">;"
        }
    .end annotation
.end field

.field private final persistent:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, v0}, Lio/olvid/engine/datatypes/OperationQueue;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lio/olvid/engine/datatypes/OperationQueue;->executing:Z

    .line 27
    iput-boolean p1, p0, Lio/olvid/engine/datatypes/OperationQueue;->persistent:Z

    .line 28
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lio/olvid/engine/datatypes/OperationQueue;->operations:Ljava/util/Queue;

    .line 29
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lio/olvid/engine/datatypes/OperationQueue;->lockOnCount:Ljava/util/concurrent/locks/Lock;

    .line 30
    iput v0, p0, Lio/olvid/engine/datatypes/OperationQueue;->count:I

    .line 31
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/olvid/engine/datatypes/OperationQueue;->notifier:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lio/olvid/engine/datatypes/OperationQueue;)Ljava/util/Queue;
    .locals 0

    .line 11
    iget-object p0, p0, Lio/olvid/engine/datatypes/OperationQueue;->operations:Ljava/util/Queue;

    return-object p0
.end method

.method static synthetic access$100(Lio/olvid/engine/datatypes/OperationQueue;)Z
    .locals 0

    .line 11
    iget-boolean p0, p0, Lio/olvid/engine/datatypes/OperationQueue;->persistent:Z

    return p0
.end method

.method static synthetic access$200(Lio/olvid/engine/datatypes/OperationQueue;)Ljava/lang/Object;
    .locals 0

    .line 11
    iget-object p0, p0, Lio/olvid/engine/datatypes/OperationQueue;->notifier:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Lio/olvid/engine/datatypes/OperationQueue;Lio/olvid/engine/datatypes/Operation;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lio/olvid/engine/datatypes/OperationQueue;->addOperation(Lio/olvid/engine/datatypes/Operation;)V

    return-void
.end method

.method static synthetic access$400(Lio/olvid/engine/datatypes/OperationQueue;)Ljava/util/concurrent/locks/Lock;
    .locals 0

    .line 11
    iget-object p0, p0, Lio/olvid/engine/datatypes/OperationQueue;->lockOnCount:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method

.method static synthetic access$510(Lio/olvid/engine/datatypes/OperationQueue;)I
    .locals 2

    .line 11
    iget v0, p0, Lio/olvid/engine/datatypes/OperationQueue;->count:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lio/olvid/engine/datatypes/OperationQueue;->count:I

    return v0
.end method

.method private addOperation(Lio/olvid/engine/datatypes/Operation;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lio/olvid/engine/datatypes/OperationQueue;->lockOnCount:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 36
    iget v0, p0, Lio/olvid/engine/datatypes/OperationQueue;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/olvid/engine/datatypes/OperationQueue;->count:I

    .line 37
    iget-object v0, p0, Lio/olvid/engine/datatypes/OperationQueue;->operations:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object p1, p0, Lio/olvid/engine/datatypes/OperationQueue;->lockOnCount:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 39
    iget-object p1, p0, Lio/olvid/engine/datatypes/OperationQueue;->notifier:Ljava/lang/Object;

    monitor-enter p1

    .line 40
    :try_start_0
    iget-object v0, p0, Lio/olvid/engine/datatypes/OperationQueue;->notifier:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 41
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public execute(I)V
    .locals 2

    .line 76
    iget-boolean v0, p0, Lio/olvid/engine/datatypes/OperationQueue;->persistent:Z

    if-eqz v0, :cond_1

    .line 77
    iget-boolean v0, p0, Lio/olvid/engine/datatypes/OperationQueue;->executing:Z

    if-eqz v0, :cond_0

    const-string p1, "You can only call execute once on a persistent OperationQueue."

    .line 78
    invoke-static {p1}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lio/olvid/engine/datatypes/OperationQueue;->executing:Z

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    .line 84
    new-instance v1, Lio/olvid/engine/datatypes/OperationQueue$OperationQueueThread;

    invoke-direct {v1, p0, v0}, Lio/olvid/engine/datatypes/OperationQueue$OperationQueueThread;-><init>(Lio/olvid/engine/datatypes/OperationQueue;I)V

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/OperationQueue$OperationQueueThread;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public join()V
    .locals 4

    .line 58
    iget-object v0, p0, Lio/olvid/engine/datatypes/OperationQueue;->lockOnCount:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 59
    iget v0, p0, Lio/olvid/engine/datatypes/OperationQueue;->count:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 60
    :goto_0
    iget-object v3, p0, Lio/olvid/engine/datatypes/OperationQueue;->lockOnCount:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_1
    if-nez v0, :cond_2

    .line 62
    iget-object v0, p0, Lio/olvid/engine/datatypes/OperationQueue;->notifier:Ljava/lang/Object;

    monitor-enter v0

    .line 64
    :try_start_0
    iget-object v3, p0, Lio/olvid/engine/datatypes/OperationQueue;->notifier:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_4

    :catch_0
    move-exception v3

    .line 66
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 68
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    iget-object v0, p0, Lio/olvid/engine/datatypes/OperationQueue;->lockOnCount:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 70
    iget v0, p0, Lio/olvid/engine/datatypes/OperationQueue;->count:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_3

    :cond_1
    const/4 v0, 0x0

    .line 71
    :goto_3
    iget-object v3, p0, Lio/olvid/engine/datatypes/OperationQueue;->lockOnCount:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    .line 68
    :goto_4
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_2
    return-void
.end method

.method public queue(Lio/olvid/engine/datatypes/Operation;)V
    .locals 0

    .line 45
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Operation;->setPending()V

    .line 46
    invoke-direct {p0, p1}, Lio/olvid/engine/datatypes/OperationQueue;->addOperation(Lio/olvid/engine/datatypes/Operation;)V

    return-void
.end method
