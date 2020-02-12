.class Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "GroupDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/activities/GroupDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GroupMembersAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter$GroupMemberViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter$GroupMemberViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private byteGroupOwnerIdentity:[B

.field private contacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/dao/ContactGroupJoinDao$ContactAndTimestamp;",
            ">;"
        }
    .end annotation
.end field

.field private final inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lio/olvid/messenger/activities/GroupDetailsActivity;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/GroupDetailsActivity;)V
    .locals 1

    .line 865
    iput-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter;->this$0:Lio/olvid/messenger/activities/GroupDetailsActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 853
    iput-object v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter;->byteGroupOwnerIdentity:[B

    .line 866
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$500(Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter;)Ljava/util/List;
    .locals 0

    .line 850
    iget-object p0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter;->contacts:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 940
    iget-object v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter;->contacts:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 941
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 850
    check-cast p1, Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter$GroupMemberViewHolder;

    invoke-virtual {p0, p1, p2}, Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter;->onBindViewHolder(Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter$GroupMemberViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter$GroupMemberViewHolder;I)V
    .locals 7

    .line 889
    iget-object v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter;->contacts:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 890
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao$ContactAndTimestamp;

    .line 891
    iget-object v0, p1, Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter$GroupMemberViewHolder;->groupMemberNameTextView:Landroid/widget/TextView;

    iget-object v1, p2, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao$ContactAndTimestamp;->contact:Lio/olvid/messenger/databases/entity/Contact;

    invoke-virtual {v1}, Lio/olvid/messenger/databases/entity/Contact;->getCustomDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 892
    iget-object v0, p1, Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter$GroupMemberViewHolder;->groupMemberJoinTimestampTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter;->this$0:Lio/olvid/messenger/activities/GroupDetailsActivity;

    const v2, 0x7f1001d2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-wide v5, p2, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao$ContactAndTimestamp;->timestamp:J

    invoke-static {v1, v5, v6}, Lio/olvid/messenger/App;->getNiceDateString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Lio/olvid/messenger/activities/GroupDetailsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 893
    iget-object v0, p1, Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter$GroupMemberViewHolder;->groupMemberInitialView:Lio/olvid/messenger/customClasses/InitialView;

    iget-object v1, p2, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao$ContactAndTimestamp;->contact:Lio/olvid/messenger/databases/entity/Contact;

    iget-object v1, v1, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    iget-object v2, p2, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao$ContactAndTimestamp;->contact:Lio/olvid/messenger/databases/entity/Contact;

    invoke-virtual {v2}, Lio/olvid/messenger/databases/entity/Contact;->getCustomDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/olvid/messenger/App;->getInitial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/olvid/messenger/customClasses/InitialView;->setInitial([BLjava/lang/String;)V

    .line 894
    iget-object v0, p2, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao$ContactAndTimestamp;->contact:Lio/olvid/messenger/databases/entity/Contact;

    iget-object v0, v0, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    iget-object v1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter;->byteGroupOwnerIdentity:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 895
    iget-object v0, p1, Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter$GroupMemberViewHolder;->groupMemberOwnerCrownImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 897
    :cond_0
    iget-object v0, p1, Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter$GroupMemberViewHolder;->groupMemberOwnerCrownImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 899
    :goto_0
    iget-object v0, p2, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao$ContactAndTimestamp;->contact:Lio/olvid/messenger/databases/entity/Contact;

    iget v0, v0, Lio/olvid/messenger/databases/entity/Contact;->newPublishedDetails:I

    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    goto :goto_1

    .line 904
    :cond_1
    iget-object v0, p1, Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter$GroupMemberViewHolder;->newPublishedDetailsGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 905
    iget-object v0, p1, Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter$GroupMemberViewHolder;->newUnseedPublishedDetailsDot:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 908
    :cond_2
    iget-object v0, p1, Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter$GroupMemberViewHolder;->newPublishedDetailsGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 909
    iget-object v0, p1, Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter$GroupMemberViewHolder;->newUnseedPublishedDetailsDot:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 901
    :cond_3
    iget-object v0, p1, Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter$GroupMemberViewHolder;->newPublishedDetailsGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 912
    :goto_1
    iget-object p2, p2, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao$ContactAndTimestamp;->contact:Lio/olvid/messenger/databases/entity/Contact;

    iget p2, p2, Lio/olvid/messenger/databases/entity/Contact;->establishedChannelCount:I

    if-nez p2, :cond_5

    .line 913
    iput-boolean v3, p1, Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter$GroupMemberViewHolder;->shouldAnimateChannelImageView:Z

    .line 914
    iget-object p2, p1, Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter$GroupMemberViewHolder;->groupMemberEstablishingChannelGroup:Landroid/view/ViewGroup;

    invoke-virtual {p2, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 915
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f080096

    invoke-static {p2, v0}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->create(Landroid/content/Context;I)Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 917
    new-instance v0, Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter$1;

    invoke-direct {v0, p0, p2}, Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter$1;-><init>(Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter;Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;)V

    invoke-virtual {p2, v0}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V

    .line 929
    :cond_4
    iget-object p1, p1, Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter$GroupMemberViewHolder;->groupMemberEstablishingChannelImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 931
    :cond_5
    iput-boolean v6, p1, Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter$GroupMemberViewHolder;->shouldAnimateChannelImageView:Z

    .line 932
    iget-object p2, p1, Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter$GroupMemberViewHolder;->groupMemberEstablishingChannelGroup:Landroid/view/ViewGroup;

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 933
    iget-object p1, p1, Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter$GroupMemberViewHolder;->groupMemberEstablishingChannelImageView:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 850
    invoke-virtual {p0, p1, p2}, Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter$GroupMemberViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter$GroupMemberViewHolder;
    .locals 2

    .line 872
    iget-object p2, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter;->inflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0c0059

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 873
    new-instance p2, Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter$GroupMemberViewHolder;

    invoke-direct {p2, p0, p1}, Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter$GroupMemberViewHolder;-><init>(Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 850
    check-cast p1, Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter$GroupMemberViewHolder;

    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter;->onViewAttachedToWindow(Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter$GroupMemberViewHolder;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter$GroupMemberViewHolder;)V
    .locals 1

    .line 878
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 879
    iget-boolean v0, p1, Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter$GroupMemberViewHolder;->shouldAnimateChannelImageView:Z

    if-eqz v0, :cond_0

    .line 880
    iget-object p1, p1, Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter$GroupMemberViewHolder;->groupMemberEstablishingChannelImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 881
    instance-of v0, p1, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    .line 882
    check-cast p1, Landroid/graphics/drawable/Animatable;

    invoke-interface {p1}, Landroid/graphics/drawable/Animatable;->start()V

    :cond_0
    return-void
.end method

.method public setContacts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/dao/ContactGroupJoinDao$ContactAndTimestamp;",
            ">;)V"
        }
    .end annotation

    .line 856
    iput-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter;->contacts:Ljava/util/List;

    .line 857
    invoke-virtual {p0}, Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method showCrown([B)V
    .locals 0

    .line 861
    iput-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter;->byteGroupOwnerIdentity:[B

    .line 862
    invoke-virtual {p0}, Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter;->notifyDataSetChanged()V

    return-void
.end method
