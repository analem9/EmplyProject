.class public Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;
.super Landroidx/fragment/app/Fragment;
.source "FilteredDiscussionListFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListOnClickDelegate;,
        Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter;,
        Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$DividerItemDecoration;
    }
.end annotation


# instance fields
.field private discussionFilterEditText:Landroid/widget/EditText;

.field private emptyView:Landroid/view/View;

.field protected filteredDiscussionListAdapter:Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter;

.field protected filteredDiscussionListViewModel:Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel;

.field private onClickDelegate:Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListOnClickDelegate;

.field private recyclerView:Lio/olvid/messenger/customClasses/EmptyRecyclerView;

.field private removeBottomPadding:Z

.field private unfilteredDiscussions:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndContactDisplayNames;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;->filteredDiscussionListViewModel:Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel;

    .line 49
    iput-object v0, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;->unfilteredDiscussions:Landroidx/lifecycle/LiveData;

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;->removeBottomPadding:Z

    return-void
.end method

.method static synthetic access$100(Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;)Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListOnClickDelegate;
    .locals 0

    .line 45
    iget-object p0, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;->onClickDelegate:Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListOnClickDelegate;

    return-object p0
.end method

.method private observeUnfiltered()V
    .locals 2

    .line 159
    iget-object v0, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;->unfilteredDiscussions:Landroidx/lifecycle/LiveData;

    new-instance v1, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$1;

    invoke-direct {v1, p0}, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$1;-><init>(Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 197
    iget-object v0, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;->filteredDiscussionListViewModel:Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel;

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel;->setFilter(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 58
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel;

    iput-object p1, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;->filteredDiscussionListViewModel:Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel;

    .line 62
    iget-object p1, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;->unfilteredDiscussions:Landroidx/lifecycle/LiveData;

    if-eqz p1, :cond_0

    .line 63
    invoke-direct {p0}, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;->observeUnfiltered()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 p3, 0x0

    const v0, 0x7f0c0049

    .line 71
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090145

    .line 73
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    iput-object p2, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;->recyclerView:Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    .line 74
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 75
    iget-object v0, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;->recyclerView:Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    invoke-virtual {v0, p2}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 77
    new-instance p2, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter;

    invoke-direct {p2, p0}, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter;-><init>(Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;)V

    iput-object p2, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;->filteredDiscussionListAdapter:Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter;

    .line 78
    iget-object p2, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;->filteredDiscussionListViewModel:Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel;

    invoke-virtual {p2}, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel;->getFilteredDiscussions()Landroidx/lifecycle/LiveData;

    move-result-object p2

    iget-object v0, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;->filteredDiscussionListAdapter:Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter;

    invoke-virtual {p2, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 79
    iget-object p2, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;->recyclerView:Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    iget-object v0, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;->filteredDiscussionListAdapter:Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter;

    invoke-virtual {p2, v0}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 81
    iget-boolean p2, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;->removeBottomPadding:Z

    if-eqz p2, :cond_0

    .line 82
    iget-object p2, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;->recyclerView:Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    invoke-virtual {p2, p3, p3, p3, p3}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->setPadding(IIII)V

    .line 84
    :cond_0
    iget-object p2, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;->emptyView:Landroid/view/View;

    if-eqz p2, :cond_1

    .line 85
    iget-object p3, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;->recyclerView:Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    invoke-virtual {p3, p2}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->setEmptyView(Landroid/view/View;)V

    .line 88
    :cond_1
    iget-object p2, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;->recyclerView:Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    new-instance p3, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$DividerItemDecoration;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, p0, v0}, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$DividerItemDecoration;-><init>(Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-object p1
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public removeBottomPadding()V
    .locals 1

    const/4 v0, 0x1

    .line 188
    iput-boolean v0, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;->removeBottomPadding:Z

    return-void
.end method

.method public setDiscussionFilterEditText(Landroid/widget/EditText;)V
    .locals 1

    .line 176
    iget-object v0, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;->discussionFilterEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 179
    :cond_0
    iput-object p1, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;->discussionFilterEditText:Landroid/widget/EditText;

    .line 180
    iget-object p1, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;->discussionFilterEditText:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 1

    .line 152
    iget-object v0, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;->recyclerView:Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0, p1}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->setEmptyView(Landroid/view/View;)V

    .line 155
    :cond_0
    iput-object p1, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;->emptyView:Landroid/view/View;

    return-void
.end method

.method public setOnClickDelegate(Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListOnClickDelegate;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;->onClickDelegate:Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListOnClickDelegate;

    return-void
.end method

.method public setUnfilteredDiscussions(Landroidx/lifecycle/LiveData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndContactDisplayNames;",
            ">;>;)V"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;->unfilteredDiscussions:Landroidx/lifecycle/LiveData;

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    .line 145
    :cond_0
    iput-object p1, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;->unfilteredDiscussions:Landroidx/lifecycle/LiveData;

    .line 146
    iget-object p1, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;->filteredDiscussionListViewModel:Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel;

    if-eqz p1, :cond_1

    .line 147
    invoke-direct {p0}, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;->observeUnfiltered()V

    :cond_1
    return-void
.end method
