.class public Lio/olvid/messenger/fragments/ContactListFragment;
.super Lio/olvid/messenger/fragments/FilteredContactListFragment;
.source "ContactListFragment.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListOnClickDelegate;
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;
.implements Lio/olvid/engine/engine/types/EngineNotificationListener;


# instance fields
.field private emptyViewTextView:Landroid/widget/TextView;

.field private engineNotificationListenerRegistrationNumber:J

.field private longClickedContact:Lio/olvid/messenger/databases/entity/Contact;

.field private parentActivity:Landroidx/fragment/app/FragmentActivity;

.field private rootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lio/olvid/messenger/fragments/FilteredContactListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/olvid/messenger/fragments/ContactListFragment;Z)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lio/olvid/messenger/fragments/ContactListFragment;->setEmptyTextViewText(Z)V

    return-void
.end method

.method static synthetic access$100(Lio/olvid/messenger/fragments/ContactListFragment;)Lio/olvid/messenger/databases/entity/Contact;
    .locals 0

    .line 50
    iget-object p0, p0, Lio/olvid/messenger/fragments/ContactListFragment;->longClickedContact:Lio/olvid/messenger/databases/entity/Contact;

    return-object p0
.end method

.method private setEmptyTextViewText(Z)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x3

    const v2, 0x7f090140

    if-eqz p1, :cond_0

    .line 102
    iget-object p1, p0, Lio/olvid/messenger/fragments/ContactListFragment;->emptyViewTextView:Landroid/widget/TextView;

    const v3, 0x7f1000af

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 103
    iget-object p1, p0, Lio/olvid/messenger/fragments/ContactListFragment;->rootView:Landroid/view/View;

    instance-of v3, p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v3, :cond_1

    .line 104
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 105
    new-instance v3, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v3}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 106
    invoke-virtual {v3, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    const/high16 v4, 0x42d80000    # 108.0f

    .line 110
    invoke-virtual {p0}, Lio/olvid/messenger/fragments/ContactListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v0, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v3, v2, v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 111
    invoke-virtual {v3, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto :goto_0

    .line 114
    :cond_0
    iget-object p1, p0, Lio/olvid/messenger/fragments/ContactListFragment;->emptyViewTextView:Landroid/widget/TextView;

    const v3, 0x7f1000b8

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 115
    iget-object p1, p0, Lio/olvid/messenger/fragments/ContactListFragment;->rootView:Landroid/view/View;

    instance-of v3, p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v3, :cond_1

    .line 116
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 117
    new-instance v3, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v3}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 118
    invoke-virtual {v3, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    const/high16 v4, 0x41000000    # 8.0f

    .line 120
    invoke-virtual {p0}, Lio/olvid/messenger/fragments/ContactListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v0, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v3, v2, v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 121
    invoke-virtual {v3, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_1
    :goto_0
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

    .line 172
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "bytes_owned_identity"

    .line 173
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    check-cast p1, [B

    const-string v0, "success"

    .line 174
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 175
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getCurrentIdentity()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getCurrentIdentity()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/messenger/databases/entity/OwnedIdentity;

    iget-object v0, v0, Lio/olvid/messenger/databases/entity/OwnedIdentity;->bytesOwnedIdentity:[B

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 177
    iget-object p1, p0, Lio/olvid/messenger/fragments/ContactListFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-eqz p1, :cond_0

    .line 178
    iget-object p1, p0, Lio/olvid/messenger/fragments/ContactListFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->isRefreshing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 179
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lio/olvid/messenger/fragments/ContactListFragment$4;

    invoke-direct {v0, p0, p2}, Lio/olvid/messenger/fragments/ContactListFragment$4;-><init>(Lio/olvid/messenger/fragments/ContactListFragment;Z)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public contactClicked(Landroid/view/View;Lio/olvid/messenger/databases/entity/Contact;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 208
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p2, Lio/olvid/messenger/databases/entity/Contact;->bytesOwnedIdentity:[B

    iget-object p2, p2, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    invoke-static {p1, v0, p2}, Lio/olvid/messenger/App;->openContactDetailsActivity(Landroid/content/Context;[B[B)V

    :cond_0
    return-void
.end method

.method public contactLongClicked(Landroid/view/View;Lio/olvid/messenger/databases/entity/Contact;)V
    .locals 3

    .line 217
    iput-object p2, p0, Lio/olvid/messenger/fragments/ContactListFragment;->longClickedContact:Lio/olvid/messenger/databases/entity/Contact;

    .line 218
    new-instance p2, Landroid/widget/PopupMenu;

    new-instance v0, Landroidx/appcompat/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lio/olvid/messenger/fragments/ContactListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1102d8

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p2, v0, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const p1, 0x7f0d0010

    .line 219
    invoke-virtual {p2, p1}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 220
    invoke-virtual {p2, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 221
    invoke-virtual {p2}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method

.method public getEngineNotificationListenerRegistrationNumber()J
    .locals 2

    .line 201
    iget-wide v0, p0, Lio/olvid/messenger/fragments/ContactListFragment;->engineNotificationListenerRegistrationNumber:J

    return-wide v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 58
    invoke-super {p0, p1}, Lio/olvid/messenger/fragments/FilteredContactListFragment;->onAttach(Landroid/content/Context;)V

    .line 60
    instance-of v0, p1, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_0

    .line 61
    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    iput-object p1, p0, Lio/olvid/messenger/fragments/ContactListFragment;->parentActivity:Landroidx/fragment/app/FragmentActivity;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 63
    iput-object p1, p0, Lio/olvid/messenger/fragments/ContactListFragment;->parentActivity:Landroidx/fragment/app/FragmentActivity;

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 70
    invoke-super {p0, p1}, Lio/olvid/messenger/fragments/FilteredContactListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0, p0}, Lio/olvid/messenger/fragments/ContactListFragment;->setOnClickDelegate(Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListOnClickDelegate;)V

    const/4 p1, 0x1

    .line 73
    invoke-virtual {p0, p1}, Lio/olvid/messenger/fragments/ContactListFragment;->setShowMyId(Z)V

    .line 75
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object p1

    const-string v0, "engine_notification_server_polled"

    invoke-virtual {p1, v0, p0}, Lio/olvid/engine/engine/Engine;->addNotificationListener(Ljava/lang/String;Lio/olvid/engine/engine/types/EngineNotificationListener;)V

    .line 77
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getCurrentIdentity()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lio/olvid/messenger/fragments/ContactListFragment$2;

    invoke-direct {v0, p0}, Lio/olvid/messenger/fragments/ContactListFragment$2;-><init>(Lio/olvid/messenger/fragments/ContactListFragment;)V

    invoke-static {p1, v0}, Landroidx/lifecycle/Transformations;->switchMap(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lio/olvid/messenger/fragments/ContactListFragment$1;

    invoke-direct {v0, p0}, Lio/olvid/messenger/fragments/ContactListFragment$1;-><init>(Lio/olvid/messenger/fragments/ContactListFragment;)V

    .line 85
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 128
    invoke-super {p0, p1, p2, p3}, Lio/olvid/messenger/fragments/FilteredContactListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/messenger/fragments/ContactListFragment;->rootView:Landroid/view/View;

    .line 130
    iget-object p1, p0, Lio/olvid/messenger/fragments/ContactListFragment;->rootView:Landroid/view/View;

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    const p3, 0x7f090141

    .line 131
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lio/olvid/messenger/fragments/ContactListFragment;->emptyViewTextView:Landroid/widget/TextView;

    .line 132
    iget-object p1, p0, Lio/olvid/messenger/fragments/ContactListFragment;->filteredContactListViewModel:Lio/olvid/messenger/viewModels/FilteredContactListViewModel;

    invoke-virtual {p1}, Lio/olvid/messenger/viewModels/FilteredContactListViewModel;->getUnfilteredContacts()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 133
    iget-object p1, p0, Lio/olvid/messenger/fragments/ContactListFragment;->filteredContactListViewModel:Lio/olvid/messenger/viewModels/FilteredContactListViewModel;

    invoke-virtual {p1}, Lio/olvid/messenger/viewModels/FilteredContactListViewModel;->getUnfilteredContacts()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 134
    invoke-direct {p0, p2}, Lio/olvid/messenger/fragments/ContactListFragment;->setEmptyTextViewText(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 136
    invoke-direct {p0, p1}, Lio/olvid/messenger/fragments/ContactListFragment;->setEmptyTextViewText(Z)V

    .line 141
    :cond_1
    :goto_0
    iget-object p1, p0, Lio/olvid/messenger/fragments/ContactListFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p1, p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 142
    iget-object p1, p0, Lio/olvid/messenger/fragments/ContactListFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p1, p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 144
    iget-object p1, p0, Lio/olvid/messenger/fragments/ContactListFragment;->rootView:Landroid/view/View;

    return-object p1
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6

    .line 228
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f090221

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    const v0, 0x7f090229

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 236
    :cond_0
    invoke-virtual {p0}, Lio/olvid/messenger/fragments/ContactListFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c0044

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f09012f

    .line 237
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    .line 238
    iget-object v3, p0, Lio/olvid/messenger/fragments/ContactListFragment;->longClickedContact:Lio/olvid/messenger/databases/entity/Contact;

    invoke-virtual {v3}, Lio/olvid/messenger/databases/entity/Contact;->getCustomDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 239
    new-instance v3, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v4, p0, Lio/olvid/messenger/fragments/ContactListFragment;->parentActivity:Landroidx/fragment/app/FragmentActivity;

    const v5, 0x7f1100e9

    invoke-direct {v3, v4, v5}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v4, 0x7f1000a1

    .line 240
    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    .line 241
    invoke-virtual {v3, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v3, 0x7f10003d

    new-instance v4, Lio/olvid/messenger/fragments/ContactListFragment$5;

    invoke-direct {v4, p0, v0}, Lio/olvid/messenger/fragments/ContactListFragment$5;-><init>(Lio/olvid/messenger/fragments/ContactListFragment;Lcom/google/android/material/textfield/TextInputEditText;)V

    .line 242
    invoke-virtual {p1, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v3, 0x7f100042

    .line 253
    invoke-virtual {p1, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v3, 0x7f10002d

    .line 254
    invoke-virtual {p1, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 255
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 256
    new-instance v2, Lio/olvid/messenger/fragments/ContactListFragment$6;

    invoke-direct {v2, p0, v0}, Lio/olvid/messenger/fragments/ContactListFragment$6;-><init>(Lio/olvid/messenger/fragments/ContactListFragment;Lcom/google/android/material/textfield/TextInputEditText;)V

    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 272
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return v1

    .line 230
    :cond_1
    invoke-virtual {p0}, Lio/olvid/messenger/fragments/ContactListFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 231
    new-instance p1, Lio/olvid/messenger/databases/tasks/PromptToDeleteContactTask;

    invoke-virtual {p0}, Lio/olvid/messenger/fragments/ContactListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lio/olvid/messenger/fragments/ContactListFragment;->longClickedContact:Lio/olvid/messenger/databases/entity/Contact;

    iget-object v3, v3, Lio/olvid/messenger/databases/entity/Contact;->bytesOwnedIdentity:[B

    iget-object v4, p0, Lio/olvid/messenger/fragments/ContactListFragment;->longClickedContact:Lio/olvid/messenger/databases/entity/Contact;

    iget-object v4, v4, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    invoke-direct {p1, v0, v3, v4, v2}, Lio/olvid/messenger/databases/tasks/PromptToDeleteContactTask;-><init>(Landroid/content/Context;[B[BLjava/lang/Runnable;)V

    invoke-static {p1}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    :cond_2
    return v1
.end method

.method public onRefresh()V
    .locals 2

    .line 149
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getCurrentIdentity()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object v0

    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getCurrentIdentity()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/olvid/messenger/databases/entity/OwnedIdentity;

    iget-object v1, v1, Lio/olvid/messenger/databases/entity/OwnedIdentity;->bytesOwnedIdentity:[B

    invoke-virtual {v0, v1}, Lio/olvid/engine/engine/Engine;->downloadMessages([B)V

    .line 151
    new-instance v0, Lio/olvid/messenger/fragments/ContactListFragment$3;

    invoke-direct {v0, p0}, Lio/olvid/messenger/fragments/ContactListFragment$3;-><init>(Lio/olvid/messenger/fragments/ContactListFragment;)V

    invoke-static {v0}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 166
    :cond_0
    iget-object v0, p0, Lio/olvid/messenger/fragments/ContactListFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    :goto_0
    return-void
.end method

.method public setEngineNotificationListenerRegistrationNumber(J)V
    .locals 0

    .line 196
    iput-wide p1, p0, Lio/olvid/messenger/fragments/ContactListFragment;->engineNotificationListenerRegistrationNumber:J

    return-void
.end method
