.class Lio/olvid/messenger/fragments/GroupListFragment$2;
.super Ljava/lang/Object;
.source "GroupListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/fragments/GroupListFragment;->callback(Ljava/lang/String;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/fragments/GroupListFragment;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lio/olvid/messenger/fragments/GroupListFragment;Z)V
    .locals 0

    .line 121
    iput-object p1, p0, Lio/olvid/messenger/fragments/GroupListFragment$2;->this$0:Lio/olvid/messenger/fragments/GroupListFragment;

    iput-boolean p2, p0, Lio/olvid/messenger/fragments/GroupListFragment$2;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 124
    iget-object v0, p0, Lio/olvid/messenger/fragments/GroupListFragment$2;->this$0:Lio/olvid/messenger/fragments/GroupListFragment;

    invoke-static {v0}, Lio/olvid/messenger/fragments/GroupListFragment;->access$000(Lio/olvid/messenger/fragments/GroupListFragment;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 125
    iget-boolean v0, p0, Lio/olvid/messenger/fragments/GroupListFragment$2;->val$success:Z

    if-nez v0, :cond_0

    const v0, 0x7f100206

    .line 126
    invoke-static {v0, v1}, Lio/olvid/messenger/App;->toast(II)V

    :cond_0
    return-void
.end method
