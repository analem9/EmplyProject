.class public Lio/olvid/messenger/activities/GroupCreationActivity$ContactsSelectionFragment;
.super Landroidx/fragment/app/Fragment;
.source "GroupCreationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/activities/GroupCreationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactsSelectionFragment"
.end annotation


# instance fields
.field filteredContactListFragment:Lio/olvid/messenger/fragments/FilteredContactListFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 361
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 366
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 368
    new-instance p1, Lio/olvid/messenger/fragments/FilteredContactListFragment;

    invoke-direct {p1}, Lio/olvid/messenger/fragments/FilteredContactListFragment;-><init>()V

    iput-object p1, p0, Lio/olvid/messenger/activities/GroupCreationActivity$ContactsSelectionFragment;->filteredContactListFragment:Lio/olvid/messenger/fragments/FilteredContactListFragment;

    .line 369
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupCreationActivity$ContactsSelectionFragment;->filteredContactListFragment:Lio/olvid/messenger/fragments/FilteredContactListFragment;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lio/olvid/messenger/fragments/FilteredContactListFragment;->setSelectable(Z)V

    .line 370
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupCreationActivity$ContactsSelectionFragment;->filteredContactListFragment:Lio/olvid/messenger/fragments/FilteredContactListFragment;

    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getCurrentIdentity()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lio/olvid/messenger/activities/GroupCreationActivity$ContactsSelectionFragment$1;

    invoke-direct {v1, p0}, Lio/olvid/messenger/activities/GroupCreationActivity$ContactsSelectionFragment$1;-><init>(Lio/olvid/messenger/activities/GroupCreationActivity$ContactsSelectionFragment;)V

    invoke-static {v0, v1}, Landroidx/lifecycle/Transformations;->switchMap(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/olvid/messenger/fragments/FilteredContactListFragment;->setUnfilteredContacts(Landroidx/lifecycle/LiveData;)V

    .line 379
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupCreationActivity$ContactsSelectionFragment;->filteredContactListFragment:Lio/olvid/messenger/fragments/FilteredContactListFragment;

    new-instance v0, Lio/olvid/messenger/activities/GroupCreationActivity$ContactsSelectionFragment$2;

    invoke-direct {v0, p0}, Lio/olvid/messenger/activities/GroupCreationActivity$ContactsSelectionFragment$2;-><init>(Lio/olvid/messenger/activities/GroupCreationActivity$ContactsSelectionFragment;)V

    invoke-virtual {p1, v0}, Lio/olvid/messenger/fragments/FilteredContactListFragment;->setSelectedContactsObserver(Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c004b

    const/4 v0, 0x0

    .line 392
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 394
    invoke-virtual {p0}, Lio/olvid/messenger/activities/GroupCreationActivity$ContactsSelectionFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    .line 395
    iget-object p3, p0, Lio/olvid/messenger/activities/GroupCreationActivity$ContactsSelectionFragment;->filteredContactListFragment:Lio/olvid/messenger/fragments/FilteredContactListFragment;

    const v0, 0x7f090142

    invoke-virtual {p2, v0, p3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 396
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-object p1
.end method

.method setContactFilterEditText(Landroid/widget/EditText;)V
    .locals 1

    .line 408
    iget-object v0, p0, Lio/olvid/messenger/activities/GroupCreationActivity$ContactsSelectionFragment;->filteredContactListFragment:Lio/olvid/messenger/fragments/FilteredContactListFragment;

    invoke-virtual {v0, p1}, Lio/olvid/messenger/fragments/FilteredContactListFragment;->setContactFilterEditText(Landroid/widget/EditText;)V

    return-void
.end method

.method setSelectedContacts(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Contact;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 402
    iget-object v0, p0, Lio/olvid/messenger/activities/GroupCreationActivity$ContactsSelectionFragment;->filteredContactListFragment:Lio/olvid/messenger/fragments/FilteredContactListFragment;

    if-eqz v0, :cond_0

    .line 403
    invoke-virtual {v0, p1}, Lio/olvid/messenger/fragments/FilteredContactListFragment;->setSelectedContacts(Ljava/util/List;)V

    :cond_0
    return-void
.end method
