.class Lio/olvid/messenger/fragments/ContactListFragment$4;
.super Ljava/lang/Object;
.source "ContactListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/fragments/ContactListFragment;->callback(Ljava/lang/String;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/fragments/ContactListFragment;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lio/olvid/messenger/fragments/ContactListFragment;Z)V
    .locals 0

    .line 179
    iput-object p1, p0, Lio/olvid/messenger/fragments/ContactListFragment$4;->this$0:Lio/olvid/messenger/fragments/ContactListFragment;

    iput-boolean p2, p0, Lio/olvid/messenger/fragments/ContactListFragment$4;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 182
    iget-object v0, p0, Lio/olvid/messenger/fragments/ContactListFragment$4;->this$0:Lio/olvid/messenger/fragments/ContactListFragment;

    iget-object v0, v0, Lio/olvid/messenger/fragments/ContactListFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 183
    iget-boolean v0, p0, Lio/olvid/messenger/fragments/ContactListFragment$4;->val$success:Z

    if-nez v0, :cond_0

    const v0, 0x7f100206

    .line 184
    invoke-static {v0, v1}, Lio/olvid/messenger/App;->toast(II)V

    :cond_0
    return-void
.end method
