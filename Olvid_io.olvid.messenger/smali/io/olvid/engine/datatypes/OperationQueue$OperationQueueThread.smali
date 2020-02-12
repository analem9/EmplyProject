.class Lio/olvid/engine/datatypes/OperationQueue$OperationQueueThread;
.super Ljava/lang/Thread;
.source "OperationQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/datatypes/OperationQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OperationQueueThread"
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/engine/datatypes/OperationQueue;

.field public threadNumber:I


# direct methods
.method public constructor <init>(Lio/olvid/engine/datatypes/OperationQueue;I)V
    .locals 0

    .line 91
    iput-object p1, p0, Lio/olvid/engine/datatypes/OperationQueue$OperationQueueThread;->this$0:Lio/olvid/engine/datatypes/OperationQueue;

    .line 92
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 93
    iput p2, p0, Lio/olvid/engine/datatypes/OperationQueue$OperationQueueThread;->threadNumber:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 99
    :goto_0
    iget-object v0, p0, Lio/olvid/engine/datatypes/OperationQueue$OperationQueueThread;->this$0:Lio/olvid/engine/datatypes/OperationQueue;

    invoke-static {v0}, Lio/olvid/engine/datatypes/OperationQueue;->access$000(Lio/olvid/engine/datatypes/OperationQueue;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/engine/datatypes/Operation;

    if-nez v0, :cond_1

    .line 101
    iget-object v0, p0, Lio/olvid/engine/datatypes/OperationQueue$OperationQueueThread;->this$0:Lio/olvid/engine/datatypes/OperationQueue;

    invoke-static {v0}, Lio/olvid/engine/datatypes/OperationQueue;->access$100(Lio/olvid/engine/datatypes/OperationQueue;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lio/olvid/engine/datatypes/OperationQueue$OperationQueueThread;->this$0:Lio/olvid/engine/datatypes/OperationQueue;

    invoke-static {v0}, Lio/olvid/engine/datatypes/OperationQueue;->access$200(Lio/olvid/engine/datatypes/OperationQueue;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 104
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/datatypes/OperationQueue$OperationQueueThread;->this$0:Lio/olvid/engine/datatypes/OperationQueue;

    invoke-static {v1}, Lio/olvid/engine/datatypes/OperationQueue;->access$200(Lio/olvid/engine/datatypes/OperationQueue;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 106
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 108
    :goto_1
    monitor-exit v0

    goto :goto_0

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    return-void

    .line 115
    :cond_1
    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Operation;->updateReadiness()V

    .line 116
    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Operation;->processCancel()V

    .line 118
    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Operation;->getTimestampOfLastExecution()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    .line 119
    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Operation;->getTimestampOfLastExecution()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v1, v5

    const-wide/16 v5, 0x14

    add-long/2addr v1, v5

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    .line 122
    :try_start_2
    invoke-static {v1, v2}, Lio/olvid/engine/datatypes/OperationQueue$OperationQueueThread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    nop

    .line 126
    :cond_2
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/olvid/engine/datatypes/Operation;->setTimestampOfLastExecution(J)V

    .line 128
    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Operation;->isPending()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 129
    iget-object v1, p0, Lio/olvid/engine/datatypes/OperationQueue$OperationQueueThread;->this$0:Lio/olvid/engine/datatypes/OperationQueue;

    invoke-static {v1, v0}, Lio/olvid/engine/datatypes/OperationQueue;->access$300(Lio/olvid/engine/datatypes/OperationQueue;Lio/olvid/engine/datatypes/Operation;)V

    .line 131
    :cond_3
    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Operation;->isReady()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 132
    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Operation;->areConditionsFulfilled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 133
    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Operation;->execute()V

    goto :goto_4

    .line 135
    :cond_4
    iget-object v1, p0, Lio/olvid/engine/datatypes/OperationQueue$OperationQueueThread;->this$0:Lio/olvid/engine/datatypes/OperationQueue;

    invoke-static {v1, v0}, Lio/olvid/engine/datatypes/OperationQueue;->access$300(Lio/olvid/engine/datatypes/OperationQueue;Lio/olvid/engine/datatypes/Operation;)V

    .line 140
    :cond_5
    :goto_4
    iget-object v0, p0, Lio/olvid/engine/datatypes/OperationQueue$OperationQueueThread;->this$0:Lio/olvid/engine/datatypes/OperationQueue;

    invoke-static {v0}, Lio/olvid/engine/datatypes/OperationQueue;->access$400(Lio/olvid/engine/datatypes/OperationQueue;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 141
    iget-object v0, p0, Lio/olvid/engine/datatypes/OperationQueue$OperationQueueThread;->this$0:Lio/olvid/engine/datatypes/OperationQueue;

    invoke-static {v0}, Lio/olvid/engine/datatypes/OperationQueue;->access$510(Lio/olvid/engine/datatypes/OperationQueue;)I

    .line 142
    iget-object v0, p0, Lio/olvid/engine/datatypes/OperationQueue$OperationQueueThread;->this$0:Lio/olvid/engine/datatypes/OperationQueue;

    invoke-static {v0}, Lio/olvid/engine/datatypes/OperationQueue;->access$200(Lio/olvid/engine/datatypes/OperationQueue;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 143
    :try_start_3
    iget-object v1, p0, Lio/olvid/engine/datatypes/OperationQueue$OperationQueueThread;->this$0:Lio/olvid/engine/datatypes/OperationQueue;

    invoke-static {v1}, Lio/olvid/engine/datatypes/OperationQueue;->access$200(Lio/olvid/engine/datatypes/OperationQueue;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 144
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 145
    iget-object v0, p0, Lio/olvid/engine/datatypes/OperationQueue$OperationQueueThread;->this$0:Lio/olvid/engine/datatypes/OperationQueue;

    invoke-static {v0}, Lio/olvid/engine/datatypes/OperationQueue;->access$400(Lio/olvid/engine/datatypes/OperationQueue;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    .line 144
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method
