.class Lio/olvid/messenger/activities/DiscussionActivity$18;
.super Ljava/lang/Object;
.source "DiscussionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/DiscussionActivity;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/activities/DiscussionActivity;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/DiscussionActivity;)V
    .locals 0

    .line 1606
    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$18;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1609
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1610
    iget-object p2, p0, Lio/olvid/messenger/activities/DiscussionActivity$18;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {p2}, Lio/olvid/messenger/activities/DiscussionActivity;->access$2400(Lio/olvid/messenger/activities/DiscussionActivity;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1611
    new-instance p2, Lio/olvid/messenger/databases/tasks/DeleteMessagesTask;

    invoke-direct {p2, p1}, Lio/olvid/messenger/databases/tasks/DeleteMessagesTask;-><init>(Ljava/util/List;)V

    invoke-static {p2}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    return-void
.end method
