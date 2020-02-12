.class Lio/olvid/messenger/fragments/DiscussionListFragment$3;
.super Ljava/lang/Object;
.source "DiscussionListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/fragments/DiscussionListFragment;->callback(Ljava/lang/String;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/fragments/DiscussionListFragment;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lio/olvid/messenger/fragments/DiscussionListFragment;Z)V
    .locals 0

    .line 176
    iput-object p1, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$3;->this$0:Lio/olvid/messenger/fragments/DiscussionListFragment;

    iput-boolean p2, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$3;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 179
    iget-object v0, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$3;->this$0:Lio/olvid/messenger/fragments/DiscussionListFragment;

    invoke-static {v0}, Lio/olvid/messenger/fragments/DiscussionListFragment;->access$100(Lio/olvid/messenger/fragments/DiscussionListFragment;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 180
    iget-boolean v0, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$3;->val$success:Z

    if-nez v0, :cond_0

    const v0, 0x7f100206

    .line 181
    invoke-static {v0, v1}, Lio/olvid/messenger/App;->toast(II)V

    :cond_0
    return-void
.end method
