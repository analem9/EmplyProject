.class Lio/olvid/messenger/activities/DiscussionActivity$SetDraftReplyTask;
.super Ljava/lang/Object;
.source "DiscussionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/activities/DiscussionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SetDraftReplyTask"
.end annotation


# instance fields
.field private final discussionId:Ljava/lang/Long;

.field private final draftBody:Ljava/lang/String;

.field private final selectedMessageId:Ljava/lang/Long;


# direct methods
.method constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    .line 2802
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2803
    iput-object p2, p0, Lio/olvid/messenger/activities/DiscussionActivity$SetDraftReplyTask;->selectedMessageId:Ljava/lang/Long;

    .line 2804
    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$SetDraftReplyTask;->discussionId:Ljava/lang/Long;

    .line 2805
    iput-object p3, p0, Lio/olvid/messenger/activities/DiscussionActivity$SetDraftReplyTask;->draftBody:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 2810
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$SetDraftReplyTask;->selectedMessageId:Ljava/lang/Long;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$SetDraftReplyTask;->discussionId:Ljava/lang/Long;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2814
    :cond_0
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    .line 2815
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/messenger/activities/DiscussionActivity$SetDraftReplyTask;->selectedMessageId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lio/olvid/messenger/databases/dao/MessageDao;->get(J)Lio/olvid/messenger/databases/entity/Message;

    move-result-object v1

    .line 2816
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/messenger/activities/DiscussionActivity$SetDraftReplyTask;->discussionId:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lio/olvid/messenger/databases/dao/DiscussionDao;->getById(J)Lio/olvid/messenger/databases/entity/Discussion;

    move-result-object v2

    if-eqz v1, :cond_3

    if-nez v2, :cond_1

    goto :goto_0

    .line 2822
    :cond_1
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v3

    iget-object v4, p0, Lio/olvid/messenger/activities/DiscussionActivity$SetDraftReplyTask;->discussionId:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lio/olvid/messenger/databases/dao/MessageDao;->getDiscussionDraftMessageSync(J)Lio/olvid/messenger/databases/entity/Message;

    move-result-object v3

    if-nez v3, :cond_2

    .line 2825
    iget-object v3, p0, Lio/olvid/messenger/activities/DiscussionActivity$SetDraftReplyTask;->discussionId:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, v2, Lio/olvid/messenger/databases/entity/Discussion;->bytesOwnedIdentity:[B

    iget-object v2, v2, Lio/olvid/messenger/databases/entity/Discussion;->senderThreadIdentifier:Ljava/util/UUID;

    invoke-static {v3, v4, v5, v2}, Lio/olvid/messenger/databases/entity/Message;->createEmptyDraft(J[BLjava/util/UUID;)Lio/olvid/messenger/databases/entity/Message;

    move-result-object v3

    .line 2826
    iget-object v2, p0, Lio/olvid/messenger/activities/DiscussionActivity$SetDraftReplyTask;->draftBody:Ljava/lang/String;

    iput-object v2, v3, Lio/olvid/messenger/databases/entity/Message;->contentBody:Ljava/lang/String;

    .line 2827
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v2

    invoke-interface {v2, v3}, Lio/olvid/messenger/databases/dao/MessageDao;->insert(Lio/olvid/messenger/databases/entity/Message;)J

    move-result-wide v4

    iput-wide v4, v3, Lio/olvid/messenger/databases/entity/Message;->id:J

    .line 2829
    :cond_2
    invoke-static {v1}, Lio/olvid/messenger/databases/entity/Message$JsonReply;->of(Lio/olvid/messenger/databases/entity/Message;)Lio/olvid/messenger/databases/entity/Message$JsonReply;

    move-result-object v1

    .line 2831
    :try_start_0
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getJsonObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lio/olvid/messenger/databases/entity/Message;->jsonReply:Ljava/lang/String;

    .line 2832
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v3, Lio/olvid/messenger/databases/entity/Message;->timestamp:J

    .line 2833
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v0

    invoke-interface {v0, v3}, Lio/olvid/messenger/databases/dao/MessageDao;->update(Lio/olvid/messenger/databases/entity/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2835
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method
