.class Lio/olvid/messenger/fragments/DiscussionListFragment$1$1;
.super Ljava/lang/Object;
.source "DiscussionListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/fragments/DiscussionListFragment$1;->onChanged(Lio/olvid/messenger/databases/entity/OwnedIdentity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/olvid/messenger/fragments/DiscussionListFragment$1;

.field final synthetic val$ownedIdentity:Lio/olvid/messenger/databases/entity/OwnedIdentity;


# direct methods
.method constructor <init>(Lio/olvid/messenger/fragments/DiscussionListFragment$1;Lio/olvid/messenger/databases/entity/OwnedIdentity;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$1$1;->this$1:Lio/olvid/messenger/fragments/DiscussionListFragment$1;

    iput-object p2, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$1$1;->val$ownedIdentity:Lio/olvid/messenger/databases/entity/OwnedIdentity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 90
    iget-object v0, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$1$1;->this$1:Lio/olvid/messenger/fragments/DiscussionListFragment$1;

    iget-object v0, v0, Lio/olvid/messenger/fragments/DiscussionListFragment$1;->this$0:Lio/olvid/messenger/fragments/DiscussionListFragment;

    invoke-static {v0}, Lio/olvid/messenger/fragments/DiscussionListFragment;->access$000(Lio/olvid/messenger/fragments/DiscussionListFragment;)Lio/olvid/messenger/viewModels/DiscussionListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/messenger/viewModels/DiscussionListViewModel;->getDiscussions()Landroidx/lifecycle/LiveData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$1$1;->this$1:Lio/olvid/messenger/fragments/DiscussionListFragment$1;

    iget-object v0, v0, Lio/olvid/messenger/fragments/DiscussionListFragment$1;->this$0:Lio/olvid/messenger/fragments/DiscussionListFragment;

    invoke-static {v0}, Lio/olvid/messenger/fragments/DiscussionListFragment;->access$000(Lio/olvid/messenger/fragments/DiscussionListFragment;)Lio/olvid/messenger/viewModels/DiscussionListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/messenger/viewModels/DiscussionListViewModel;->getDiscussions()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$1$1;->this$1:Lio/olvid/messenger/fragments/DiscussionListFragment$1;

    iget-object v1, v1, Lio/olvid/messenger/fragments/DiscussionListFragment$1;->this$0:Lio/olvid/messenger/fragments/DiscussionListFragment;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    .line 93
    :cond_0
    iget-object v0, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$1$1;->val$ownedIdentity:Lio/olvid/messenger/databases/entity/OwnedIdentity;

    if-nez v0, :cond_1

    return-void

    .line 96
    :cond_1
    iget-object v0, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$1$1;->this$1:Lio/olvid/messenger/fragments/DiscussionListFragment$1;

    iget-object v0, v0, Lio/olvid/messenger/fragments/DiscussionListFragment$1;->this$0:Lio/olvid/messenger/fragments/DiscussionListFragment;

    invoke-static {v0}, Lio/olvid/messenger/fragments/DiscussionListFragment;->access$000(Lio/olvid/messenger/fragments/DiscussionListFragment;)Lio/olvid/messenger/viewModels/DiscussionListViewModel;

    move-result-object v0

    iget-object v1, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$1$1;->val$ownedIdentity:Lio/olvid/messenger/databases/entity/OwnedIdentity;

    iget-object v1, v1, Lio/olvid/messenger/databases/entity/OwnedIdentity;->bytesOwnedIdentity:[B

    invoke-virtual {v0, v1}, Lio/olvid/messenger/viewModels/DiscussionListViewModel;->setOwnedIdentity([B)V

    .line 97
    iget-object v0, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$1$1;->this$1:Lio/olvid/messenger/fragments/DiscussionListFragment$1;

    iget-object v0, v0, Lio/olvid/messenger/fragments/DiscussionListFragment$1;->this$0:Lio/olvid/messenger/fragments/DiscussionListFragment;

    iget-object v0, v0, Lio/olvid/messenger/fragments/DiscussionListFragment;->adapter:Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter;

    if-eqz v0, :cond_2

    .line 98
    iget-object v0, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$1$1;->this$1:Lio/olvid/messenger/fragments/DiscussionListFragment$1;

    iget-object v0, v0, Lio/olvid/messenger/fragments/DiscussionListFragment$1;->this$0:Lio/olvid/messenger/fragments/DiscussionListFragment;

    invoke-static {v0}, Lio/olvid/messenger/fragments/DiscussionListFragment;->access$000(Lio/olvid/messenger/fragments/DiscussionListFragment;)Lio/olvid/messenger/viewModels/DiscussionListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/messenger/viewModels/DiscussionListViewModel;->getDiscussions()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$1$1;->this$1:Lio/olvid/messenger/fragments/DiscussionListFragment$1;

    iget-object v1, v1, Lio/olvid/messenger/fragments/DiscussionListFragment$1;->this$0:Lio/olvid/messenger/fragments/DiscussionListFragment;

    iget-object v2, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$1$1;->this$1:Lio/olvid/messenger/fragments/DiscussionListFragment$1;

    iget-object v2, v2, Lio/olvid/messenger/fragments/DiscussionListFragment$1;->this$0:Lio/olvid/messenger/fragments/DiscussionListFragment;

    iget-object v2, v2, Lio/olvid/messenger/fragments/DiscussionListFragment;->adapter:Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_2
    return-void
.end method
