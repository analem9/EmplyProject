.class public Lio/olvid/messenger/databases/tasks/DeleteMessagesTask;
.super Ljava/lang/Object;
.source "DeleteMessagesTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final discussionId:Ljava/lang/Long;

.field private final selectedMessageIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final wholeDiscussion:Z


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lio/olvid/messenger/databases/tasks/DeleteMessagesTask;->wholeDiscussion:Z

    .line 25
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/messenger/databases/tasks/DeleteMessagesTask;->discussionId:Ljava/lang/Long;

    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lio/olvid/messenger/databases/tasks/DeleteMessagesTask;->selectedMessageIds:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lio/olvid/messenger/databases/tasks/DeleteMessagesTask;->wholeDiscussion:Z

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lio/olvid/messenger/databases/tasks/DeleteMessagesTask;->discussionId:Ljava/lang/Long;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/olvid/messenger/databases/tasks/DeleteMessagesTask;->selectedMessageIds:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 38
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    .line 41
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object v1

    .line 43
    iget-boolean v2, p0, Lio/olvid/messenger/databases/tasks/DeleteMessagesTask;->wholeDiscussion:Z

    if-eqz v2, :cond_1

    .line 44
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/messenger/databases/tasks/DeleteMessagesTask;->discussionId:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lio/olvid/messenger/databases/dao/DiscussionDao;->getById(J)Lio/olvid/messenger/databases/entity/Discussion;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 48
    :cond_0
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v3

    iget-object v4, p0, Lio/olvid/messenger/databases/tasks/DeleteMessagesTask;->discussionId:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lio/olvid/messenger/databases/dao/MessageDao;->getAllDiscussionMessagesSync(J)Ljava/util/List;

    move-result-object v3

    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/messenger/databases/tasks/DeleteMessagesTask;->selectedMessageIds:Ljava/util/List;

    invoke-interface {v2, v3}, Lio/olvid/messenger/databases/dao/MessageDao;->getMany(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    const/4 v2, 0x0

    .line 53
    :goto_0
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 54
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 56
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/olvid/messenger/databases/entity/Message;

    .line 57
    invoke-virtual {v7}, Lio/olvid/messenger/databases/entity/Message;->hasAttachments()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 58
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->fyleMessageJoinWithStatusDao()Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;

    move-result-object v8

    iget-wide v9, v7, Lio/olvid/messenger/databases/entity/Message;->id:J

    invoke-interface {v8, v9, v10}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;->getFylesAndStatusForMessageSync(J)Ljava/util/List;

    move-result-object v8

    .line 59
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    .line 60
    iget-object v10, v9, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyleMessageJoinWithStatus:Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    iget v10, v10, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->status:I

    if-eqz v10, :cond_3

    const/4 v11, 0x1

    if-eq v10, v11, :cond_3

    const/4 v11, 0x3

    if-eq v10, v11, :cond_2

    goto :goto_3

    .line 66
    :cond_2
    iget-object v10, v9, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyleMessageJoinWithStatus:Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    iget-object v10, v10, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->engineMessageIdentifier:[B

    iget-object v11, v9, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyleMessageJoinWithStatus:Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    iget-object v11, v11, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->engineNumber:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v1, v10, v11}, Lio/olvid/engine/engine/Engine;->cancelAttachmentUpload([BI)V

    goto :goto_3

    .line 63
    :cond_3
    iget-object v10, v9, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyleMessageJoinWithStatus:Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    iget-object v10, v10, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->engineMessageIdentifier:[B

    iget-object v11, v9, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyleMessageJoinWithStatus:Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    iget-object v11, v11, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->engineNumber:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v1, v10, v11}, Lio/olvid/engine/engine/Engine;->deleteAttachment([BI)V

    .line 69
    :goto_3
    iget-object v9, v9, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyle:Lio/olvid/messenger/databases/entity/Fyle;

    invoke-virtual {v4, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 72
    :cond_4
    iget-wide v7, v7, Lio/olvid/messenger/databases/entity/Message;->discussionId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 76
    :cond_5
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v1

    const/4 v6, 0x0

    new-array v6, v6, [Lio/olvid/messenger/databases/entity/Message;

    invoke-interface {v3, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lio/olvid/messenger/databases/entity/Message;

    invoke-interface {v1, v3}, Lio/olvid/messenger/databases/dao/MessageDao;->delete([Lio/olvid/messenger/databases/entity/Message;)V

    .line 79
    iget-boolean v1, p0, Lio/olvid/messenger/databases/tasks/DeleteMessagesTask;->wholeDiscussion:Z

    if-eqz v1, :cond_6

    .line 80
    invoke-virtual {v2}, Lio/olvid/messenger/databases/entity/Discussion;->isLocked()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 81
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;

    move-result-object v1

    invoke-virtual {v1, v2}, Lio/olvid/messenger/databases/dao/DiscussionDao;->delete(Lio/olvid/messenger/databases/entity/Discussion;)V

    goto :goto_5

    .line 84
    :cond_6
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 85
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lio/olvid/messenger/databases/dao/DiscussionDao;->getById(J)Lio/olvid/messenger/databases/entity/Discussion;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 86
    invoke-virtual {v3}, Lio/olvid/messenger/databases/entity/Discussion;->isLocked()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 87
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v5, v6, v7}, Lio/olvid/messenger/databases/dao/MessageDao;->countMessagesInDiscussion(J)I

    move-result v2

    if-nez v2, :cond_7

    .line 88
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;

    move-result-object v2

    invoke-virtual {v2, v3}, Lio/olvid/messenger/databases/dao/DiscussionDao;->delete(Lio/olvid/messenger/databases/entity/Discussion;)V

    goto :goto_4

    .line 95
    :cond_8
    :goto_5
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/olvid/messenger/databases/entity/Fyle;

    .line 96
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->fyleMessageJoinWithStatusDao()Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;

    move-result-object v3

    iget-wide v4, v2, Lio/olvid/messenger/databases/entity/Fyle;->id:J

    invoke-interface {v3, v4, v5}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;->countMessageForFyle(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_9

    .line 98
    iget-object v3, v2, Lio/olvid/messenger/databases/entity/Fyle;->sha256:[B

    invoke-static {v3}, Lio/olvid/messenger/databases/entity/Fyle;->acquireLock([B)V

    .line 99
    invoke-virtual {v2}, Lio/olvid/messenger/databases/entity/Fyle;->delete()V

    .line 100
    iget-object v2, v2, Lio/olvid/messenger/databases/entity/Fyle;->sha256:[B

    invoke-static {v2}, Lio/olvid/messenger/databases/entity/Fyle;->releaseLock([B)V

    goto :goto_6

    :cond_a
    return-void
.end method
