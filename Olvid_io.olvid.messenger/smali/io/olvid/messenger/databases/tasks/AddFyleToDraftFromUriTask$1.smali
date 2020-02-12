.class Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask$1;
.super Ljava/lang/Object;
.source "AddFyleToDraftFromUriTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask;

.field final synthetic val$db:Lio/olvid/messenger/databases/AppDatabase;


# direct methods
.method constructor <init>(Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask;Lio/olvid/messenger/databases/AppDatabase;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask$1;->this$0:Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask;

    iput-object p2, p0, Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask$1;->val$db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 53
    iget-object v0, p0, Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask$1;->val$db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v0

    iget-object v1, p0, Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask$1;->this$0:Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask;

    invoke-static {v1}, Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask;->access$000(Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lio/olvid/messenger/databases/dao/MessageDao;->getDiscussionDraftMessageSync(J)Lio/olvid/messenger/databases/entity/Message;

    move-result-object v0

    if-nez v0, :cond_1

    .line 55
    iget-object v0, p0, Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask$1;->val$db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;

    move-result-object v0

    iget-object v1, p0, Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask$1;->this$0:Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask;

    invoke-static {v1}, Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask;->access$000(Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/olvid/messenger/databases/dao/DiscussionDao;->getById(J)Lio/olvid/messenger/databases/entity/Discussion;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 59
    :cond_0
    iget-object v1, p0, Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask$1;->this$0:Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask;

    invoke-static {v1}, Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask;->access$000(Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask;)J

    move-result-wide v1

    iget-object v3, v0, Lio/olvid/messenger/databases/entity/Discussion;->bytesOwnedIdentity:[B

    iget-object v0, v0, Lio/olvid/messenger/databases/entity/Discussion;->senderThreadIdentifier:Ljava/util/UUID;

    invoke-static {v1, v2, v3, v0}, Lio/olvid/messenger/databases/entity/Message;->createEmptyDraft(J[BLjava/util/UUID;)Lio/olvid/messenger/databases/entity/Message;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask$1;->val$db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v1}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/olvid/messenger/databases/dao/MessageDao;->insert(Lio/olvid/messenger/databases/entity/Message;)J

    :cond_1
    return-void
.end method
