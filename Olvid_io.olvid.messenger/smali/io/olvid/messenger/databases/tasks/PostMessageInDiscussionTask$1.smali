.class Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask$1;
.super Ljava/lang/Object;
.source "PostMessageInDiscussionTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask;

.field final synthetic val$discussion:Lio/olvid/messenger/databases/entity/Discussion;

.field final synthetic val$jsonMessage:Lio/olvid/messenger/databases/entity/Message$JsonMessage;


# direct methods
.method constructor <init>(Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask;Lio/olvid/messenger/databases/entity/Discussion;Lio/olvid/messenger/databases/entity/Message$JsonMessage;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask$1;->this$0:Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask;

    iput-object p2, p0, Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask$1;->val$discussion:Lio/olvid/messenger/databases/entity/Discussion;

    iput-object p3, p0, Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask$1;->val$jsonMessage:Lio/olvid/messenger/databases/entity/Message$JsonMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    move-object/from16 v0, p0

    .line 39
    iget-object v1, v0, Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask$1;->val$discussion:Lio/olvid/messenger/databases/entity/Discussion;

    iget-wide v2, v1, Lio/olvid/messenger/databases/entity/Discussion;->lastOutboundMessageSequenceNumber:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Lio/olvid/messenger/databases/entity/Discussion;->lastOutboundMessageSequenceNumber:J

    .line 40
    iget-object v1, v0, Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask$1;->val$discussion:Lio/olvid/messenger/databases/entity/Discussion;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lio/olvid/messenger/databases/entity/Discussion;->updateLastMessageTimestamp(J)Z

    .line 41
    iget-object v1, v0, Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask$1;->this$0:Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask;

    invoke-static {v1}, Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask;->access$000(Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask;)Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/messenger/databases/AppDatabase;->discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;

    move-result-object v1

    iget-object v2, v0, Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask$1;->val$discussion:Lio/olvid/messenger/databases/entity/Discussion;

    invoke-virtual {v1, v2}, Lio/olvid/messenger/databases/dao/DiscussionDao;->update(Lio/olvid/messenger/databases/entity/Discussion;)V

    .line 42
    new-instance v1, Lio/olvid/messenger/databases/entity/Message;

    move-object v3, v1

    iget-object v2, v0, Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask$1;->this$0:Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask;

    .line 43
    invoke-static {v2}, Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask;->access$000(Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask;)Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v4

    iget-object v2, v0, Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask$1;->val$discussion:Lio/olvid/messenger/databases/entity/Discussion;

    iget-wide v5, v2, Lio/olvid/messenger/databases/entity/Discussion;->lastOutboundMessageSequenceNumber:J

    iget-object v7, v0, Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask$1;->val$jsonMessage:Lio/olvid/messenger/databases/entity/Message$JsonMessage;

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-object v2, v0, Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask$1;->this$0:Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask;

    .line 50
    invoke-static {v2}, Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask;->access$100(Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask;)J

    move-result-wide v13

    iget-object v2, v0, Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask$1;->val$discussion:Lio/olvid/messenger/databases/entity/Discussion;

    iget-object v2, v2, Lio/olvid/messenger/databases/entity/Discussion;->bytesOwnedIdentity:[B

    move-object/from16 v16, v2

    iget-object v2, v0, Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask$1;->val$discussion:Lio/olvid/messenger/databases/entity/Discussion;

    iget-object v2, v2, Lio/olvid/messenger/databases/entity/Discussion;->senderThreadIdentifier:Ljava/util/UUID;

    move-object/from16 v17, v2

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v3 .. v19}, Lio/olvid/messenger/databases/entity/Message;-><init>(Lio/olvid/messenger/databases/AppDatabase;JLio/olvid/messenger/databases/entity/Message$JsonMessage;Lio/olvid/messenger/databases/entity/Message$JsonReturnReceipt;JIIJ[B[BLjava/util/UUID;II)V

    .line 56
    iget-object v2, v0, Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask$1;->this$0:Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask;

    invoke-static {v2}, Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask;->access$000(Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask;)Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v2

    invoke-virtual {v2}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v2

    invoke-interface {v2, v1}, Lio/olvid/messenger/databases/dao/MessageDao;->insert(Lio/olvid/messenger/databases/entity/Message;)J

    move-result-wide v2

    iput-wide v2, v1, Lio/olvid/messenger/databases/entity/Message;->id:J

    const/4 v2, 0x1

    .line 57
    invoke-virtual {v1, v2}, Lio/olvid/messenger/databases/entity/Message;->post(Z)V

    return-void
.end method
