.class Lio/olvid/messenger/activities/DiscussionActivity$5;
.super Ljava/lang/Object;
.source "DiscussionActivity.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/DiscussionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lio/olvid/messenger/databases/entity/Message;",
        ">;"
    }
.end annotation


# instance fields
.field private message:Lio/olvid/messenger/databases/entity/Message;

.field final synthetic this$0:Lio/olvid/messenger/activities/DiscussionActivity;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/DiscussionActivity;)V
    .locals 0

    .line 456
    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$5;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 457
    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$5;->message:Lio/olvid/messenger/databases/entity/Message;

    return-void
.end method


# virtual methods
.method public onChanged(Lio/olvid/messenger/databases/entity/Message;)V
    .locals 5

    if-eqz p1, :cond_3

    .line 460
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$5;->message:Lio/olvid/messenger/databases/entity/Message;

    if-eqz v0, :cond_3

    .line 461
    iget-wide v0, p1, Lio/olvid/messenger/databases/entity/Message;->id:J

    iget-object v2, p0, Lio/olvid/messenger/activities/DiscussionActivity$5;->message:Lio/olvid/messenger/databases/entity/Message;

    iget-wide v2, v2, Lio/olvid/messenger/databases/entity/Message;->id:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    const-wide/16 v0, 0x0

    .line 463
    iget-object v2, p1, Lio/olvid/messenger/databases/entity/Message;->jsonReply:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, p0, Lio/olvid/messenger/activities/DiscussionActivity$5;->message:Lio/olvid/messenger/databases/entity/Message;

    iget-object v2, v2, Lio/olvid/messenger/databases/entity/Message;->jsonReply:Ljava/lang/String;

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p1, Lio/olvid/messenger/databases/entity/Message;->jsonReply:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lio/olvid/messenger/databases/entity/Message;->jsonReply:Ljava/lang/String;

    iget-object v3, p0, Lio/olvid/messenger/activities/DiscussionActivity$5;->message:Lio/olvid/messenger/databases/entity/Message;

    iget-object v3, v3, Lio/olvid/messenger/databases/entity/Message;->jsonReply:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const-wide/16 v0, 0x1

    .line 467
    :cond_2
    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$5;->message:Lio/olvid/messenger/databases/entity/Message;

    .line 468
    iget-object v2, p0, Lio/olvid/messenger/activities/DiscussionActivity$5;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v2, p1, v0, v1}, Lio/olvid/messenger/activities/DiscussionActivity;->access$500(Lio/olvid/messenger/activities/DiscussionActivity;Lio/olvid/messenger/databases/entity/Message;J)V

    return-void

    .line 472
    :cond_3
    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$5;->message:Lio/olvid/messenger/databases/entity/Message;

    .line 473
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$5;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    const-wide/16 v1, -0x1

    invoke-static {v0, p1, v1, v2}, Lio/olvid/messenger/activities/DiscussionActivity;->access$500(Lio/olvid/messenger/activities/DiscussionActivity;Lio/olvid/messenger/databases/entity/Message;J)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 456
    check-cast p1, Lio/olvid/messenger/databases/entity/Message;

    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/DiscussionActivity$5;->onChanged(Lio/olvid/messenger/databases/entity/Message;)V

    return-void
.end method
