.class public Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "GroupMemberAdditionDialogFragment.java"


# static fields
.field private static final BYTES_GROUP_UID_KEY:Ljava/lang/String; = "bytes_group_uid"

.field private static final BYTES_OWNED_IDENTITY_KEY:Ljava/lang/String; = "bytes_owned_identity"


# instance fields
.field private bytesGroupUid:[B

.field private bytesOwnedIdentity:[B

.field private group:Lio/olvid/messenger/databases/entity/Group;

.field private selectedContacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Contact;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment;->selectedContacts:Ljava/util/List;

    .line 39
    iput-object v0, p0, Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment;->group:Lio/olvid/messenger/databases/entity/Group;

    return-void
.end method

.method static synthetic access$000(Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment;)Ljava/util/List;
    .locals 0

    .line 33
    iget-object p0, p0, Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment;->selectedContacts:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$002(Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 33
    iput-object p1, p0, Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment;->selectedContacts:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment;)[B
    .locals 0

    .line 33
    iget-object p0, p0, Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment;->bytesOwnedIdentity:[B

    return-object p0
.end method

.method static synthetic access$200(Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment;)[B
    .locals 0

    .line 33
    iget-object p0, p0, Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment;->bytesGroupUid:[B

    return-object p0
.end method

.method static synthetic access$300(Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment;)Lio/olvid/messenger/databases/entity/Group;
    .locals 0

    .line 33
    iget-object p0, p0, Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment;->group:Lio/olvid/messenger/databases/entity/Group;

    return-object p0
.end method

.method static synthetic access$302(Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment;Lio/olvid/messenger/databases/entity/Group;)Lio/olvid/messenger/databases/entity/Group;
    .locals 0

    .line 33
    iput-object p1, p0, Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment;->group:Lio/olvid/messenger/databases/entity/Group;

    return-object p1
.end method

.method public static newInstance([B[B)Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment;
    .locals 3

    .line 42
    new-instance v0, Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment;

    invoke-direct {v0}, Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment;-><init>()V

    .line 43
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "bytes_owned_identity"

    .line 44
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string p0, "bytes_group_uid"

    .line 45
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 46
    invoke-virtual {v0, v1}, Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 53
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "bytes_owned_identity"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment;->bytesOwnedIdentity:[B

    .line 55
    invoke-virtual {p0}, Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "bytes_group_uid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment;->bytesGroupUid:[B

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 61
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    :cond_0
    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0c0040

    const/4 v0, 0x0

    .line 81
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090106

    .line 82
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    const p3, 0x7f09010a

    .line 83
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v0, 0x7f10009a

    .line 84
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(I)V

    const p3, 0x7f090089

    .line 85
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    .line 86
    new-instance v0, Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment$1;

    invoke-direct {v0, p0}, Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment$1;-><init>(Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment;)V

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f090094

    .line 92
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    .line 93
    new-instance v0, Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment$2;

    invoke-direct {v0, p0}, Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment$2;-><init>(Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment;)V

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    new-instance p3, Lio/olvid/messenger/fragments/FilteredContactListFragment;

    invoke-direct {p3}, Lio/olvid/messenger/fragments/FilteredContactListFragment;-><init>()V

    .line 135
    invoke-virtual {p3, p2}, Lio/olvid/messenger/fragments/FilteredContactListFragment;->setContactFilterEditText(Landroid/widget/EditText;)V

    const/4 p2, 0x1

    .line 136
    invoke-virtual {p3, p2}, Lio/olvid/messenger/fragments/FilteredContactListFragment;->setSelectable(Z)V

    .line 137
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object p2

    invoke-virtual {p2}, Lio/olvid/messenger/databases/AppDatabase;->groupDao()Lio/olvid/messenger/databases/dao/GroupDao;

    move-result-object p2

    iget-object v0, p0, Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment;->bytesOwnedIdentity:[B

    iget-object v1, p0, Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment;->bytesGroupUid:[B

    invoke-interface {p2, v0, v1}, Lio/olvid/messenger/databases/dao/GroupDao;->getLiveData([B[B)Landroidx/lifecycle/LiveData;

    move-result-object p2

    new-instance v0, Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment$3;

    invoke-direct {v0, p0}, Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment$3;-><init>(Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment;)V

    invoke-static {p2, v0}, Landroidx/lifecycle/Transformations;->switchMap(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;

    move-result-object p2

    invoke-virtual {p3, p2}, Lio/olvid/messenger/fragments/FilteredContactListFragment;->setUnfilteredContacts(Landroidx/lifecycle/LiveData;)V

    .line 148
    new-instance p2, Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment$4;

    invoke-direct {p2, p0}, Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment$4;-><init>(Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment;)V

    .line 154
    invoke-virtual {p3, p2}, Lio/olvid/messenger/fragments/FilteredContactListFragment;->setSelectedContactsObserver(Landroidx/lifecycle/Observer;)V

    .line 156
    invoke-virtual {p0}, Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    const v0, 0x7f090107

    .line 157
    invoke-virtual {p2, v0, p3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 158
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-object p1
.end method

.method public onStart()V
    .locals 2

    .line 71
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 72
    invoke-virtual {p0}, Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    .line 74
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    :cond_0
    return-void
.end method
