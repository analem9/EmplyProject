.class Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask$2;
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

.field final synthetic val$draftMessage:Lio/olvid/messenger/databases/entity/Message;

.field final synthetic val$jsonMessage:Lio/olvid/messenger/databases/entity/Message$JsonMessage;


# direct methods
.method constructor <init>(Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask;Lio/olvid/messenger/databases/entity/Discussion;Lio/olvid/messenger/databases/entity/Message;Lio/olvid/messenger/databases/entity/Message$JsonMessage;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask$2;->this$0:Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask;

    iput-object p2, p0, Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask$2;->val$discussion:Lio/olvid/messenger/databases/entity/Discussion;

    iput-object p3, p0, Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask$2;->val$draftMessage:Lio/olvid/messenger/databases/entity/Message;

    iput-object p4, p0, Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask$2;->val$jsonMessage:Lio/olvid/messenger/databases/entity/Message$JsonMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 66
    iget-object v0, p0, Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask$2;->val$discussion:Lio/olvid/messenger/databases/entity/Discussion;

    iget-wide v1, v0, Lio/olvid/messenger/databases/entity/Discussion;->lastOutboundMessageSequenceNumber:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Lio/olvid/messenger/databases/entity/Discussion;->lastOutboundMessageSequenceNumber:J

    .line 67
    iget-object v0, p0, Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask$2;->val$discussion:Lio/olvid/messenger/databases/entity/Discussion;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/olvid/messenger/databases/entity/Discussion;->updateLastMessageTimestamp(J)Z

    .line 68
    iget-object v0, p0, Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask$2;->this$0:Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask;

    invoke-static {v0}, Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask;->access$000(Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask;)Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;

    move-result-object v0

    iget-object v1, p0, Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask$2;->val$discussion:Lio/olvid/messenger/databases/entity/Discussion;

    invoke-virtual {v0, v1}, Lio/olvid/messenger/databases/dao/DiscussionDao;->update(Lio/olvid/messenger/databases/entity/Discussion;)V

    .line 69
    iget-object v0, p0, Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask$2;->val$draftMessage:Lio/olvid/messenger/databases/entity/Message;

    iget-object v1, p0, Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask$2;->val$discussion:Lio/olvid/messenger/databases/entity/Discussion;

    iget-wide v1, v1, Lio/olvid/messenger/databases/entity/Discussion;->lastOutboundMessageSequenceNumber:J

    iput-wide v1, v0, Lio/olvid/messenger/databases/entity/Message;->senderSequenceNumber:J

    .line 70
    iget-object v0, p0, Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask$2;->val$draftMessage:Lio/olvid/messenger/databases/entity/Message;

    iget-object v1, p0, Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask$2;->val$jsonMessage:Lio/olvid/messenger/databases/entity/Message$JsonMessage;

    invoke-virtual {v0, v1}, Lio/olvid/messenger/databases/entity/Message;->setJsonMessage(Lio/olvid/messenger/databases/entity/Message$JsonMessage;)V

    .line 71
    iget-object v0, p0, Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask$2;->val$draftMessage:Lio/olvid/messenger/databases/entity/Message;

    const/4 v1, 0x0

    iput v1, v0, Lio/olvid/messenger/databases/entity/Message;->status:I

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lio/olvid/messenger/databases/entity/Message;->timestamp:J

    .line 73
    iget-object v0, p0, Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask$2;->val$draftMessage:Lio/olvid/messenger/databases/entity/Message;

    iget-object v2, p0, Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask$2;->this$0:Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask;

    invoke-static {v2}, Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask;->access$000(Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask;)Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/olvid/messenger/databases/entity/Message;->computeOutboundSortIndex(Lio/olvid/messenger/databases/AppDatabase;)V

    .line 76
    iget-object v0, p0, Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask$2;->this$0:Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask;

    invoke-static {v0}, Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask;->access$000(Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask;)Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->fyleMessageJoinWithStatusDao()Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;

    move-result-object v0

    iget-object v2, p0, Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask$2;->val$draftMessage:Lio/olvid/messenger/databases/entity/Message;

    iget-wide v2, v2, Lio/olvid/messenger/databases/entity/Message;->id:J

    invoke-interface {v0, v2, v3}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;->getStatusForMessage(J)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    .line 77
    sget-object v4, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->imageAndVideoPattern:Ljava/util/regex/Pattern;

    iget-object v3, v3, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->mimeType:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    :cond_1
    iget-object v0, p0, Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask$2;->val$draftMessage:Lio/olvid/messenger/databases/entity/Message;

    iput v1, v0, Lio/olvid/messenger/databases/entity/Message;->totalAttachmentCount:I

    .line 83
    iput v2, v0, Lio/olvid/messenger/databases/entity/Message;->imageCount:I

    .line 84
    iget-object v0, p0, Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask$2;->this$0:Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask;

    invoke-static {v0}, Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask;->access$000(Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask;)Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v0

    iget-object v1, p0, Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask$2;->val$draftMessage:Lio/olvid/messenger/databases/entity/Message;

    invoke-interface {v0, v1}, Lio/olvid/messenger/databases/dao/MessageDao;->update(Lio/olvid/messenger/databases/entity/Message;)V

    .line 85
    iget-object v0, p0, Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask$2;->val$draftMessage:Lio/olvid/messenger/databases/entity/Message;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/olvid/messenger/databases/entity/Message;->post(Z)V

    return-void
.end method
