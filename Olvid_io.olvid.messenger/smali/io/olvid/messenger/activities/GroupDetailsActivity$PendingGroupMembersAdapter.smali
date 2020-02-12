.class Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "GroupDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/activities/GroupDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PendingGroupMembersAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter$PendingGroupMemberViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter$PendingGroupMemberViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final inflater:Landroid/view/LayoutInflater;

.field private pendingGroupMembers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/dao/PendingGroupMemberDao$PendingGroupMemberAndContact;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/olvid/messenger/activities/GroupDetailsActivity;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/GroupDetailsActivity;)V
    .locals 0

    .line 993
    iput-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter;->this$0:Lio/olvid/messenger/activities/GroupDetailsActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 994
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$700(Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter;)Ljava/util/List;
    .locals 0

    .line 984
    iget-object p0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter;->pendingGroupMembers:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1021
    iget-object v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter;->pendingGroupMembers:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1022
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 984
    check-cast p1, Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter$PendingGroupMemberViewHolder;

    invoke-virtual {p0, p1, p2}, Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter;->onBindViewHolder(Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter$PendingGroupMemberViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter$PendingGroupMemberViewHolder;I)V
    .locals 4

    .line 1006
    iget-object v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter;->pendingGroupMembers:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1007
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao$PendingGroupMemberAndContact;

    .line 1008
    iget-object v0, p2, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao$PendingGroupMemberAndContact;->contact:Lio/olvid/messenger/databases/entity/Contact;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1009
    iget-object v0, p1, Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter$PendingGroupMemberViewHolder;->pendingGroupMemberNameTextView:Landroid/widget/TextView;

    iget-object v2, p2, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao$PendingGroupMemberAndContact;->pendingGroupMember:Lio/olvid/messenger/databases/entity/PendingGroupMember;

    iget-object v2, v2, Lio/olvid/messenger/databases/entity/PendingGroupMember;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1010
    iget-object v0, p1, Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter$PendingGroupMemberViewHolder;->pendingGroupMemberInitialView:Lio/olvid/messenger/customClasses/InitialView;

    new-array v2, v1, [B

    iget-object v3, p2, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao$PendingGroupMemberAndContact;->pendingGroupMember:Lio/olvid/messenger/databases/entity/PendingGroupMember;

    iget-object v3, v3, Lio/olvid/messenger/databases/entity/PendingGroupMember;->displayName:Ljava/lang/String;

    invoke-static {v3}, Lio/olvid/messenger/App;->getInitial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lio/olvid/messenger/customClasses/InitialView;->setInitial([BLjava/lang/String;)V

    goto :goto_0

    .line 1012
    :cond_0
    iget-object v0, p1, Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter$PendingGroupMemberViewHolder;->pendingGroupMemberNameTextView:Landroid/widget/TextView;

    iget-object v2, p2, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao$PendingGroupMemberAndContact;->contact:Lio/olvid/messenger/databases/entity/Contact;

    invoke-virtual {v2}, Lio/olvid/messenger/databases/entity/Contact;->getCustomDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1013
    iget-object v0, p1, Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter$PendingGroupMemberViewHolder;->pendingGroupMemberInitialView:Lio/olvid/messenger/customClasses/InitialView;

    iget-object v2, p2, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao$PendingGroupMemberAndContact;->contact:Lio/olvid/messenger/databases/entity/Contact;

    iget-object v2, v2, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    iget-object v3, p2, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao$PendingGroupMemberAndContact;->contact:Lio/olvid/messenger/databases/entity/Contact;

    invoke-virtual {v3}, Lio/olvid/messenger/databases/entity/Contact;->getCustomDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/olvid/messenger/App;->getInitial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lio/olvid/messenger/customClasses/InitialView;->setInitial([BLjava/lang/String;)V

    .line 1015
    :goto_0
    iget-object p1, p1, Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter$PendingGroupMemberViewHolder;->invitationDeclinedTextView:Landroid/widget/TextView;

    iget-object p2, p2, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao$PendingGroupMemberAndContact;->pendingGroupMember:Lio/olvid/messenger/databases/entity/PendingGroupMember;

    iget-boolean p2, p2, Lio/olvid/messenger/databases/entity/PendingGroupMember;->declined:Z

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 984
    invoke-virtual {p0, p1, p2}, Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter$PendingGroupMemberViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter$PendingGroupMemberViewHolder;
    .locals 2

    .line 1000
    iget-object p2, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter;->inflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0c0065

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 1001
    new-instance p2, Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter$PendingGroupMemberViewHolder;

    invoke-direct {p2, p0, p1}, Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter$PendingGroupMemberViewHolder;-><init>(Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setPendingGroupMembers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/dao/PendingGroupMemberDao$PendingGroupMemberAndContact;",
            ">;)V"
        }
    .end annotation

    .line 989
    iput-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter;->pendingGroupMembers:Ljava/util/List;

    .line 990
    invoke-virtual {p0}, Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter;->notifyDataSetChanged()V

    return-void
.end method
