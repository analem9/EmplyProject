.class Lio/olvid/messenger/activities/DiscussionActivity$ClearDraftReplyTask;
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
    name = "ClearDraftReplyTask"
.end annotation


# instance fields
.field private final discussionId:Ljava/lang/Long;


# direct methods
.method constructor <init>(Ljava/lang/Long;)V
    .locals 0

    .line 2845
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2846
    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$ClearDraftReplyTask;->discussionId:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2851
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$ClearDraftReplyTask;->discussionId:Ljava/lang/Long;

    if-nez v0, :cond_0

    return-void

    .line 2855
    :cond_0
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    .line 2856
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/messenger/activities/DiscussionActivity$ClearDraftReplyTask;->discussionId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lio/olvid/messenger/databases/dao/DiscussionDao;->getById(J)Lio/olvid/messenger/databases/entity/Discussion;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 2860
    :cond_1
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/messenger/activities/DiscussionActivity$ClearDraftReplyTask;->discussionId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lio/olvid/messenger/databases/dao/MessageDao;->getDiscussionDraftMessageSync(J)Lio/olvid/messenger/databases/entity/Message;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    .line 2862
    iput-object v2, v1, Lio/olvid/messenger/databases/entity/Message;->jsonReply:Ljava/lang/String;

    .line 2863
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v0

    invoke-interface {v0, v1}, Lio/olvid/messenger/databases/dao/MessageDao;->update(Lio/olvid/messenger/databases/entity/Message;)V

    :cond_2
    return-void
.end method
