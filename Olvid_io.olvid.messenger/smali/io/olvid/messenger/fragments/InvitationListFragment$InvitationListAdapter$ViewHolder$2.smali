.class Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder$2;
.super Ljava/lang/Object;
.source "InvitationListFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;-><init>(Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;

.field final synthetic val$this$1:Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;


# direct methods
.method constructor <init>(Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;)V
    .locals 0

    .line 803
    iput-object p1, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder$2;->this$2:Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;

    iput-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder$2;->val$this$1:Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 809
    iget-object v0, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder$2;->this$2:Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;

    iget-object v0, v0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->this$1:Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;

    iget-object v0, v0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;->this$0:Lio/olvid/messenger/fragments/InvitationListFragment;

    invoke-virtual {v0}, Lio/olvid/messenger/fragments/InvitationListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lio/olvid/messenger/activities/MainActivity;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 810
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 811
    iget-object v0, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder$2;->this$2:Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;

    iget-object v0, v0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->this$1:Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;

    iget-object v0, v0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;->this$0:Lio/olvid/messenger/fragments/InvitationListFragment;

    invoke-virtual {v0}, Lio/olvid/messenger/fragments/InvitationListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lio/olvid/messenger/activities/MainActivity;

    .line 812
    invoke-virtual {v0, v1}, Lio/olvid/messenger/activities/MainActivity;->setForceFabHidden(Z)V

    .line 815
    :cond_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 816
    iget-object p1, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder$2;->this$2:Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;

    iget-object p1, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->validateSasButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 818
    :cond_1
    iget-object p1, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder$2;->this$2:Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;

    iget-object p1, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->validateSasButton:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
