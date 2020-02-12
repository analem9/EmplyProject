.class Lio/olvid/messenger/activities/DiscussionActivity$SaveDraftTask;
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
    name = "SaveDraftTask"
.end annotation


# instance fields
.field private final discussionId:J

.field private final previousDraftMessage:Lio/olvid/messenger/databases/entity/Message;

.field private final text:Ljava/lang/String;


# direct methods
.method constructor <init>(JLjava/lang/String;Lio/olvid/messenger/databases/entity/Message;)V
    .locals 0

    .line 2650
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2651
    iput-wide p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$SaveDraftTask;->discussionId:J

    .line 2652
    iput-object p3, p0, Lio/olvid/messenger/activities/DiscussionActivity$SaveDraftTask;->text:Ljava/lang/String;

    .line 2653
    iput-object p4, p0, Lio/olvid/messenger/activities/DiscussionActivity$SaveDraftTask;->previousDraftMessage:Lio/olvid/messenger/databases/entity/Message;

    return-void
.end method

.method static synthetic access$6100(Lio/olvid/messenger/activities/DiscussionActivity$SaveDraftTask;)J
    .locals 2

    .line 2645
    iget-wide v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$SaveDraftTask;->discussionId:J

    return-wide v0
.end method

.method static synthetic access$6200(Lio/olvid/messenger/activities/DiscussionActivity$SaveDraftTask;)Ljava/lang/String;
    .locals 0

    .line 2645
    iget-object p0, p0, Lio/olvid/messenger/activities/DiscussionActivity$SaveDraftTask;->text:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$6300(Lio/olvid/messenger/activities/DiscussionActivity$SaveDraftTask;)Lio/olvid/messenger/databases/entity/Message;
    .locals 0

    .line 2645
    iget-object p0, p0, Lio/olvid/messenger/activities/DiscussionActivity$SaveDraftTask;->previousDraftMessage:Lio/olvid/messenger/databases/entity/Message;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2658
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    .line 2659
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;

    move-result-object v1

    iget-wide v2, p0, Lio/olvid/messenger/activities/DiscussionActivity$SaveDraftTask;->discussionId:J

    invoke-virtual {v1, v2, v3}, Lio/olvid/messenger/databases/dao/DiscussionDao;->getById(J)Lio/olvid/messenger/databases/entity/Discussion;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 2663
    :cond_0
    new-instance v2, Lio/olvid/messenger/activities/DiscussionActivity$SaveDraftTask$1;

    invoke-direct {v2, p0, v0, v1}, Lio/olvid/messenger/activities/DiscussionActivity$SaveDraftTask$1;-><init>(Lio/olvid/messenger/activities/DiscussionActivity$SaveDraftTask;Lio/olvid/messenger/databases/AppDatabase;Lio/olvid/messenger/databases/entity/Discussion;)V

    invoke-virtual {v0, v2}, Lio/olvid/messenger/databases/AppDatabase;->runInTransaction(Ljava/lang/Runnable;)V

    return-void
.end method
