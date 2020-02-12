.class Lio/olvid/messenger/fragments/DiscussionListFragment$2$1;
.super Ljava/lang/Object;
.source "DiscussionListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/fragments/DiscussionListFragment$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/olvid/messenger/fragments/DiscussionListFragment$2;


# direct methods
.method constructor <init>(Lio/olvid/messenger/fragments/DiscussionListFragment$2;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$2$1;->this$1:Lio/olvid/messenger/fragments/DiscussionListFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 154
    iget-object v0, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$2$1;->this$1:Lio/olvid/messenger/fragments/DiscussionListFragment$2;

    iget-object v0, v0, Lio/olvid/messenger/fragments/DiscussionListFragment$2;->this$0:Lio/olvid/messenger/fragments/DiscussionListFragment;

    invoke-static {v0}, Lio/olvid/messenger/fragments/DiscussionListFragment;->access$100(Lio/olvid/messenger/fragments/DiscussionListFragment;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$2$1;->this$1:Lio/olvid/messenger/fragments/DiscussionListFragment$2;

    iget-object v0, v0, Lio/olvid/messenger/fragments/DiscussionListFragment$2;->this$0:Lio/olvid/messenger/fragments/DiscussionListFragment;

    invoke-static {v0}, Lio/olvid/messenger/fragments/DiscussionListFragment;->access$100(Lio/olvid/messenger/fragments/DiscussionListFragment;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    const v0, 0x7f100206

    .line 156
    invoke-static {v0, v1}, Lio/olvid/messenger/App;->toast(II)V

    :cond_0
    return-void
.end method
