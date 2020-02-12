.class Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$5;
.super Ljava/lang/Object;
.source "DiscussionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->onBindViewHolder(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

.field final synthetic val$holder:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;

.field final synthetic val$jsonMessage:Lio/olvid/messenger/databases/entity/Message$JsonMessage;

.field final synthetic val$message:Lio/olvid/messenger/databases/entity/Message;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;Lio/olvid/messenger/databases/entity/Message$JsonMessage;Lio/olvid/messenger/databases/entity/Message;Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)V
    .locals 0

    .line 2204
    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$5;->this$1:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    iput-object p2, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$5;->val$jsonMessage:Lio/olvid/messenger/databases/entity/Message$JsonMessage;

    iput-object p3, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$5;->val$message:Lio/olvid/messenger/databases/entity/Message;

    iput-object p4, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$5;->val$holder:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 2207
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$5;->val$jsonMessage:Lio/olvid/messenger/databases/entity/Message$JsonMessage;

    invoke-virtual {v0}, Lio/olvid/messenger/databases/entity/Message$JsonMessage;->getJsonReply()Lio/olvid/messenger/databases/entity/Message$JsonReply;

    move-result-object v0

    .line 2208
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v2

    invoke-virtual {v0}, Lio/olvid/messenger/databases/entity/Message$JsonReply;->getSenderSequenceNumber()J

    move-result-wide v3

    invoke-virtual {v0}, Lio/olvid/messenger/databases/entity/Message$JsonReply;->getSenderThreadIdentifier()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v0}, Lio/olvid/messenger/databases/entity/Message$JsonReply;->getSenderIdentifier()[B

    move-result-object v6

    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$5;->val$message:Lio/olvid/messenger/databases/entity/Message;

    iget-wide v7, v0, Lio/olvid/messenger/databases/entity/Message;->discussionId:J

    invoke-interface/range {v2 .. v8}, Lio/olvid/messenger/databases/dao/MessageDao;->getBySenderSequenceNumber(JLjava/util/UUID;[BJ)Lio/olvid/messenger/databases/entity/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2211
    iget v1, v0, Lio/olvid/messenger/databases/entity/Message;->totalAttachmentCount:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2216
    :goto_0
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$5$1;

    invoke-direct {v3, p0, v0, v1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$5$1;-><init>(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$5;Lio/olvid/messenger/databases/entity/Message;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
