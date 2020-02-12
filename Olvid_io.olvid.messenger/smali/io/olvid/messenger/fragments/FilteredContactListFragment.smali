.class public Lio/olvid/messenger/fragments/FilteredContactListFragment;
.super Landroidx/fragment/app/Fragment;
.source "FilteredContactListFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListOnClickDelegate;,
        Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;,
        Lio/olvid/messenger/fragments/FilteredContactListFragment$DividerItemDecoration;
    }
.end annotation


# instance fields
.field private contactFilterEditText:Landroid/widget/EditText;

.field protected filteredContactListAdapter:Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;

.field protected filteredContactListViewModel:Lio/olvid/messenger/viewModels/FilteredContactListViewModel;

.field private onClickDelegate:Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListOnClickDelegate;

.field private recyclerView:Lio/olvid/messenger/customClasses/EmptyRecyclerView;

.field private removeBottomPadding:Z

.field private selectable:Z

.field private selectedContacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private selectedContactsObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Contact;",
            ">;>;"
        }
    .end annotation
.end field

.field private showMyId:Z

.field protected swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field private unfilteredContacts:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Contact;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment;->filteredContactListViewModel:Lio/olvid/messenger/viewModels/FilteredContactListViewModel;

    .line 58
    iput-object v0, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment;->unfilteredContacts:Landroidx/lifecycle/LiveData;

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment;->removeBottomPadding:Z

    .line 67
    iput-boolean v0, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment;->selectable:Z

    .line 68
    iput-boolean v0, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment;->showMyId:Z

    return-void
.end method

