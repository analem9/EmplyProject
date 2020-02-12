.class Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter$PendingGroupMemberViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "GroupDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PendingGroupMemberViewHolder"
.end annotation


# instance fields
.field final invitationDeclinedTextView:Landroid/widget/TextView;

.field final pendingGroupMemberInitialView:Lio/olvid/messenger/customClasses/InitialView;

.field final pendingGroupMemberNameTextView:Landroid/widget/TextView;

.field final synthetic this$1:Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter;Landroid/view/View;)V
    .locals 0

    .line 1032
    iput-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter$PendingGroupMemberViewHolder;->this$1:Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter;

    .line 1033
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 1034
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090218

    .line 1035
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter$PendingGroupMemberViewHolder;->pendingGroupMemberNameTextView:Landroid/widget/TextView;

    const p1, 0x7f090217

    .line 1036
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/customClasses/InitialView;

    iput-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter$PendingGroupMemberViewHolder;->pendingGroupMemberInitialView:Lio/olvid/messenger/customClasses/InitialView;

    const p1, 0x7f09019d

    .line 1037
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter$PendingGroupMemberViewHolder;->invitationDeclinedTextView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1042
    invoke-virtual {p0}, Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter$PendingGroupMemberViewHolder;->getLayoutPosition()I

    move-result v0

    .line 1043
    iget-object v1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter$PendingGroupMemberViewHolder;->this$1:Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter;

    invoke-static {v1}, Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter;->access$700(Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao$PendingGroupMemberAndContact;

    .line 1044
    iget-object v1, v0, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao$PendingGroupMemberAndContact;->pendingGroupMember:Lio/olvid/messenger/databases/entity/PendingGroupMember;

    iget-boolean v1, v1, Lio/olvid/messenger/databases/entity/PendingGroupMember;->declined:Z

    if-eqz v1, :cond_0

    .line 1045
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v2, 0x7f1100e9

    invoke-direct {v1, p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const p1, 0x7f100098

    .line 1046
    invoke-virtual {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter$PendingGroupMemberViewHolder;->this$1:Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter;

    iget-object v1, v1, Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter;->this$0:Lio/olvid/messenger/activities/GroupDetailsActivity;

    const v2, 0x7f10007b

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v0, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao$PendingGroupMemberAndContact;->pendingGroupMember:Lio/olvid/messenger/databases/entity/PendingGroupMember;

    iget-object v5, v5, Lio/olvid/messenger/databases/entity/PendingGroupMember;->displayName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter$PendingGroupMemberViewHolder;->this$1:Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter;

    iget-object v5, v5, Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter;->this$0:Lio/olvid/messenger/activities/GroupDetailsActivity;

    .line 1047
    invoke-static {v5}, Lio/olvid/messenger/activities/GroupDetailsActivity;->access$400(Lio/olvid/messenger/activities/GroupDetailsActivity;)Lio/olvid/messenger/viewModels/GroupDetailsViewModel;

    move-result-object v5

    invoke-virtual {v5}, Lio/olvid/messenger/viewModels/GroupDetailsViewModel;->getGroup()Landroidx/lifecycle/LiveData;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/olvid/messenger/databases/entity/Group;

    invoke-virtual {v5}, Lio/olvid/messenger/databases/entity/Group;->getCustomName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lio/olvid/messenger/activities/GroupDetailsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f10003d

    new-instance v2, Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter$PendingGroupMemberViewHolder$1;

    invoke-direct {v2, p0, v0}, Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter$PendingGroupMemberViewHolder$1;-><init>(Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter$PendingGroupMemberViewHolder;Lio/olvid/messenger/databases/dao/PendingGroupMemberDao$PendingGroupMemberAndContact;)V

    .line 1048
    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f10002d

    const/4 v1, 0x0

    .line 1059
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 1060
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method
