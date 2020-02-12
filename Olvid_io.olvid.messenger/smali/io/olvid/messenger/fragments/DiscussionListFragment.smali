.class public Lio/olvid/messenger/fragments/DiscussionListFragment;
.super Landroidx/fragment/app/Fragment;
.source "DiscussionListFragment.java"

# interfaces
.implements Lio/olvid/messenger/activities/MainActivity$FabDelegate;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;
.implements Lio/olvid/engine/engine/types/EngineNotificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter;,
        Lio/olvid/messenger/fragments/DiscussionListFragment$DividerItemDecoration;
    }
.end annotation


# instance fields
.field adapter:Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter;

.field private discussionListViewModel:Lio/olvid/messenger/viewModels/DiscussionListViewModel;

.field private engineNotificationListenerRegistrationNumber:J

.field private longClickedDiscussion:Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;

.field private swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/olvid/messenger/fragments/DiscussionListFragment;)Lio/olvid/messenger/viewModels/DiscussionListViewModel;
    .locals 0

    .line 71
    iget-object p0, p0, Lio/olvid/messenger/fragments/DiscussionListFragment;->discussionListViewModel:Lio/olvid/messenger/viewModels/DiscussionListViewModel;

    return-object p0
.end method

.method static synthetic access$100(Lio/olvid/messenger/fragments/DiscussionListFragment;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    .locals 0

    .line 71
    iget-object p0, p0, Lio/olvid/messenger/fragments/DiscussionListFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    return-object p0
.end method

.method static synthetic access$200(Lio/olvid/messenger/fragments/DiscussionListFragment;)Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;
    .locals 0

    .line 71
    iget-object p0, p0, Lio/olvid/messenger/fragments/DiscussionListFragment;->longClickedDiscussion:Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;

    return-object p0
.end method

.method static synthetic access$400(Lio/olvid/messenger/fragments/DiscussionListFragment;Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;Landroid/view/View;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Lio/olvid/messenger/fragments/DiscussionListFragment;->discussionLongClicked(Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;Landroid/view/View;)V

    return-void
.end method

.method private discussionLongClicked(Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;Landroid/view/View;)V
    .locals 4

    .line 260
    iput-object p1, p0, Lio/olvid/messenger/fragments/DiscussionListFragment;->longClickedDiscussion:Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;

    .line 261
    new-instance v0, Landroid/widget/PopupMenu;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lio/olvid/messenger/fragments/DiscussionListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1102d8

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 262
    iget-object p2, p1, Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;->discussion:Lio/olvid/messenger/databases/entity/Discussion;

    iget-object p2, p2, Lio/olvid/messenger/databases/entity/Discussion;->bytesContactIdentity:[B

    if-eqz p2, :cond_0

    const p1, 0x7f0d0014

    .line 263
    invoke-virtual {v0, p1}, Landroid/widget/PopupMenu;->inflate(I)V

    goto :goto_0

    .line 264
    :cond_0
    iget-object p1, p1, Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;->discussion:Lio/olvid/messenger/databases/entity/Discussion;

    iget-object p1, p1, Lio/olvid/messenger/databases/entity/Discussion;->bytesGroupOwnerAndUid:[B

    if-eqz p1, :cond_1

    const p1, 0x7f0d0012

    .line 265
    invoke-virtual {v0, p1}, Landroid/widget/PopupMenu;->inflate(I)V

    goto :goto_0

    :cond_1
    const p1, 0x7f0d0013

    .line 267
    invoke-virtual {v0, p1}, Landroid/widget/PopupMenu;->inflate(I)V

    :goto_0
    const p1, 0x7f0d0011

    .line 269
    invoke-virtual {v0, p1}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 270
    invoke-virtual {v0, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 271
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

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

    .line 169
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "bytes_owned_identity"

    .line 170
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    check-cast p1, [B

    const-string v0, "success"

    .line 171
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 172
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getCurrentIdentity()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getCurrentIdentity()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/messenger/databases/entity/OwnedIdentity;

    iget-object v0, v0, Lio/olvid/messenger/databases/entity/OwnedIdentity;->bytesOwnedIdentity:[B

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 174
    iget-object p1, p0, Lio/olvid/messenger/fragments/DiscussionListFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-eqz p1, :cond_0

    .line 175
    invoke-virtual {p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->isRefreshing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 176
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lio/olvid/messenger/fragments/DiscussionListFragment$3;

    invoke-direct {v0, p0, p2}, Lio/olvid/messenger/fragments/DiscussionListFragment$3;-><init>(Lio/olvid/messenger/fragments/DiscussionListFragment;Z)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public discussionClicked(Lio/olvid/messenger/databases/entity/Discussion;Landroid/view/View;)V
    .locals 2

    .line 254
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-wide v0, p1, Lio/olvid/messenger/databases/entity/Discussion;->id:J

    invoke-static {p2, v0, v1}, Lio/olvid/messenger/App;->openDiscussionActivity(Landroid/content/Context;J)V

    return-void
.end method

.method public getEngineNotificationListenerRegistrationNumber()J
    .locals 2

    .line 198
    iget-wide v0, p0, Lio/olvid/messenger/fragments/DiscussionListFragment;->engineNotificationListenerRegistrationNumber:J

    return-wide v0
.end method

.method public synthetic lambda$onCreateView$0$DiscussionListFragment(Ljava/util/HashMap;)V
    .locals 0

    .line 126
    iget-object p1, p0, Lio/olvid/messenger/fragments/DiscussionListFragment;->adapter:Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter;

    invoke-virtual {p1}, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 79
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lio/olvid/messenger/viewModels/DiscussionListViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/viewModels/DiscussionListViewModel;

    iput-object p1, p0, Lio/olvid/messenger/fragments/DiscussionListFragment;->discussionListViewModel:Lio/olvid/messenger/viewModels/DiscussionListViewModel;

    .line 82
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object p1

    const-string v0, "engine_notification_server_polled"

    invoke-virtual {p1, v0, p0}, Lio/olvid/engine/engine/Engine;->addNotificationListener(Ljava/lang/String;Lio/olvid/engine/engine/types/EngineNotificationListener;)V

    .line 84
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getCurrentIdentity()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lio/olvid/messenger/fragments/DiscussionListFragment$1;

    invoke-direct {v0, p0}, Lio/olvid/messenger/fragments/DiscussionListFragment$1;-><init>(Lio/olvid/messenger/fragments/DiscussionListFragment;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const/4 p3, 0x0

    const v0, 0x7f0c0024

    .line 114
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090117

    .line 116
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    .line 117
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lio/olvid/messenger/fragments/DiscussionListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 118
    invoke-virtual {p2, v0}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const v0, 0x7f090115

    .line 120
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 122
    new-instance v1, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter;

    invoke-direct {v1, p0}, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter;-><init>(Lio/olvid/messenger/fragments/DiscussionListFragment;)V

    iput-object v1, p0, Lio/olvid/messenger/fragments/DiscussionListFragment;->adapter:Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter;

    .line 123
    iget-object v1, p0, Lio/olvid/messenger/fragments/DiscussionListFragment;->discussionListViewModel:Lio/olvid/messenger/viewModels/DiscussionListViewModel;

    invoke-virtual {v1}, Lio/olvid/messenger/viewModels/DiscussionListViewModel;->getDiscussions()Landroidx/lifecycle/LiveData;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lio/olvid/messenger/fragments/DiscussionListFragment;->discussionListViewModel:Lio/olvid/messenger/viewModels/DiscussionListViewModel;

    invoke-virtual {v1}, Lio/olvid/messenger/viewModels/DiscussionListViewModel;->getDiscussions()Landroidx/lifecycle/LiveData;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/messenger/fragments/DiscussionListFragment;->adapter:Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter;

    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 126
    :cond_0
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getContactNameCache()Landroidx/lifecycle/LiveData;

    move-result-object v1

    new-instance v2, Lio/olvid/messenger/fragments/-$$Lambda$DiscussionListFragment$o8IZtj0f6erwKYtiYCiaJzpGvTw;

    invoke-direct {v2, p0}, Lio/olvid/messenger/fragments/-$$Lambda$DiscussionListFragment$o8IZtj0f6erwKYtiYCiaJzpGvTw;-><init>(Lio/olvid/messenger/fragments/DiscussionListFragment;)V

    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 127
    invoke-virtual {p2, p3}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->setHideIfEmpty(Z)V

    .line 128
    invoke-virtual {p2, v0}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->setEmptyView(Landroid/view/View;)V

    .line 129
    iget-object v0, p0, Lio/olvid/messenger/fragments/DiscussionListFragment;->adapter:Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter;

    invoke-virtual {p2, v0}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 131
    new-instance v0, Lio/olvid/messenger/fragments/DiscussionListFragment$DividerItemDecoration;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lio/olvid/messenger/fragments/DiscussionListFragment$DividerItemDecoration;-><init>(Lio/olvid/messenger/fragments/DiscussionListFragment;Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    const p2, 0x7f090118

    .line 133
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object p2, p0, Lio/olvid/messenger/fragments/DiscussionListFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 134
    iget-object p2, p0, Lio/olvid/messenger/fragments/DiscussionListFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p2, p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 135
    iget-object p2, p0, Lio/olvid/messenger/fragments/DiscussionListFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x7f0600ca

    aput v1, v0, p3

    invoke-virtual {p2, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 108
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 109
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object v0

    const-string v1, "engine_notification_server_polled"

    invoke-virtual {v0, v1, p0}, Lio/olvid/engine/engine/Engine;->removeNotificationListener(Ljava/lang/String;Lio/olvid/engine/engine/types/EngineNotificationListener;)V

    return-void
.end method

.method public onFabClick()V
    .locals 3

    .line 248
    invoke-static {}, Lio/olvid/messenger/fragments/dialog/DiscussionSearchDialogFragment;->newInstance()Lio/olvid/messenger/fragments/dialog/DiscussionSearchDialogFragment;

    move-result-object v0

    .line 249
    invoke-virtual {p0}, Lio/olvid/messenger/fragments/DiscussionListFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lio/olvid/messenger/fragments/dialog/DiscussionSearchDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 8

    .line 276
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f090222

    const v1, 0x7f10002d

    const v2, 0x7f10003d

    const v3, 0x7f1100e9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq p1, v0, :cond_4

    const v0, 0x7f090224

    if-eq p1, v0, :cond_3

    const v0, 0x7f09022a

    if-eq p1, v0, :cond_0

    return v4

    .line 292
    :cond_0
    invoke-virtual {p0}, Lio/olvid/messenger/fragments/DiscussionListFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c0044

    invoke-virtual {p1, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f09012f

    .line 293
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    .line 294
    iget-object v4, p0, Lio/olvid/messenger/fragments/DiscussionListFragment;->longClickedDiscussion:Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;

    iget-object v4, v4, Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;->discussion:Lio/olvid/messenger/databases/entity/Discussion;

    iget-object v4, v4, Lio/olvid/messenger/databases/entity/Discussion;->title:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 295
    new-instance v4, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lio/olvid/messenger/fragments/DiscussionListFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 296
    invoke-virtual {v4, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v3, Lio/olvid/messenger/fragments/DiscussionListFragment$5;

    invoke-direct {v3, p0, v0}, Lio/olvid/messenger/fragments/DiscussionListFragment$5;-><init>(Lio/olvid/messenger/fragments/DiscussionListFragment;Lcom/google/android/material/textfield/TextInputEditText;)V

    .line 297
    invoke-virtual {p1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 308
    invoke-virtual {p1, v1, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 310
    iget-object v1, p0, Lio/olvid/messenger/fragments/DiscussionListFragment;->longClickedDiscussion:Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;

    iget-object v1, v1, Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;->discussion:Lio/olvid/messenger/databases/entity/Discussion;

    iget-object v1, v1, Lio/olvid/messenger/databases/entity/Discussion;->bytesGroupOwnerAndUid:[B

    if-nez v1, :cond_2

    .line 311
    iget-object v1, p0, Lio/olvid/messenger/fragments/DiscussionListFragment;->longClickedDiscussion:Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;

    iget-object v1, v1, Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;->discussion:Lio/olvid/messenger/databases/entity/Discussion;

    iget-object v1, v1, Lio/olvid/messenger/databases/entity/Discussion;->bytesContactIdentity:[B

    if-nez v1, :cond_1

    const v0, 0x7f1000a2

    .line 313
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 314
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    goto :goto_0

    :cond_1
    const v1, 0x7f1000a1

    .line 317
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f100042

    .line 318
    invoke-virtual {v1, v2, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 319
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 320
    new-instance v1, Lio/olvid/messenger/fragments/DiscussionListFragment$6;

    invoke-direct {v1, p0, v0}, Lio/olvid/messenger/fragments/DiscussionListFragment$6;-><init>(Lio/olvid/messenger/fragments/DiscussionListFragment;Lcom/google/android/material/textfield/TextInputEditText;)V

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 348
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    goto :goto_0

    .line 352
    :cond_2
    new-instance v1, Lio/olvid/messenger/fragments/DiscussionListFragment$7;

    invoke-direct {v1, p0, p1, v0}, Lio/olvid/messenger/fragments/DiscussionListFragment$7;-><init>(Lio/olvid/messenger/fragments/DiscussionListFragment;Landroidx/appcompat/app/AlertDialog$Builder;Lcom/google/android/material/textfield/TextInputEditText;)V

    invoke-static {v1}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    :goto_0
    return v6

    .line 402
    :cond_3
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lio/olvid/messenger/fragments/DiscussionListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lio/olvid/messenger/activities/DiscussionSettingsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 403
    iget-object v0, p0, Lio/olvid/messenger/fragments/DiscussionListFragment;->longClickedDiscussion:Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;

    iget-object v0, v0, Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;->discussion:Lio/olvid/messenger/databases/entity/Discussion;

    iget-wide v0, v0, Lio/olvid/messenger/databases/entity/Discussion;->id:J

    const-string v2, "discussion_id"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 404
    invoke-virtual {p0}, Lio/olvid/messenger/fragments/DiscussionListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v6

    .line 278
    :cond_4
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lio/olvid/messenger/fragments/DiscussionListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f10008f

    .line 279
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f100076

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lio/olvid/messenger/fragments/DiscussionListFragment;->longClickedDiscussion:Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;

    iget-object v7, v7, Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;->discussion:Lio/olvid/messenger/databases/entity/Discussion;

    iget-object v7, v7, Lio/olvid/messenger/databases/entity/Discussion;->title:Ljava/lang/String;

    aput-object v7, v3, v4

    .line 280
    invoke-virtual {p0, v0, v3}, Lio/olvid/messenger/fragments/DiscussionListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lio/olvid/messenger/fragments/DiscussionListFragment$4;

    invoke-direct {v0, p0}, Lio/olvid/messenger/fragments/DiscussionListFragment$4;-><init>(Lio/olvid/messenger/fragments/DiscussionListFragment;)V

    .line 281
    invoke-virtual {p1, v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 287
    invoke-virtual {p1, v1, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 288
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return v6
.end method

.method public onRefresh()V
    .locals 2

    .line 141
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getCurrentIdentity()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object v0

    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getCurrentIdentity()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/olvid/messenger/databases/entity/OwnedIdentity;

    iget-object v1, v1, Lio/olvid/messenger/databases/entity/OwnedIdentity;->bytesOwnedIdentity:[B

    invoke-virtual {v0, v1}, Lio/olvid/engine/engine/Engine;->downloadMessages([B)V

    .line 143
    new-instance v0, Lio/olvid/messenger/fragments/DiscussionListFragment$2;

    invoke-direct {v0, p0}, Lio/olvid/messenger/fragments/DiscussionListFragment$2;-><init>(Lio/olvid/messenger/fragments/DiscussionListFragment;)V

    invoke-static {v0}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 163
    :cond_0
    iget-object v0, p0, Lio/olvid/messenger/fragments/DiscussionListFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    :goto_0
    return-void
.end method

.method public setEngineNotificationListenerRegistrationNumber(J)V
    .locals 0

    .line 193
    iput-wide p1, p0, Lio/olvid/messenger/fragments/DiscussionListFragment;->engineNotificationListenerRegistrationNumber:J

    return-void
.end method
