.class Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$2;
.super Ljava/lang/Object;
.source "InvitationListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;->onBindViewHolder(Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;

.field final synthetic val$dialog:Lio/olvid/engine/engine/types/ObvDialog;

.field final synthetic val$identityDetails:Lio/olvid/engine/engine/types/JsonIdentityDetails;


# direct methods
.method constructor <init>(Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;Lio/olvid/engine/engine/types/JsonIdentityDetails;Lio/olvid/engine/engine/types/ObvDialog;)V
    .locals 0

    .line 495
    iput-object p1, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$2;->this$1:Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;

    iput-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$2;->val$identityDetails:Lio/olvid/engine/engine/types/JsonIdentityDetails;

    iput-object p3, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$2;->val$dialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 498
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1100e9

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 499
    iget-object v1, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$2;->this$1:Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;

    iget-object v1, v1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;->this$0:Lio/olvid/messenger/fragments/InvitationListFragment;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$2;->val$identityDetails:Lio/olvid/engine/engine/types/JsonIdentityDetails;

    const-string v4, "%f %l (%p @ %c)"

    invoke-virtual {v3, v4}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getFullDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f10007d

    invoke-virtual {v1, v3, v2}, Lio/olvid/messenger/fragments/InvitationListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f10009b

    .line 500
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$2$1;

    invoke-direct {v2, p0, p1}, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$2$1;-><init>(Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$2;Landroid/view/View;)V

    const p1, 0x7f10003f

    .line 501
    invoke-virtual {v1, p1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f10002d

    const/4 v2, 0x0

    .line 513
    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 514
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