.method static synthetic access$000(Lio/olvid/messenger/fragments/FilteredContactListFragment;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment;->showMyId:Z

    return p0
.end method

.method static synthetic access$200(Lio/olvid/messenger/fragments/FilteredContactListFragment;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment;->selectable:Z

    return p0
.end method

.method static synthetic access$400(Lio/olvid/messenger/fragments/FilteredContactListFragment;)Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListOnClickDelegate;
    .locals 0

    .line 54
    iget-object p0, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment;->onClickDelegate:Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListOnClickDelegate;

    return-object p0
.end method

.method private observeUnfiltered()V
    .locals 2

    .line 187
    iget-object v0, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment;->unfilteredContacts:Landroidx/lifecycle/LiveData;

    new-instance v1, Lio/olvid/messenger/fragments/FilteredContactListFragment$1;

    invoke-direct {v1, p0}, Lio/olvid/messenger/fragments/FilteredContactListFragment$1;-><init>(Lio/olvid/messenger/fragments/FilteredContactListFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 245
    iget-object v0, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment;->filteredContactListViewModel:Lio/olvid/messenger/viewModels/FilteredContactListViewModel;

    if-eqz v0, :cond_1

    .line 246
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/olvid/messenger/viewModels/FilteredContactListViewModel;->setFilter(Ljava/lang/String;)V

    .line 247
    iget-object p1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment;->recyclerView:Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    if-eqz p1, :cond_1

    .line 248
    iget-boolean v0, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment;->showMyId:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment;->filteredContactListViewModel:Lio/olvid/messenger/viewModels/FilteredContactListViewModel;

    invoke-virtual {v0}, Lio/olvid/messenger/viewModels/FilteredContactListViewModel;->hasFilter()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->setEmptyThreshold(I)V

    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 75
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lio/olvid/messenger/viewModels/FilteredContactListViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/viewModels/FilteredContactListViewModel;

    iput-object p1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment;->filteredContactListViewModel:Lio/olvid/messenger/viewModels/FilteredContactListViewModel;

    .line 79
    iget-object p1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment;->unfilteredContacts:Landroidx/lifecycle/LiveData;

    if-eqz p1, :cond_0

    .line 80
    invoke-direct {p0}, Lio/olvid/messenger/fragments/FilteredContactListFragment;->observeUnfiltered()V

    .line 82
    :cond_0
    iget-object p1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment;->selectedContactsObserver:Landroidx/lifecycle/Observer;

    if-eqz p1, :cond_1

    .line 83
    iget-object p1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment;->filteredContactListViewModel:Lio/olvid/messenger/viewModels/FilteredContactListViewModel;

    invoke-virtual {p1}, Lio/olvid/messenger/viewModels/FilteredContactListViewModel;->getSelectedContacts()Landroidx/lifecycle/LiveData;

    move-result-object p1

    iget-object v0, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment;->selectedContactsObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 85
    :cond_1
    iget-object p1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment;->selectedContacts:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 86
    iget-object v0, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment;->filteredContactListViewModel:Lio/olvid/messenger/viewModels/FilteredContactListViewModel;

    invoke-virtual {v0, p1}, Lio/olvid/messenger/viewModels/FilteredContactListViewModel;->setSelectedContacts(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const/4 p3, 0x0

    const v0, 0x7f0c0048

    .line 95
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090143

    .line 97
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    iput-object p2, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment;->recyclerView:Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    .line 98
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lio/olvid/messenger/fragments/FilteredContactListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 99
    iget-object v0, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment;->recyclerView:Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    invoke-virtual {v0, p2}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 100
    iget-boolean p2, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment;->showMyId:Z

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 101
    iget-object p2, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment;->recyclerView:Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    invoke-virtual {p2, v0}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->setEmptyThreshold(I)V

    .line 104
    :cond_0
    new-instance p2, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;

    invoke-direct {p2, p0}, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;-><init>(Lio/olvid/messenger/fragments/FilteredContactListFragment;)V

    iput-object p2, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment;->filteredContactListAdapter:Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;

    .line 105
    iget-object p2, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment;->filteredContactListViewModel:Lio/olvid/messenger/viewModels/FilteredContactListViewModel;

    invoke-virtual {p2}, Lio/olvid/messenger/viewModels/FilteredContactListViewModel;->getFilteredContacts()Landroidx/lifecycle/LiveData;

    move-result-object p2

    iget-object v1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment;->filteredContactListAdapter:Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;

    invoke-virtual {p2, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 106
    iget-object p2, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment;->recyclerView:Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    iget-object v1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment;->filteredContactListAdapter:Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;

    invoke-virtual {p2, v1}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const p2, 0x7f090140

    .line 107
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 108
    iget-object v1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment;->recyclerView:Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    invoke-virtual {v1, p2}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->setEmptyView(Landroid/view/View;)V

    .line 110
    iget-boolean p2, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment;->removeBottomPadding:Z

    if-eqz p2, :cond_1

    .line 111
    iget-object p2, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment;->recyclerView:Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    invoke-virtual {p2, p3, p3, p3, p3}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->setPadding(IIII)V

    .line 114
    :cond_1
    iget-object p2, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment;->recyclerView:Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    new-instance v1, Lio/olvid/messenger/fragments/FilteredContactListFragment$DividerItemDecoration;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lio/olvid/messenger/fragments/FilteredContactListFragment$DividerItemDecoration;-><init>(Lio/olvid/messenger/fragments/FilteredContactListFragment;Landroid/content/Context;)V

    invoke-virtual {p2, v1}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    const p2, 0x7f090118

    .line 116
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object p2, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 117
    iget-object p2, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-array v0, v0, [I

    const v1, 0x7f0600ca

    aput v1, v0, p3

    invoke-virtual {p2, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 118
    iget-object p2, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p2, p3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    return-object p1
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public removeBottomPadding()V
    .locals 1

    const/4 v0, 0x1

    .line 236
    iput-boolean v0, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment;->removeBottomPadding:Z

    return-void
.end method

.method public setContactFilterEditText(Landroid/widget/EditText;)V
    .locals 1

    .line 196
    iget-object v0, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment;->contactFilterEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 199
    :cond_0
    iput-object p1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment;->contactFilterEditText:Landroid/widget/EditText;

    .line 200
    iget-object p1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment;->contactFilterEditText:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public setOnClickDelegate(Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListOnClickDelegate;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment;->onClickDelegate:Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListOnClickDelegate;

    return-void
.end method

.method public setSelectable(Z)V
    .locals 0

    .line 208
    iput-boolean p1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment;->selectable:Z

    return-void
.end method

.method public setSelectedContacts(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Contact;",
            ">;)V"
        }
    .end annotation

    .line 212
    iput-object p1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment;->selectedContacts:Ljava/util/List;

    .line 213
    iget-object v0, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment;->filteredContactListViewModel:Lio/olvid/messenger/viewModels/FilteredContactListViewModel;

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v0, p1}, Lio/olvid/messenger/viewModels/FilteredContactListViewModel;->setSelectedContacts(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public setSelectedContactsObserver(Landroidx/lifecycle/Observer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Observer<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Contact;",
            ">;>;)V"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment;->filteredContactListViewModel:Lio/olvid/messenger/viewModels/FilteredContactListViewModel;

    if-eqz v0, :cond_1

    .line 220
    iget-object v1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment;->selectedContactsObserver:Landroidx/lifecycle/Observer;

    if-eqz v1, :cond_0

    .line 221
    invoke-virtual {v0}, Lio/olvid/messenger/viewModels/FilteredContactListViewModel;->getSelectedContacts()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment;->selectedContactsObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 223
    :cond_0
    iget-object v0, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment;->filteredContactListViewModel:Lio/olvid/messenger/viewModels/FilteredContactListViewModel;

    invoke-virtual {v0}, Lio/olvid/messenger/viewModels/FilteredContactListViewModel;->getSelectedContacts()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 225
    :cond_1
    iput-object p1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment;->selectedContactsObserver:Landroidx/lifecycle/Observer;

    return-void
.end method

.method setShowMyId(Z)V
    .locals 1

    .line 229
    iput-boolean p1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment;->showMyId:Z

    .line 230
    iget-object v0, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment;->recyclerView:Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {v0, p1}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->setEmptyThreshold(I)V

    :cond_0
    return-void
.end method

.method public setUnfilteredContacts(Landroidx/lifecycle/LiveData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Contact;",
            ">;>;)V"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment;->unfilteredContacts:Landroidx/lifecycle/LiveData;

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    .line 180
    :cond_0
    iput-object p1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment;->unfilteredContacts:Landroidx/lifecycle/LiveData;

    .line 181
    iget-object p1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment;->filteredContactListViewModel:Lio/olvid/messenger/viewModels/FilteredContactListViewModel;

    if-eqz p1, :cond_1

    .line 182
    invoke-direct {p0}, Lio/olvid/messenger/fragments/FilteredContactListFragment;->observeUnfiltered()V

    :cond_1
    return-void
.end method
