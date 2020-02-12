.class public Lio/olvid/messenger/fragments/GroupListFragment;
.super Landroidx/fragment/app/Fragment;
.source "GroupListFragment.java"

# interfaces
.implements Lio/olvid/messenger/activities/MainActivity$FabDelegate;
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;
.implements Lio/olvid/engine/engine/types/EngineNotificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter;,
        Lio/olvid/messenger/fragments/GroupListFragment$DividerItemDecoration;
    }
.end annotation


# instance fields
.field private adapter:Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter;

.field private engineNotificationListenerRegistrationNumber:J

.field private groupListViewModel:Lio/olvid/messenger/viewModels/GroupListViewModel;

.field private swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/olvid/messenger/fragments/GroupListFragment;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    .locals 0

    .line 47
    iget-object p0, p0, Lio/olvid/messenger/fragments/GroupListFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    return-object p0
.end method

.method static synthetic access$100(Lio/olvid/messenger/fragments/GroupListFragment;)Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter;
    .locals 0

    .line 47
    iget-object p0, p0, Lio/olvid/messenger/fragments/GroupListFragment;->adapter:Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lio/olvid/messenger/fragments/GroupListFragment;Lio/olvid/messenger/databases/dao/GroupDao$GroupAndContactDisplayNames;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lio/olvid/messenger/fragments/GroupListFragment;->groupClicked(Lio/olvid/messenger/databases/dao/GroupDao$GroupAndContactDisplayNames;)V

    return-void
.end method

.method private groupClicked(Lio/olvid/messenger/databases/dao/GroupDao$GroupAndContactDisplayNames;)V
    .locals 2

    .line 205
    invoke-virtual {p0}, Lio/olvid/messenger/fragments/GroupListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lio/olvid/messenger/databases/dao/GroupDao$GroupAndContactDisplayNames;->group:Lio/olvid/messenger/databases/entity/Group;

    iget-object v1, v1, Lio/olvid/messenger/databases/entity/Group;->bytesOwnedIdentity:[B

    iget-object p1, p1, Lio/olvid/messenger/databases/dao/GroupDao$GroupAndContactDisplayNames;->group:Lio/olvid/messenger/databases/entity/Group;

    iget-object p1, p1, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerAndUid:[B

    invoke-static {v0, v1, p1}, Lio/olvid/messenger/App;->openGroupDetailsActivity(Landroid/content/Context;[B[B)V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "engine_notification_server_polled"

    .line 114
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "bytes_owned_identity"

    .line 115
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    check-cast p1, [B

    const-string v0, "success"

    .line 116
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 117
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getCurrentIdentity()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getCurrentIdentity()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/messenger/databases/entity/OwnedIdentity;

    iget-object v0, v0, Lio/olvid/messenger/databases/entity/OwnedIdentity;->bytesOwnedIdentity:[B

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 119
    iget-object p1, p0, Lio/olvid/messenger/fragments/GroupListFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-eqz p1, :cond_0

    .line 120
    invoke-virtual {p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->isRefreshing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 121
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lio/olvid/messenger/fragments/GroupListFragment$2;

    invoke-direct {v0, p0, p2}, Lio/olvid/messenger/fragments/GroupListFragment$2;-><init>(Lio/olvid/messenger/fragments/GroupListFragment;Z)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public getEngineNotificationListenerRegistrationNumber()J
    .locals 2

    .line 143
    iget-wide v0, p0, Lio/olvid/messenger/fragments/GroupListFragment;->engineNotificationListenerRegistrationNumber:J

    return-wide v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 56
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lio/olvid/messenger/viewModels/GroupListViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/viewModels/GroupListViewModel;

    iput-object p1, p0, Lio/olvid/messenger/fragments/GroupListFragment;->groupListViewModel:Lio/olvid/messenger/viewModels/GroupListViewModel;

    .line 59
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object p1

    const-string v0, "engine_notification_server_polled"

    invoke-virtual {p1, v0, p0}, Lio/olvid/engine/engine/Engine;->addNotificationListener(Ljava/lang/String;Lio/olvid/engine/engine/types/EngineNotificationListener;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const/4 p3, 0x0

    const v0, 0x7f0c0025

    .line 67
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090167

    .line 69
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    .line 70
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lio/olvid/messenger/fragments/GroupListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 71
    invoke-virtual {p2, v0}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const v0, 0x7f090165

    .line 73
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 75
    new-instance v1, Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter;

    invoke-direct {v1, p0}, Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter;-><init>(Lio/olvid/messenger/fragments/GroupListFragment;)V

    iput-object v1, p0, Lio/olvid/messenger/fragments/GroupListFragment;->adapter:Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter;

    .line 76
    iget-object v1, p0, Lio/olvid/messenger/fragments/GroupListFragment;->groupListViewModel:Lio/olvid/messenger/viewModels/GroupListViewModel;

    invoke-virtual {v1}, Lio/olvid/messenger/viewModels/GroupListViewModel;->getGroups()Landroidx/lifecycle/LiveData;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/messenger/fragments/GroupListFragment;->adapter:Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter;

    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 77
    iget-object v1, p0, Lio/olvid/messenger/fragments/GroupListFragment;->adapter:Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter;

    invoke-virtual {p2, v1}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 78
    invoke-virtual {p2, v0}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->setEmptyView(Landroid/view/View;)V

    .line 80
    new-instance v0, Lio/olvid/messenger/fragments/GroupListFragment$DividerItemDecoration;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lio/olvid/messenger/fragments/GroupListFragment$DividerItemDecoration;-><init>(Lio/olvid/messenger/fragments/GroupListFragment;Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    const p2, 0x7f090118

    .line 82
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object p2, p0, Lio/olvid/messenger/fragments/GroupListFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 83
    iget-object p2, p0, Lio/olvid/messenger/fragments/GroupListFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p2, p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 84
    iget-object p2, p0, Lio/olvid/messenger/fragments/GroupListFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x7f0600ca

    aput v1, v0, p3

    invoke-virtual {p2, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    return-object p1
.end method

.method public onFabClick()V
    .locals 1

    .line 196
    invoke-virtual {p0}, Lio/olvid/messenger/fragments/GroupListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lio/olvid/messenger/App;->openGroupCreationActivity(Landroid/content/Context;)V

    return-void
.end method

.method public onRefresh()V
    .locals 2

    .line 91
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getCurrentIdentity()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object v0

    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getCurrentIdentity()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/olvid/messenger/databases/entity/OwnedIdentity;

    iget-object v1, v1, Lio/olvid/messenger/databases/entity/OwnedIdentity;->bytesOwnedIdentity:[B

    invoke-virtual {v0, v1}, Lio/olvid/engine/engine/Engine;->downloadMessages([B)V

    .line 93
    new-instance v0, Lio/olvid/messenger/fragments/GroupListFragment$1;

    invoke-direct {v0, p0}, Lio/olvid/messenger/fragments/GroupListFragment$1;-><init>(Lio/olvid/messenger/fragments/GroupListFragment;)V

    invoke-static {v0}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 108
    :cond_0
    iget-object v0, p0, Lio/olvid/messenger/fragments/GroupListFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    :goto_0
    return-void
.end method

.method public setEngineNotificationListenerRegistrationNumber(J)V
    .locals 0

    .line 138
    iput-wide p1, p0, Lio/olvid/messenger/fragments/GroupListFragment;->engineNotificationListenerRegistrationNumber:J

    return-void
.end method
