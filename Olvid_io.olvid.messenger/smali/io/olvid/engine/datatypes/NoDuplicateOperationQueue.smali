.class public Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;
.super Ljava/lang/Object;
.source "NoDuplicateOperationQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/engine/datatypes/NoDuplicateOperationQueue$NoDuplicateOperationQueueThread;
    }
.end annotation


# instance fields
.field private executing:Z

.field private final lockOnQueuedOperationUids:Ljava/util/concurrent/locks/Lock;

.field private final operations:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lio/olvid/engine/datatypes/Operation;",
            ">;"
        }
    .end annotation
.end field

.field private final queuedOperationUids:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/olvid/engine/datatypes/UID;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;->executing:Z

    .line 22
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;->queuedOperationUids:Ljava/util/Set;

    .line 23
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;->lockOnQueuedOperationUids:Ljava/util/concurrent/locks/Lock;

    .line 24
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;->operations:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method static synthetic access$000(Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    .line 13
    iget-object p0, p0, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;->operations:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static synthetic access$100(Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;)Ljava/util/concurrent/locks/Lock;
    .locals 0

    .line 13
    iget-object p0, p0, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;->lockOnQueuedOperationUids:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method

.method static synthetic access$200(Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;)Ljava/util/Set;
    .locals 0

    .line 13
    iget-object p0, p0, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;->queuedOperationUids:Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public execute(I)V
    .locals 2

    .line 49
    iget-boolean v0, p0, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;->executing:Z

    if-eqz v0, :cond_0

    const-string p1, "You can only call execute once on a NoDuplicateOperationQueue."

    .line 50
    invoke-static {p1}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;->executing:Z

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 55
    new-instance v1, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue$NoDuplicateOperationQueueThread;

    invoke-direct {v1, p0, v0}, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue$NoDuplicateOperationQueueThread;-><init>(Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;I)V

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue$NoDuplicateOperationQueueThread;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public queue(Lio/olvid/engine/datatypes/Operation;)V
    .locals 3

    .line 28
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Operation;->getDependencies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const-string p1, "Cannot queue an operation with dependencies into a NoDuplicateOperationQueue."

    .line 29
    invoke-static {p1}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 32
    :cond_0
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Operation;->getUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 34
    iget-object v1, p0, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;->lockOnQueuedOperationUids:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 35
    iget-object v1, p0, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;->queuedOperationUids:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NoDuplicateOperationQueue already contains an operation of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with UID "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "queue size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;->operations:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  set size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;->queuedOperationUids:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    .line 38
    iget-object p1, p0, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;->lockOnQueuedOperationUids:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 41
    :cond_1
    iget-object v1, p0, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;->queuedOperationUids:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v0, p0, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;->lockOnQueuedOperationUids:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 44
    :cond_2
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Operation;->setPending()V

    .line 45
    iget-object v0, p0, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;->operations:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method
