.class public Lio/olvid/messenger/fragments/dialog/DiscussionSearchDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "DiscussionSearchDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lio/olvid/messenger/fragments/dialog/DiscussionSearchDialogFragment;
    .locals 1

    .line 27
    new-instance v0, Lio/olvid/messenger/fragments/dialog/DiscussionSearchDialogFragment;

    invoke-direct {v0}, Lio/olvid/messenger/fragments/dialog/DiscussionSearchDialogFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 32
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 38
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    .line 40
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    :cond_0
    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const p3, 0x7f0c003e

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090106

    .line 57
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    const p3, 0x7f090089

    .line 58
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    .line 59
    new-instance v0, Lio/olvid/messenger/fragments/dialog/DiscussionSearchDialogFragment$1;

    invoke-direct {v0, p0}, Lio/olvid/messenger/fragments/dialog/DiscussionSearchDialogFragment$1;-><init>(Lio/olvid/messenger/fragments/dialog/DiscussionSearchDialogFragment;)V

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    new-instance p3, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;

    invoke-direct {p3}, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;-><init>()V

    .line 68
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;

    move-result-object v0

    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getCurrentIdentity()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/olvid/messenger/databases/entity/OwnedIdentity;

    iget-object v1, v1, Lio/olvid/messenger/databases/entity/OwnedIdentity;->bytesOwnedIdentity:[B

    const v2, 0x7f1001ca

    invoke-virtual {p0, v2}, Lio/olvid/messenger/fragments/dialog/DiscussionSearchDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/olvid/messenger/databases/dao/DiscussionDao;->getAllWithContactNames([BLjava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p3, v0}, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;->setUnfilteredDiscussions(Landroidx/lifecycle/LiveData;)V

    .line 69
    invoke-virtual {p3, p2}, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;->setDiscussionFilterEditText(Landroid/widget/EditText;)V

    .line 70
    new-instance p2, Lio/olvid/messenger/fragments/dialog/DiscussionSearchDialogFragment$2;

    invoke-direct {p2, p0}, Lio/olvid/messenger/fragments/dialog/DiscussionSearchDialogFragment$2;-><init>(Lio/olvid/messenger/fragments/dialog/DiscussionSearchDialogFragment;)V

    invoke-virtual {p3, p2}, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;->setOnClickDelegate(Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListOnClickDelegate;)V

    .line 78
    invoke-virtual {p0}, Lio/olvid/messenger/fragments/dialog/DiscussionSearchDialogFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    const v0, 0x7f090108

    .line 79
    invoke-virtual {p2, v0, p3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 80
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-object p1
.end method

.method public onStart()V
    .locals 2

    .line 48
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 49
    invoke-virtual {p0}, Lio/olvid/messenger/fragments/dialog/DiscussionSearchDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method
