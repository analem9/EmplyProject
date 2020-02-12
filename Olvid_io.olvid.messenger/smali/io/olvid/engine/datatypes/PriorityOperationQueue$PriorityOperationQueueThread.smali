.class Lio/olvid/engine/datatypes/PriorityOperationQueue$PriorityOperationQueueThread;
.super Ljava/lang/Thread;
.source "PriorityOperationQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/datatypes/PriorityOperationQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PriorityOperationQueueThread"
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/engine/datatypes/PriorityOperationQueue;

.field public threadNumber:I


# direct methods
.method public constructor <init>(Lio/olvid/engine/datatypes/PriorityOperationQueue;I)V
    .locals 0

    .line 73
    iput-object p1, p0, Lio/olvid/engine/datatypes/PriorityOperationQueue$PriorityOperationQueueThread;->this$0:Lio/olvid/engine/datatypes/PriorityOperationQueue;

    .line 74
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 75
    iput p2, p0, Lio/olvid/engine/datatypes/PriorityOperationQueue$PriorityOperationQueueThread;->threadNumber:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 83
    :catch_0
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lio/olvid/engine/datatypes/PriorityOperationQueue$PriorityOperationQueueThread;->this$0:Lio/olvid/engine/datatypes/PriorityOperationQueue;

    invoke-static {v0}, Lio/olvid/engine/datatypes/PriorityOperationQueue;->access$000(Lio/olvid/engine/datatypes/PriorityOperationQueue;)Ljava/util/concurrent/PriorityBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/engine/datatypes/PriorityOperation;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    invoke-virtual {v0}, Lio/olvid/engine/datatypes/PriorityOperation;->updateReadiness()V

    .line 89
    invoke-virtual {v0}, Lio/olvid/engine/datatypes/PriorityOperation;->processCancel()V

    .line 91
    invoke-virtual {v0}, Lio/olvid/engine/datatypes/PriorityOperation;->getTimestampOfLastExecution()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 92
    invoke-virtual {v0}, Lio/olvid/engine/datatypes/PriorityOperation;->getTimestampOfLastExecution()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v1, v5

    const-wide/16 v5, 0x14

    add-long/2addr v1, v5

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 95
    :try_start_1
    invoke-static {v1, v2}, Lio/olvid/engine/datatypes/PriorityOperationQueue$PriorityOperationQueueThread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    .line 99
    :cond_1
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/olvid/engine/datatypes/PriorityOperation;->setTimestampOfLastExecution(J)V

    .line 101
    invoke-virtual {v0}, Lio/olvid/engine/datatypes/PriorityOperation;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    invoke-virtual {v0}, Lio/olvid/engine/datatypes/PriorityOperation;->areConditionsFulfilled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 103
    iget-object v1, p0, Lio/olvid/engine/datatypes/PriorityOperationQueue$PriorityOperationQueueThread;->this$0:Lio/olvid/engine/datatypes/PriorityOperationQueue;

    invoke-static {v1}, Lio/olvid/engine/datatypes/PriorityOperationQueue;->access$100(Lio/olvid/engine/datatypes/PriorityOperationQueue;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 104
    iget-object v1, p0, Lio/olvid/engine/datatypes/PriorityOperationQueue$PriorityOperationQueueThread;->this$0:Lio/olvid/engine/datatypes/PriorityOperationQueue;

    invoke-static {v1}, Lio/olvid/engine/datatypes/PriorityOperationQueue;->access$200(Lio/olvid/engine/datatypes/PriorityOperationQueue;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v1, p0, Lio/olvid/engine/datatypes/PriorityOperationQueue$PriorityOperationQueueThread;->this$0:Lio/olvid/engine/datatypes/PriorityOperationQueue;

    invoke-static {v1}, Lio/olvid/engine/datatypes/PriorityOperationQueue;->access$100(Lio/olvid/engine/datatypes/PriorityOperationQueue;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 107
    invoke-virtual {v0}, Lio/olvid/engine/datatypes/PriorityOperation;->execute()V

    .line 109
    iget-object v1, p0, Lio/olvid/engine/datatypes/PriorityOperationQueue$PriorityOperationQueueThread;->this$0:Lio/olvid/engine/datatypes/PriorityOperationQueue;

    invoke-static {v1}, Lio/olvid/engine/datatypes/PriorityOperationQueue;->access$100(Lio/olvid/engine/datatypes/PriorityOperationQueue;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 110
    iget-object v1, p0, Lio/olvid/engine/datatypes/PriorityOperationQueue$PriorityOperationQueueThread;->this$0:Lio/olvid/engine/datatypes/PriorityOperationQueue;

    invoke-static {v1}, Lio/olvid/engine/datatypes/PriorityOperationQueue;->access$200(Lio/olvid/engine/datatypes/PriorityOperationQueue;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 111
    iget-object v0, p0, Lio/olvid/engine/datatypes/PriorityOperationQueue$PriorityOperationQueueThread;->this$0:Lio/olvid/engine/datatypes/PriorityOperationQueue;

    invoke-static {v0}, Lio/olvid/engine/datatypes/PriorityOperationQueue;->access$100(Lio/olvid/engine/datatypes/PriorityOperationQueue;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 113
    :cond_2
    iget-object v1, p0, Lio/olvid/engine/datatypes/PriorityOperationQueue$PriorityOperationQueueThread;->this$0:Lio/olvid/engine/datatypes/PriorityOperationQueue;

    invoke-static {v1}, Lio/olvid/engine/datatypes/PriorityOperationQueue;->access$000(Lio/olvid/engine/datatypes/PriorityOperationQueue;)Ljava/util/concurrent/PriorityBlockingQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
