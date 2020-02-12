.class Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$1;
.super Ljava/lang/Object;
.source "FilteredDiscussionListFragment.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;->observeUnfiltered()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/util/List<",
        "Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndContactDisplayNames;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;


# direct methods
.method constructor <init>(Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$1;->this$0:Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 159
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$1;->onChanged(Ljava/util/List;)V

    return-void
.end method

.method public onChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndContactDisplayNames;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 163
    iget-object p1, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$1;->this$0:Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;

    iget-object p1, p1, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;->filteredDiscussionListViewModel:Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel;->setUnfilteredDiscussions(Ljava/util/List;)V

    goto :goto_1

    .line 165
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 166
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndContactDisplayNames;

    .line 167
    new-instance v2, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$SearchableDiscussion;

    invoke-direct {v2, v1}, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$SearchableDiscussion;-><init>(Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndContactDisplayNames;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 169
    :cond_1
    iget-object p1, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$1;->this$0:Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;

    iget-object p1, p1, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;->filteredDiscussionListViewModel:Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel;

    invoke-virtual {p1, v0}, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel;->setUnfilteredDiscussions(Ljava/util/List;)V

    :goto_1
    return-void
.end method
