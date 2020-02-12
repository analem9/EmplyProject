.class Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter$GroupMemberViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "GroupDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GroupMemberViewHolder"
.end annotation


# instance fields
.field final groupMemberEstablishingChannelGroup:Landroid/view/ViewGroup;

.field final groupMemberEstablishingChannelImageView:Landroid/widget/ImageView;

.field final groupMemberInitialView:Lio/olvid/messenger/customClasses/InitialView;

.field final groupMemberJoinTimestampTextView:Landroid/widget/TextView;

.field final groupMemberNameTextView:Landroid/widget/TextView;

.field final groupMemberOwnerCrownImageView:Landroid/widget/ImageView;

.field final newPublishedDetailsGroup:Landroid/view/ViewGroup;

.field final newUnseedPublishedDetailsDot:Landroid/widget/ImageView;

.field shouldAnimateChannelImageView:Z

.field final synthetic this$1:Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter;Landroid/view/View;)V
    .locals 0

    .line 958
    iput-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter$GroupMemberViewHolder;->this$1:Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter;

    .line 959
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 960
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 961
    iput-boolean p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter$GroupMemberViewHolder;->shouldAnimateChannelImageView:Z

    const p1, 0x7f09016f

    .line 962
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter$GroupMemberViewHolder;->groupMemberNameTextView:Landroid/widget/TextView;

    const p1, 0x7f09016e

    .line 963
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter$GroupMemberViewHolder;->groupMemberJoinTimestampTextView:Landroid/widget/TextView;

    const p1, 0x7f09016d

    .line 964
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/customClasses/InitialView;

    iput-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter$GroupMemberViewHolder;->groupMemberInitialView:Lio/olvid/messenger/customClasses/InitialView;

    const p1, 0x7f090170

    .line 965
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter$GroupMemberViewHolder;->groupMemberOwnerCrownImageView:Landroid/widget/ImageView;

    const p1, 0x7f09016b

    .line 966
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter$GroupMemberViewHolder;->groupMemberEstablishingChannelGroup:Landroid/view/ViewGroup;

    const p1, 0x7f09016c

    .line 967
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter$GroupMemberViewHolder;->groupMemberEstablishingChannelImageView:Landroid/widget/ImageView;

    const p1, 0x7f0901ff

    .line 968
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter$GroupMemberViewHolder;->newPublishedDetailsGroup:Landroid/view/ViewGroup;

    const p1, 0x7f090201

    .line 969
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter$GroupMemberViewHolder;->newUnseedPublishedDetailsDot:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 974
    invoke-virtual {p0}, Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter$GroupMemberViewHolder;->getLayoutPosition()I

    move-result p1

    .line 975
    iget-object v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter$GroupMemberViewHolder;->this$1:Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter;

    iget-object v0, v0, Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter;->this$0:Lio/olvid/messenger/activities/GroupDetailsActivity;

    iget-object v1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter$GroupMemberViewHolder;->this$1:Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter;

    invoke-static {v1}, Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter;->access$500(Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao$ContactAndTimestamp;

    iget-object p1, p1, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao$ContactAndTimestamp;->contact:Lio/olvid/messenger/databases/entity/Contact;

    invoke-static {v0, p1}, Lio/olvid/messenger/activities/GroupDetailsActivity;->access$600(Lio/olvid/messenger/activities/GroupDetailsActivity;Lio/olvid/messenger/databases/entity/Contact;)V

    return-void
.end method
