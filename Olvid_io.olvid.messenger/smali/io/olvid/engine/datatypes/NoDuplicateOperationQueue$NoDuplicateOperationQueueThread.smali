.class Lio/olvid/engine/datatypes/NoDuplicateOperationQueue$NoDuplicateOperationQueueThread;
.super Ljava/lang/Thread;
.source "NoDuplicateOperationQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NoDuplicateOperationQueueThread"
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;

.field threadNumber:I


# direct methods
.method constructor <init>(Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;I)V
    .locals 0

    .line 61
    iput-object p1, p0, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue$NoDuplicateOperationQueueThread;->this$0:Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;

    .line 62
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 63
    iput p2, p0, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue$NoDuplicateOperationQueueThread;->threadNumber:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 71
    :catch_0
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue$NoDuplicateOperationQueueThread;->this$0:Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;

    invoke-static {v0}, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;->access$000(Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/engine/datatypes/Operation;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Operation;->updateReadiness()V

    .line 77
    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Operation;->processCancel()V

    .line 79
    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Operation;->getTimestampOfLastExecution()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 80
    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Operation;->getTimestampOfLastExecution()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v1, v5

    const-wide/16 v5, 0x14

    add-long/2addr v1, v5

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 83
    :try_start_1
    invoke-static {v1, v2}, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue$NoDuplicateOperationQueueThread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    .line 87
    :cond_1
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/olvid/engine/datatypes/Operation;->setTimestampOfLastExecution(J)V

    .line 89
    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Operation;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Operation;->areConditionsFulfilled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 91
    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Operation;->getUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 92
    iget-object v1, p0, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue$NoDuplicateOperationQueueThread;->this$0:Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;

    invoke-static {v1}, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;->access$100(Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 93
    iget-object v1, p0, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue$NoDuplicateOperationQueueThread;->this$0:Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;

    invoke-static {v1}, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;->access$200(Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Operation;->getUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 94
    iget-object v1, p0, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue$NoDuplicateOperationQueueThread;->this$0:Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;

    invoke-static {v1}, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;->access$100(Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 96
    :cond_2
    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Operation;->execute()V

    goto :goto_0

    .line 98
    :cond_3
    iget-object v1, p0, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue$NoDuplicateOperationQueueThread;->this$0:Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;

    invoke-static {v1}, Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;->access$000(Lio/olvid/engine/datatypes/NoDuplicateOperationQueue;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
