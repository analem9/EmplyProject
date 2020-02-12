.class Lio/olvid/messenger/activities/DiscussionActivity$4$1;
.super Ljava/lang/Object;
.source "DiscussionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/DiscussionActivity$4;->onActionItemClicked(Landroidx/appcompat/view/ActionMode;Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/olvid/messenger/activities/DiscussionActivity$4;

.field final synthetic val$selectedMessageIds:Ljava/util/List;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/DiscussionActivity$4;Ljava/util/List;)V
    .locals 0

    .line 424
    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$4$1;->this$1:Lio/olvid/messenger/activities/DiscussionActivity$4;

    iput-object p2, p0, Lio/olvid/messenger/activities/DiscussionActivity$4$1;->val$selectedMessageIds:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 427
    new-instance p1, Lio/olvid/messenger/databases/tasks/DeleteMessagesTask;

    iget-object p2, p0, Lio/olvid/messenger/activities/DiscussionActivity$4$1;->val$selectedMessageIds:Ljava/util/List;

    invoke-direct {p1, p2}, Lio/olvid/messenger/databases/tasks/DeleteMessagesTask;-><init>(Ljava/util/List;)V

    invoke-static {p1}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    .line 428
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$4$1;->this$1:Lio/olvid/messenger/activities/DiscussionActivity$4;

    iget-object p1, p1, Lio/olvid/messenger/activities/DiscussionActivity$4;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity;->access$300(Lio/olvid/messenger/activities/DiscussionActivity;)Lio/olvid/messenger/viewModels/DiscussionViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lio/olvid/messenger/viewModels/DiscussionViewModel;->deselectAll()V

    return-void
.end method
