.class Lio/olvid/messenger/activities/DiscussionActivity$16;
.super Ljava/lang/Object;
.source "DiscussionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/DiscussionActivity;->loadDraft(Lio/olvid/messenger/databases/entity/Message;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/activities/DiscussionActivity;

.field final synthetic val$draftMessage:Lio/olvid/messenger/databases/entity/Message;

.field final synthetic val$jsonReply:Lio/olvid/messenger/databases/entity/Message$JsonReply;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/DiscussionActivity;Lio/olvid/messenger/databases/entity/Message$JsonReply;Lio/olvid/messenger/databases/entity/Message;)V
    .locals 0

    .line 1374
    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$16;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    iput-object p2, p0, Lio/olvid/messenger/activities/DiscussionActivity$16;->val$jsonReply:Lio/olvid/messenger/databases/entity/Message$JsonReply;

    iput-object p3, p0, Lio/olvid/messenger/activities/DiscussionActivity$16;->val$draftMessage:Lio/olvid/messenger/databases/entity/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1377
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v1

    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$16;->val$jsonReply:Lio/olvid/messenger/databases/entity/Message$JsonReply;

    invoke-virtual {v0}, Lio/olvid/messenger/databases/entity/Message$JsonReply;->getSenderSequenceNumber()J

    move-result-wide v2

    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$16;->val$jsonReply:Lio/olvid/messenger/databases/entity/Message$JsonReply;

    invoke-virtual {v0}, Lio/olvid/messenger/databases/entity/Message$JsonReply;->getSenderThreadIdentifier()Ljava/util/UUID;

    move-result-object v4

    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$16;->val$jsonReply:Lio/olvid/messenger/databases/entity/Message$JsonReply;

    invoke-virtual {v0}, Lio/olvid/messenger/databases/entity/Message$JsonReply;->getSenderIdentifier()[B

    move-result-object v5

    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$16;->val$draftMessage:Lio/olvid/messenger/databases/entity/Message;

    iget-wide v6, v0, Lio/olvid/messenger/databases/entity/Message;->discussionId:J

    invoke-interface/range {v1 .. v7}, Lio/olvid/messenger/databases/dao/MessageDao;->getBySenderSequenceNumber(JLjava/util/UUID;[BJ)Lio/olvid/messenger/databases/entity/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1380
    iget v1, v0, Lio/olvid/messenger/databases/entity/Message;->totalAttachmentCount:I

    .line 1381
    iget-object v2, p0, Lio/olvid/messenger/activities/DiscussionActivity$16;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    iget-wide v3, v0, Lio/olvid/messenger/databases/entity/Message;->id:J

    invoke-static {v2, v3, v4}, Lio/olvid/messenger/activities/DiscussionActivity;->access$2102(Lio/olvid/messenger/activities/DiscussionActivity;J)J

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1384
    iget-object v2, p0, Lio/olvid/messenger/activities/DiscussionActivity$16;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    const-wide/16 v3, -0x1

    invoke-static {v2, v3, v4}, Lio/olvid/messenger/activities/DiscussionActivity;->access$2102(Lio/olvid/messenger/activities/DiscussionActivity;J)J

    .line 1387
    :goto_0
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lio/olvid/messenger/activities/DiscussionActivity$16$1;

    invoke-direct {v3, p0, v0, v1}, Lio/olvid/messenger/activities/DiscussionActivity$16$1;-><init>(Lio/olvid/messenger/activities/DiscussionActivity$16;Lio/olvid/messenger/databases/entity/Message;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
