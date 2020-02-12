.class Lio/olvid/messenger/activities/DiscussionActivity$6$1;
.super Ljava/lang/Object;
.source "DiscussionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/DiscussionActivity$6;->onChanged(Lio/olvid/messenger/databases/entity/Discussion;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/olvid/messenger/activities/DiscussionActivity$6;

.field final synthetic val$discussion:Lio/olvid/messenger/databases/entity/Discussion;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/DiscussionActivity$6;Lio/olvid/messenger/databases/entity/Discussion;)V
    .locals 0

    .line 491
    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$6$1;->this$1:Lio/olvid/messenger/activities/DiscussionActivity$6;

    iput-object p2, p0, Lio/olvid/messenger/activities/DiscussionActivity$6$1;->val$discussion:Lio/olvid/messenger/databases/entity/Discussion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 494
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$6$1;->this$1:Lio/olvid/messenger/activities/DiscussionActivity$6;

    iget-object v0, v0, Lio/olvid/messenger/activities/DiscussionActivity$6;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$6$1;->val$discussion:Lio/olvid/messenger/databases/entity/Discussion;

    iget-object v1, v1, Lio/olvid/messenger/databases/entity/Discussion;->bytesOwnedIdentity:[B

    iget-object v2, p0, Lio/olvid/messenger/activities/DiscussionActivity$6$1;->val$discussion:Lio/olvid/messenger/databases/entity/Discussion;

    iget-object v2, v2, Lio/olvid/messenger/databases/entity/Discussion;->bytesGroupOwnerAndUid:[B

    invoke-static {v0, v1, v2}, Lio/olvid/messenger/App;->openGroupDetailsActivity(Landroid/content/Context;[B[B)V

    return-void
.end method
