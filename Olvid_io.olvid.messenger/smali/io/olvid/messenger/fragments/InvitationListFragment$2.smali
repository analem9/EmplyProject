.class Lio/olvid/messenger/fragments/InvitationListFragment$2;
.super Ljava/lang/Object;
.source "InvitationListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/fragments/InvitationListFragment;->callback(Ljava/lang/String;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/fragments/InvitationListFragment;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lio/olvid/messenger/fragments/InvitationListFragment;Z)V
    .locals 0

    .line 138
    iput-object p1, p0, Lio/olvid/messenger/fragments/InvitationListFragment$2;->this$0:Lio/olvid/messenger/fragments/InvitationListFragment;

    iput-boolean p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$2;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 141
    iget-object v0, p0, Lio/olvid/messenger/fragments/InvitationListFragment$2;->this$0:Lio/olvid/messenger/fragments/InvitationListFragment;

    invoke-static {v0}, Lio/olvid/messenger/fragments/InvitationListFragment;->access$000(Lio/olvid/messenger/fragments/InvitationListFragment;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 142
    iget-boolean v0, p0, Lio/olvid/messenger/fragments/InvitationListFragment$2;->val$success:Z

    if-nez v0, :cond_0

    const v0, 0x7f100206

    .line 143
    invoke-static {v0, v1}, Lio/olvid/messenger/App;->toast(II)V

    :cond_0
    return-void
.end method
