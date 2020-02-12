.class public Lio/olvid/engine/datatypes/PriorityOperationQueue;
.super Ljava/lang/Object;
.source "PriorityOperationQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/engine/datatypes/PriorityOperationQueue$PriorityOperationQueueThread;
    }
.end annotation


# instance fields
.field private executing:Z

.field private final executingOperations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/olvid/engine/datatypes/PriorityOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final lockOnExecutingOperations:Ljava/util/concurrent/locks/Lock;

.field private numberOfThreads:I

.field private final operations:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lio/olvid/engine/datatypes/PriorityOperation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lio/olvid/engine/datatypes/PriorityOperationQueue;->executing:Z

    .line 24
    new-instance v1, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v1, p0, Lio/olvid/engine/datatypes/PriorityOperationQueue;->operations:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 25
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lio/olvid/engine/datatypes/PriorityOperationQueue;->executingOperations:Ljava/util/List;

    .line 26
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lio/olvid/engine/datatypes/PriorityOperationQueue;->lockOnExecutingOperations:Ljava/util/concurrent/locks/Lock;

    .line 27
    iput v0, p0, Lio/olvid/engine/datatypes/PriorityOperationQueue;->numberOfThreads:I

    return-void
.end method

.method static synthetic access$000(Lio/olvid/engine/datatypes/PriorityOperationQueue;)Ljava/util/concurrent/PriorityBlockingQueue;
    .locals 0

    .line 14
    iget-object p0, p0, Lio/olvid/engine/datatypes/PriorityOperationQueue;->operations:Ljava/util/concurrent/PriorityBlockingQueue;

    return-object p0
.end method

.method static synthetic access$100(Lio/olvid/engine/datatypes/PriorityOperationQueue;)Ljava/util/concurrent/locks/Lock;
    .locals 0

    .line 14
    iget-object p0, p0, Lio/olvid/engine/datatypes/PriorityOperationQueue;->lockOnExecutingOperations:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method

.method static synthetic access$200(Lio/olvid/engine/datatypes/PriorityOperationQueue;)Ljava/util/List;
    .locals 0

    .line 14
    iget-object p0, p0, Lio/olvid/engine/datatypes/PriorityOperationQueue;->executingOperations:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public execute(I)V
    .locals 2

    .line 40
    iget-boolean v0, p0, Lio/olvid/engine/datatypes/PriorityOperationQueue;->executing:Z

    if-eqz v0, :cond_0

    const-string p1, "You can only call execute once on a PriorityOperationQueue."

    .line 41
    invoke-static {p1}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lio/olvid/engine/datatypes/PriorityOperationQueue;->executing:Z

    .line 45
    iput p1, p0, Lio/olvid/engine/datatypes/PriorityOperationQueue;->numberOfThreads:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 47
    new-instance v1, Lio/olvid/engine/datatypes/PriorityOperationQueue$PriorityOperationQueueThread;

    invoke-direct {v1, p0, v0}, Lio/olvid/engine/datatypes/PriorityOperationQueue$PriorityOperationQueueThread;-><init>(Lio/olvid/engine/datatypes/PriorityOperationQueue;I)V

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/PriorityOperationQueue$PriorityOperationQueueThread;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getExecutingOperationThatShouldBeCancelledWhenQueueingWithHigherPriority()Lio/olvid/engine/datatypes/PriorityOperation;
    .locals 8

    .line 55
    iget-object v0, p0, Lio/olvid/engine/datatypes/PriorityOperationQueue;->lockOnExecutingOperations:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 56
    iget-object v0, p0, Lio/olvid/engine/datatypes/PriorityOperationQueue;->executingOperations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lio/olvid/engine/datatypes/PriorityOperationQueue;->numberOfThreads:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 57
    iget-object v0, p0, Lio/olvid/engine/datatypes/PriorityOperationQueue;->lockOnExecutingOperations:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v2

    .line 60
    :cond_0
    iget-object v0, p0, Lio/olvid/engine/datatypes/PriorityOperationQueue;->executingOperations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v3, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/olvid/engine/datatypes/PriorityOperation;

    .line 61
    invoke-virtual {v1}, Lio/olvid/engine/datatypes/PriorityOperation;->getPriority()J

    move-result-wide v5

    if-eqz v2, :cond_2

    cmp-long v7, v5, v3

    if-lez v7, :cond_1

    :cond_2
    move-object v2, v1

    move-wide v3, v5

    goto :goto_0

    .line 67
    :cond_3
    iget-object v0, p0, Lio/olvid/engine/datatypes/PriorityOperationQueue;->lockOnExecutingOperations:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v2
.end method

.method public queue(Lio/olvid/engine/datatypes/PriorityOperation;)V
    .locals 1

    .line 31
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/PriorityOperation;->getDependencies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const-string p1, "Cannot queue an operation with dependencies into a PriorityOperationQueue."

    .line 32
    invoke-static {p1}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 35
    :cond_0
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/PriorityOperation;->setPending()V

    .line 36
    iget-object v0, p0, Lio/olvid/engine/datatypes/PriorityOperationQueue;->operations:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method
