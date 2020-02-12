.class public Lio/olvid/messenger/databases/tasks/ReplaceDiscussionDraftTask;
.super Ljava/lang/Object;
.source "ReplaceDiscussionDraftTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final discussionId:J

.field private final draftFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final draftText:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-wide p1, p0, Lio/olvid/messenger/databases/tasks/ReplaceDiscussionDraftTask;->discussionId:J

    .line 21
    iput-object p3, p0, Lio/olvid/messenger/databases/tasks/ReplaceDiscussionDraftTask;->draftText:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lio/olvid/messenger/databases/tasks/ReplaceDiscussionDraftTask;->draftFiles:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lio/olvid/messenger/databases/tasks/ReplaceDiscussionDraftTask;)J
    .locals 2

    .line 14
    iget-wide v0, p0, Lio/olvid/messenger/databases/tasks/ReplaceDiscussionDraftTask;->discussionId:J

    return-wide v0
.end method

.method static synthetic access$100(Lio/olvid/messenger/databases/tasks/ReplaceDiscussionDraftTask;)Ljava/lang/String;
    .locals 0

    .line 14
    iget-object p0, p0, Lio/olvid/messenger/databases/tasks/ReplaceDiscussionDraftTask;->draftText:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 27
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;

    move-result-object v1

    iget-wide v2, p0, Lio/olvid/messenger/databases/tasks/ReplaceDiscussionDraftTask;->discussionId:J

    invoke-virtual {v1, v2, v3}, Lio/olvid/messenger/databases/dao/DiscussionDao;->getById(J)Lio/olvid/messenger/databases/entity/Discussion;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "Trying to replace draft in a non-existing discussion"

    .line 30
    invoke-static {v0}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    return-void

    .line 33
    :cond_0
    new-instance v2, Lio/olvid/messenger/databases/tasks/ReplaceDiscussionDraftTask$1;

    invoke-direct {v2, p0, v0, v1}, Lio/olvid/messenger/databases/tasks/ReplaceDiscussionDraftTask$1;-><init>(Lio/olvid/messenger/databases/tasks/ReplaceDiscussionDraftTask;Lio/olvid/messenger/databases/AppDatabase;Lio/olvid/messenger/databases/entity/Discussion;)V

    invoke-virtual {v0, v2}, Lio/olvid/messenger/databases/AppDatabase;->runInTransaction(Ljava/lang/Runnable;)V

    .line 48
    iget-object v0, p0, Lio/olvid/messenger/databases/tasks/ReplaceDiscussionDraftTask;->draftFiles:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 49
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 50
    new-instance v2, Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask;

    iget-wide v3, p0, Lio/olvid/messenger/databases/tasks/ReplaceDiscussionDraftTask;->discussionId:J

    invoke-direct {v2, v1, v3, v4}, Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask;-><init>(Landroid/net/Uri;J)V

    invoke-static {v2}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method
