.class Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment$3;
.super Ljava/lang/Object;
.source "ContactIntroductionDialogFragment.java"

# interfaces
.implements Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListOnClickDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment;


# direct methods
.method constructor <init>(Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment$3;->this$0:Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public contactClicked(Landroid/view/View;Lio/olvid/messenger/databases/entity/Contact;)V
    .locals 4

    .line 113
    iget-object v0, p0, Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment$3;->this$0:Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment;

    invoke-virtual {v0}, Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment;->dismiss()V

    .line 115
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f1100e9

    invoke-direct {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const p1, 0x7f10008b

    .line 116
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment$3;->this$0:Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 117
    invoke-static {v0}, Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment;->access$200(Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p2}, Lio/olvid/messenger/databases/entity/Contact;->getCustomDisplayName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const v2, 0x7f100071

    invoke-virtual {v0, v2, v1}, Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment$3$1;

    invoke-direct {v0, p0, p2}, Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment$3$1;-><init>(Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment$3;Lio/olvid/messenger/databases/entity/Contact;)V

    const p2, 0x7f10003d

    .line 118
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f10002d

    const/4 v0, 0x0

    .line 130
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 131
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method public contactLongClicked(Landroid/view/View;Lio/olvid/messenger/databases/entity/Contact;)V
    .locals 0

    .line 136
    invoke-virtual {p0, p1, p2}, Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment$3;->contactClicked(Landroid/view/View;Lio/olvid/messenger/databases/entity/Contact;)V

    return-void
.end method
