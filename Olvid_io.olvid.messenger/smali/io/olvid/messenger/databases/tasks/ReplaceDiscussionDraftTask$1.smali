.class Lio/olvid/messenger/databases/tasks/ReplaceDiscussionDraftTask$1;
.super Ljava/lang/Object;
.source "ReplaceDiscussionDraftTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/databases/tasks/ReplaceDiscussionDraftTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/databases/tasks/ReplaceDiscussionDraftTask;

.field final synthetic val$db:Lio/olvid/messenger/databases/AppDatabase;

.field final synthetic val$discussion:Lio/olvid/messenger/databases/entity/Discussion;


# direct methods
.method constructor <init>(Lio/olvid/messenger/databases/tasks/ReplaceDiscussionDraftTask;Lio/olvid/messenger/databases/AppDatabase;Lio/olvid/messenger/databases/entity/Discussion;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lio/olvid/messenger/databases/tasks/ReplaceDiscussionDraftTask$1;->this$0:Lio/olvid/messenger/databases/tasks/ReplaceDiscussionDraftTask;

    iput-object p2, p0, Lio/olvid/messenger/databases/tasks/ReplaceDiscussionDraftTask$1;->val$db:Lio/olvid/messenger/databases/AppDatabase;

    iput-object p3, p0, Lio/olvid/messenger/databases/tasks/ReplaceDiscussionDraftTask$1;->val$discussion:Lio/olvid/messenger/databases/entity/Discussion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 37
    iget-object v0, p0, Lio/olvid/messenger/databases/tasks/ReplaceDiscussionDraftTask$1;->val$db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v0

    iget-object v1, p0, Lio/olvid/messenger/databases/tasks/ReplaceDiscussionDraftTask$1;->this$0:Lio/olvid/messenger/databases/tasks/ReplaceDiscussionDraftTask;

    invoke-static {v1}, Lio/olvid/messenger/databases/tasks/ReplaceDiscussionDraftTask;->access$000(Lio/olvid/messenger/databases/tasks/ReplaceDiscussionDraftTask;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lio/olvid/messenger/databases/dao/MessageDao;->getDiscussionDraftMessageSync(J)Lio/olvid/messenger/databases/entity/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v1, p0, Lio/olvid/messenger/databases/tasks/ReplaceDiscussionDraftTask$1;->val$db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v1}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lio/olvid/messenger/databases/entity/Message;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-interface {v1, v2}, Lio/olvid/messenger/databases/dao/MessageDao;->delete([Lio/olvid/messenger/databases/entity/Message;)V

    .line 43
    :cond_0
    iget-object v0, p0, Lio/olvid/messenger/databases/tasks/ReplaceDiscussionDraftTask$1;->this$0:Lio/olvid/messenger/databases/tasks/ReplaceDiscussionDraftTask;

    invoke-static {v0}, Lio/olvid/messenger/databases/tasks/ReplaceDiscussionDraftTask;->access$000(Lio/olvid/messenger/databases/tasks/ReplaceDiscussionDraftTask;)J

    move-result-wide v0

    iget-object v2, p0, Lio/olvid/messenger/databases/tasks/ReplaceDiscussionDraftTask$1;->val$discussion:Lio/olvid/messenger/databases/entity/Discussion;

    iget-object v2, v2, Lio/olvid/messenger/databases/entity/Discussion;->bytesOwnedIdentity:[B

    iget-object v3, p0, Lio/olvid/messenger/databases/tasks/ReplaceDiscussionDraftTask$1;->val$discussion:Lio/olvid/messenger/databases/entity/Discussion;

    iget-object v3, v3, Lio/olvid/messenger/databases/entity/Discussion;->senderThreadIdentifier:Ljava/util/UUID;

    invoke-static {v0, v1, v2, v3}, Lio/olvid/messenger/databases/entity/Message;->createEmptyDraft(J[BLjava/util/UUID;)Lio/olvid/messenger/databases/entity/Message;

    move-result-object v0

    .line 44
    new-instance v1, Lio/olvid/messenger/databases/entity/Message$JsonMessage;

    iget-object v2, p0, Lio/olvid/messenger/databases/tasks/ReplaceDiscussionDraftTask$1;->this$0:Lio/olvid/messenger/databases/tasks/ReplaceDiscussionDraftTask;

    invoke-static {v2}, Lio/olvid/messenger/databases/tasks/ReplaceDiscussionDraftTask;->access$100(Lio/olvid/messenger/databases/tasks/ReplaceDiscussionDraftTask;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/olvid/messenger/databases/entity/Message$JsonMessage;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/olvid/messenger/databases/entity/Message;->setJsonMessage(Lio/olvid/messenger/databases/entity/Message$JsonMessage;)V

    .line 45
    iget-object v1, p0, Lio/olvid/messenger/databases/tasks/ReplaceDiscussionDraftTask$1;->val$db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v1}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/olvid/messenger/databases/dao/MessageDao;->insert(Lio/olvid/messenger/databases/entity/Message;)J

    move-result-wide v1

    iput-wide v1, v0, Lio/olvid/messenger/databases/entity/Message;->id:J

    return-void
.end method
