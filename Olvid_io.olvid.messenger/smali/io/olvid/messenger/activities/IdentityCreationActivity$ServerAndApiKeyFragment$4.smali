.class Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment$4;
.super Ljava/lang/Object;
.source "IdentityCreationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment$4;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 365
    iget-object v0, p0, Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment$4;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment;

    invoke-virtual {v0}, Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lio/olvid/messenger/activities/IdentityCreationActivity;

    if-eqz v0, :cond_0

    .line 367
    iget-object v1, p0, Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment$4;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment;

    invoke-virtual {v1}, Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0045

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09005f

    .line 368
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 369
    invoke-static {v0}, Lio/olvid/messenger/activities/IdentityCreationActivity;->access$000(Lio/olvid/messenger/activities/IdentityCreationActivity;)Lio/olvid/messenger/viewModels/IdentityCreationViewModel;

    move-result-object v4

    invoke-virtual {v4}, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->getApiKey()Landroidx/lifecycle/LiveData;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 371
    new-instance v4, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v5, 0x7f1100e9

    invoke-direct {v4, p1, v5}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const p1, 0x7f100095

    .line 372
    invoke-virtual {v4, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 373
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f10003d

    new-instance v5, Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment$4$1;

    invoke-direct {v5, p0, v0, v2}, Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment$4$1;-><init>(Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment$4;Lio/olvid/messenger/activities/IdentityCreationActivity;Landroid/widget/EditText;)V

    .line 374
    invoke-virtual {p1, v1, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f10002d

    .line 380
    invoke-virtual {p1, v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 381
    invoke-virtual {v4}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method
