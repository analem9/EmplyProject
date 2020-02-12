.class Lio/olvid/messenger/fragments/DiscussionListFragment$4;
.super Ljava/lang/Object;
.source "DiscussionListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/fragments/DiscussionListFragment;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/fragments/DiscussionListFragment;


# direct methods
.method constructor <init>(Lio/olvid/messenger/fragments/DiscussionListFragment;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$4;->this$0:Lio/olvid/messenger/fragments/DiscussionListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 284
    new-instance p1, Lio/olvid/messenger/databases/tasks/DeleteMessagesTask;

    iget-object p2, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$4;->this$0:Lio/olvid/messenger/fragments/DiscussionListFragment;

    invoke-static {p2}, Lio/olvid/messenger/fragments/DiscussionListFragment;->access$200(Lio/olvid/messenger/fragments/DiscussionListFragment;)Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;

    move-result-object p2

    iget-object p2, p2, Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;->discussion:Lio/olvid/messenger/databases/entity/Discussion;

    iget-wide v0, p2, Lio/olvid/messenger/databases/entity/Discussion;->id:J

    invoke-direct {p1, v0, v1}, Lio/olvid/messenger/databases/tasks/DeleteMessagesTask;-><init>(J)V

    invoke-static {p1}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    return-void
.end method
