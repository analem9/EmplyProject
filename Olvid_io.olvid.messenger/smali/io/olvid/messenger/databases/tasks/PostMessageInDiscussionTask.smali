.class public Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask;
.super Ljava/lang/Object;
.source "PostMessageInDiscussionTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final body:Ljava/lang/String;

.field private final db:Lio/olvid/messenger/databases/AppDatabase;

.field private final discussionId:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask;->db:Lio/olvid/messenger/databases/AppDatabase;

    .line 16
    iput-object p1, p0, Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask;->body:Ljava/lang/String;

    .line 17
    iput-wide p2, p0, Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask;->discussionId:J

    return-void
.end method

.method static synthetic access$000(Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask;)Lio/olvid/messenger/databases/AppDatabase;
    .locals 0

    .line 9
    iget-object p0, p0, Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask;->db:Lio/olvid/messenger/databases/AppDatabase;

    return-object p0
.end method

.method static synthetic access$100(Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask;)J
    .locals 2

    .line 9
    iget-wide v0, p0, Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask;->discussionId:J

    return-wide v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 22
    iget-object v0, p0, Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;

    move-result-object v0

    iget-wide v1, p0, Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask;->discussionId:J

    invoke-virtual {v0, v1, v2}, Lio/olvid/messenger/databases/dao/DiscussionDao;->getById(J)Lio/olvid/messenger/databases/entity/Discussion;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lio/olvid/messenger/databases/entity/Discussion;->isLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "A message was posted in a locked discussion!!!"

    .line 24
    invoke-static {v0}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    return-void

    .line 28
    :cond_0
    iget-object v1, p0, Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v1}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v1

    iget-wide v2, p0, Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask;->discussionId:J

    invoke-interface {v1, v2, v3}, Lio/olvid/messenger/databases/dao/MessageDao;->getDiscussionDraftMessageSync(J)Lio/olvid/messenger/databases/entity/Message;

    move-result-object v1

    if-nez v1, :cond_2

    .line 31
    iget-object v1, p0, Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask;->body:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 32
    new-instance v1, Lio/olvid/messenger/databases/entity/Message$JsonMessage;

    invoke-direct {v1}, Lio/olvid/messenger/databases/entity/Message$JsonMessage;-><init>()V

    goto :goto_0

    .line 34
    :cond_1
    new-instance v2, Lio/olvid/messenger/databases/entity/Message$JsonMessage;

    invoke-direct {v2, v1}, Lio/olvid/messenger/databases/entity/Message$JsonMessage;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 36
    :goto_0
    iget-object v2, p0, Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask;->db:Lio/olvid/messenger/databases/AppDatabase;

    new-instance v3, Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask$1;

    invoke-direct {v3, p0, v0, v1}, Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask$1;-><init>(Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask;Lio/olvid/messenger/databases/entity/Discussion;Lio/olvid/messenger/databases/entity/Message$JsonMessage;)V

    invoke-virtual {v2, v3}, Lio/olvid/messenger/databases/AppDatabase;->runInTransaction(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 61
    :cond_2
    invoke-virtual {v1}, Lio/olvid/messenger/databases/entity/Message;->getJsonMessage()Lio/olvid/messenger/databases/entity/Message$JsonMessage;

    move-result-object v2

    .line 62
    iget-object v3, p0, Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask;->body:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lio/olvid/messenger/databases/entity/Message$JsonMessage;->setBody(Ljava/lang/String;)V

    .line 63
    iget-object v3, p0, Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask;->db:Lio/olvid/messenger/databases/AppDatabase;

    new-instance v4, Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask$2;

    invoke-direct {v4, p0, v0, v1, v2}, Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask$2;-><init>(Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask;Lio/olvid/messenger/databases/entity/Discussion;Lio/olvid/messenger/databases/entity/Message;Lio/olvid/messenger/databases/entity/Message$JsonMessage;)V

    invoke-virtual {v3, v4}, Lio/olvid/messenger/databases/AppDatabase;->runInTransaction(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method
