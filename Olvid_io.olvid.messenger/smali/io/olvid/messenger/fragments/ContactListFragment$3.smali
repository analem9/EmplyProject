.class Lio/olvid/messenger/fragments/ContactListFragment$3;
.super Ljava/lang/Object;
.source "ContactListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/fragments/ContactListFragment;->onRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/fragments/ContactListFragment;


# direct methods
.method constructor <init>(Lio/olvid/messenger/fragments/ContactListFragment;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lio/olvid/messenger/fragments/ContactListFragment$3;->this$0:Lio/olvid/messenger/fragments/ContactListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0x1388

    .line 155
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 157
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 159
    :goto_0
    iget-object v0, p0, Lio/olvid/messenger/fragments/ContactListFragment$3;->this$0:Lio/olvid/messenger/fragments/ContactListFragment;

    iget-object v0, v0, Lio/olvid/messenger/fragments/ContactListFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lio/olvid/messenger/fragments/ContactListFragment$3;->this$0:Lio/olvid/messenger/fragments/ContactListFragment;

    iget-object v0, v0, Lio/olvid/messenger/fragments/ContactListFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    const v0, 0x7f100206

    .line 161
    invoke-static {v0, v1}, Lio/olvid/messenger/App;->toast(II)V

    :cond_0
    return-void
.end method
