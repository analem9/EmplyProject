.class Lio/olvid/messenger/activities/DiscussionActivity$11;
.super Ljava/lang/Object;
.source "DiscussionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/DiscussionActivity;->handleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/activities/DiscussionActivity;

.field final synthetic val$discussionId:J

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/DiscussionActivity;JLandroid/content/Intent;)V
    .locals 0

    .line 940
    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$11;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    iput-wide p2, p0, Lio/olvid/messenger/activities/DiscussionActivity$11;->val$discussionId:J

    iput-object p4, p0, Lio/olvid/messenger/activities/DiscussionActivity$11;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 943
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;

    move-result-object v0

    iget-wide v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$11;->val$discussionId:J

    invoke-virtual {v0, v1, v2}, Lio/olvid/messenger/databases/dao/DiscussionDao;->getById(J)Lio/olvid/messenger/databases/entity/Discussion;

    move-result-object v0

    if-nez v0, :cond_0

    .line 945
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$11;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v0}, Lio/olvid/messenger/activities/DiscussionActivity;->access$1800(Lio/olvid/messenger/activities/DiscussionActivity;)V

    goto :goto_0

    .line 947
    :cond_0
    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$11;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    iget-wide v2, v0, Lio/olvid/messenger/databases/entity/Discussion;->id:J

    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$11;->val$intent:Landroid/content/Intent;

    invoke-static {v1, v2, v3, v0}, Lio/olvid/messenger/activities/DiscussionActivity;->access$1900(Lio/olvid/messenger/activities/DiscussionActivity;JLandroid/content/Intent;)V

    :goto_0
    return-void
.end method
