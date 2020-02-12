.class Lio/olvid/messenger/activities/DiscussionActivity$SaveDraftTask$1;
.super Ljava/lang/Object;
.source "DiscussionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/DiscussionActivity$SaveDraftTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/activities/DiscussionActivity$SaveDraftTask;

.field final synthetic val$db:Lio/olvid/messenger/databases/AppDatabase;

.field final synthetic val$discussion:Lio/olvid/messenger/databases/entity/Discussion;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/DiscussionActivity$SaveDraftTask;Lio/olvid/messenger/databases/AppDatabase;Lio/olvid/messenger/databases/entity/Discussion;)V
    .locals 0

    .line 2663
    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$SaveDraftTask$1;->this$0:Lio/olvid/messenger/activities/DiscussionActivity$SaveDraftTask;

    iput-object p2, p0, Lio/olvid/messenger/activities/DiscussionActivity$SaveDraftTask$1;->val$db:Lio/olvid/messenger/databases/AppDatabase;

    iput-object p3, p0, Lio/olvid/messenger/activities/DiscussionActivity$SaveDraftTask$1;->val$discussion:Lio/olvid/messenger/databases/entity/Discussion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 2666
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$SaveDraftTask$1;->val$db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v0

    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$SaveDraftTask$1;->this$0:Lio/olvid/messenger/activities/DiscussionActivity$SaveDraftTask;

    invoke-static {v1}, Lio/olvid/messenger/activities/DiscussionActivity$SaveDraftTask;->access$6100(Lio/olvid/messenger/activities/DiscussionActivity$SaveDraftTask;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lio/olvid/messenger/databases/dao/MessageDao;->getDiscussionDraftMessageSync(J)Lio/olvid/messenger/databases/entity/Message;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2668
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$SaveDraftTask$1;->this$0:Lio/olvid/messenger/activities/DiscussionActivity$SaveDraftTask;

    invoke-static {v0}, Lio/olvid/messenger/activities/DiscussionActivity$SaveDraftTask;->access$6200(Lio/olvid/messenger/activities/DiscussionActivity$SaveDraftTask;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2672
    :cond_0
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$SaveDraftTask$1;->this$0:Lio/olvid/messenger/activities/DiscussionActivity$SaveDraftTask;

    invoke-static {v0}, Lio/olvid/messenger/activities/DiscussionActivity$SaveDraftTask;->access$6100(Lio/olvid/messenger/activities/DiscussionActivity$SaveDraftTask;)J

    move-result-wide v0

    iget-object v2, p0, Lio/olvid/messenger/activities/DiscussionActivity$SaveDraftTask$1;->val$discussion:Lio/olvid/messenger/databases/entity/Discussion;

    iget-object v2, v2, Lio/olvid/messenger/databases/entity/Discussion;->bytesOwnedIdentity:[B

    iget-object v3, p0, Lio/olvid/messenger/activities/DiscussionActivity$SaveDraftTask$1;->val$discussion:Lio/olvid/messenger/databases/entity/Discussion;

    iget-object v3, v3, Lio/olvid/messenger/databases/entity/Discussion;->senderThreadIdentifier:Ljava/util/UUID;

    invoke-static {v0, v1, v2, v3}, Lio/olvid/messenger/databases/entity/Message;->createEmptyDraft(J[BLjava/util/UUID;)Lio/olvid/messenger/databases/entity/Message;

    move-result-object v0

    .line 2673
    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$SaveDraftTask$1;->val$db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v1}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/olvid/messenger/databases/dao/MessageDao;->insert(Lio/olvid/messenger/databases/entity/Message;)J

    move-result-wide v1

    iput-wide v1, v0, Lio/olvid/messenger/databases/entity/Message;->id:J

    goto :goto_0

    .line 2675
    :cond_1
    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$SaveDraftTask$1;->this$0:Lio/olvid/messenger/activities/DiscussionActivity$SaveDraftTask;

    invoke-static {v1}, Lio/olvid/messenger/activities/DiscussionActivity$SaveDraftTask;->access$6300(Lio/olvid/messenger/activities/DiscussionActivity$SaveDraftTask;)Lio/olvid/messenger/databases/entity/Message;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$SaveDraftTask$1;->this$0:Lio/olvid/messenger/activities/DiscussionActivity$SaveDraftTask;

    invoke-static {v1}, Lio/olvid/messenger/activities/DiscussionActivity$SaveDraftTask;->access$6300(Lio/olvid/messenger/activities/DiscussionActivity$SaveDraftTask;)Lio/olvid/messenger/databases/entity/Message;

    move-result-object v1

    iget-wide v1, v1, Lio/olvid/messenger/databases/entity/Message;->id:J

    iget-wide v3, v0, Lio/olvid/messenger/databases/entity/Message;->id:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    goto :goto_1

    .line 2680
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lio/olvid/messenger/databases/entity/Message;->getJsonMessage()Lio/olvid/messenger/databases/entity/Message$JsonMessage;

    move-result-object v1

    .line 2681
    iget-object v2, p0, Lio/olvid/messenger/activities/DiscussionActivity$SaveDraftTask$1;->this$0:Lio/olvid/messenger/activities/DiscussionActivity$SaveDraftTask;

    invoke-static {v2}, Lio/olvid/messenger/activities/DiscussionActivity$SaveDraftTask;->access$6200(Lio/olvid/messenger/activities/DiscussionActivity$SaveDraftTask;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/olvid/messenger/databases/entity/Message$JsonMessage;->setBody(Ljava/lang/String;)V

    .line 2682
    invoke-virtual {v0, v1}, Lio/olvid/messenger/databases/entity/Message;->setJsonMessage(Lio/olvid/messenger/databases/entity/Message$JsonMessage;)V

    .line 2683
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lio/olvid/messenger/databases/entity/Message;->timestamp:J

    .line 2684
    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$SaveDraftTask$1;->val$db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v1}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/olvid/messenger/databases/dao/MessageDao;->update(Lio/olvid/messenger/databases/entity/Message;)V

    :cond_3
    :goto_1
    return-void
.end method
