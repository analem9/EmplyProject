.class public Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "ContactIntroductionDialogFragment.java"


# static fields
.field private static final BYTES_CONTACT_IDENTITY_KEY:Ljava/lang/String; = "bytes_contact_identity"

.field private static final BYTES_OWNED_IDENTITY_KEY:Ljava/lang/String; = "bytes_owned_identity"

.field private static final DISPLAY_NAME_KEY:Ljava/lang/String; = "display_name"


# instance fields
.field private bytesContactIdentityA:[B

.field private bytesOwnedIdentity:[B

.field private displayNameA:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment;)[B
    .locals 0

    .line 37
    iget-object p0, p0, Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment;->bytesContactIdentityA:[B

    return-object p0
.end method

.method static synthetic access$100(Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment;)[B
    .locals 0

    .line 37
    iget-object p0, p0, Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment;->bytesOwnedIdentity:[B

    return-object p0
.end method

.method static synthetic access$200(Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment;->displayNameA:Ljava/lang/String;

    return-object p0
.end method

.method public static newInstance([B[BLjava/lang/String;)Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment;
    .locals 3

    .line 46
    new-instance v0, Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment;

    invoke-direct {v0}, Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment;-><init>()V

    .line 47
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "bytes_owned_identity"

    .line 48
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string p0, "bytes_contact_identity"

    .line 49
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string p0, "display_name"

    .line 50
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0, v1}, Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 58
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "bytes_owned_identity"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment;->bytesOwnedIdentity:[B

    .line 60
    invoke-virtual {p0}, Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "bytes_contact_identity"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment;->bytesContactIdentityA:[B

    .line 61
    invoke-virtual {p0}, Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "display_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment;->displayNameA:Ljava/lang/String;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 67
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    .line 69
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    :cond_0
    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const/4 p3, 0x0

    const v0, 0x7f0c003f

    .line 87
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090106

    .line 88
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    const v0, 0x7f09010a

    .line 89
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 90
    invoke-virtual {p0}, Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment;->displayNameA:Ljava/lang/String;

    aput-object v3, v2, p3

    const p3, 0x7f100099

    invoke-virtual {v1, p3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f090089

    .line 91
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    .line 92
    new-instance v0, Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment$1;

    invoke-direct {v0, p0}, Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment$1;-><init>(Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment;)V

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    new-instance p3, Lio/olvid/messenger/fragments/FilteredContactListFragment;

    invoke-direct {p3}, Lio/olvid/messenger/fragments/FilteredContactListFragment;-><init>()V

    .line 100
    invoke-virtual {p3, p2}, Lio/olvid/messenger/fragments/FilteredContactListFragment;->setContactFilterEditText(Landroid/widget/EditText;)V

    .line 101
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getCurrentIdentity()Landroidx/lifecycle/LiveData;

    move-result-object p2

    new-instance v0, Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment$2;

    invoke-direct {v0, p0}, Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment$2;-><init>(Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment;)V

    invoke-static {p2, v0}, Landroidx/lifecycle/Transformations;->switchMap(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;

    move-result-object p2

    invoke-virtual {p3, p2}, Lio/olvid/messenger/fragments/FilteredContactListFragment;->setUnfilteredContacts(Landroidx/lifecycle/LiveData;)V

    .line 110
    new-instance p2, Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment$3;

    invoke-direct {p2, p0}, Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment$3;-><init>(Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment;)V

    invoke-virtual {p3, p2}, Lio/olvid/messenger/fragments/FilteredContactListFragment;->setOnClickDelegate(Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListOnClickDelegate;)V

    .line 140
    invoke-virtual {p0}, Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    const v0, 0x7f090107

    .line 141
    invoke-virtual {p2, v0, p3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 142
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-object p1
.end method

.method public onStart()V
    .locals 2

    .line 77
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 78
    invoke-virtual {p0}, Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    .line 80
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    :cond_0
    return-void
.end method
