.class public Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "GroupListFragment.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/fragments/GroupListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GroupListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter$ViewHolder;",
        ">;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/util/List<",
        "Lio/olvid/messenger/databases/dao/GroupDao$GroupAndContactDisplayNames;",
        ">;>;"
    }
.end annotation


# instance fields
.field private groups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/dao/GroupDao$GroupAndContactDisplayNames;",
            ">;"
        }
    .end annotation
.end field

.field private final inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lio/olvid/messenger/fragments/GroupListFragment;


# direct methods
.method public constructor <init>(Lio/olvid/messenger/fragments/GroupListFragment;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter;->this$0:Lio/olvid/messenger/fragments/GroupListFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 214
    invoke-virtual {p1}, Lio/olvid/messenger/fragments/GroupListFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$200(Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter;)Ljava/util/List;
    .locals 0

    .line 208
    iget-object p0, p0, Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter;->groups:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 272
    iget-object v0, p0, Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter;->groups:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 273
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 208
    check-cast p1, Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter;->onBindViewHolder(Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter$ViewHolder;I)V
    .locals 8

    .line 226
    iget-object v0, p0, Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter;->groups:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 229
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/messenger/databases/dao/GroupDao$GroupAndContactDisplayNames;

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz p2, :cond_2

    .line 231
    iget-object v4, p0, Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter;->groups:Ljava/util/List;

    sub-int/2addr p2, v1

    .line 232
    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/olvid/messenger/databases/dao/GroupDao$GroupAndContactDisplayNames;

    iget-object p2, p2, Lio/olvid/messenger/databases/dao/GroupDao$GroupAndContactDisplayNames;->group:Lio/olvid/messenger/databases/entity/Group;

    iget-object p2, p2, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerIdentity:[B

    if-nez p2, :cond_1

    iget-object p2, v0, Lio/olvid/messenger/databases/dao/GroupDao$GroupAndContactDisplayNames;->group:Lio/olvid/messenger/databases/entity/Group;

    iget-object p2, p2, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerIdentity:[B

    if-eqz p2, :cond_1

    goto :goto_0

    .line 241
    :cond_1
    iget-object p2, p1, Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter$ViewHolder;->groupSectionHeader:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 234
    :cond_2
    :goto_0
    iget-object p2, p1, Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter$ViewHolder;->groupSectionHeader:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    iget-object p2, v0, Lio/olvid/messenger/databases/dao/GroupDao$GroupAndContactDisplayNames;->group:Lio/olvid/messenger/databases/entity/Group;

    iget-object p2, p2, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerIdentity:[B

    if-nez p2, :cond_3

    .line 236
    iget-object p2, p1, Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter$ViewHolder;->groupSectionHeader:Landroid/widget/TextView;

    const v4, 0x7f10010d

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 238
    :cond_3
    iget-object p2, p1, Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter$ViewHolder;->groupSectionHeader:Landroid/widget/TextView;

    const v4, 0x7f10010e

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 244
    :goto_1
    iget-object p2, p1, Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter$ViewHolder;->initialView:Lio/olvid/messenger/customClasses/InitialView;

    iget-object v4, v0, Lio/olvid/messenger/databases/dao/GroupDao$GroupAndContactDisplayNames;->group:Lio/olvid/messenger/databases/entity/Group;

    iget-object v4, v4, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerAndUid:[B

    invoke-virtual {p2, v4}, Lio/olvid/messenger/customClasses/InitialView;->setGroup([B)V

    .line 245
    iget-object p2, p1, Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter$ViewHolder;->groupName:Landroid/widget/TextView;

    iget-object v4, v0, Lio/olvid/messenger/databases/dao/GroupDao$GroupAndContactDisplayNames;->group:Lio/olvid/messenger/databases/entity/Group;

    invoke-virtual {v4}, Lio/olvid/messenger/databases/entity/Group;->getCustomName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object p2, v0, Lio/olvid/messenger/databases/dao/GroupDao$GroupAndContactDisplayNames;->contactDisplayNames:Ljava/lang/String;

    const/4 v4, 0x2

    if-eqz p2, :cond_5

    iget-object p2, v0, Lio/olvid/messenger/databases/dao/GroupDao$GroupAndContactDisplayNames;->contactDisplayNames:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_4

    goto :goto_2

    .line 252
    :cond_4
    iget-object p2, p1, Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter$ViewHolder;->groupMembers:Landroid/widget/TextView;

    iget-object v5, v0, Lio/olvid/messenger/databases/dao/GroupDao$GroupAndContactDisplayNames;->contactDisplayNames:Ljava/lang/String;

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 247
    :cond_5
    :goto_2
    new-instance p2, Landroid/text/style/StyleSpan;

    invoke-direct {p2, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 248
    new-instance v5, Landroid/text/SpannableString;

    iget-object v6, p0, Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter;->this$0:Lio/olvid/messenger/fragments/GroupListFragment;

    const v7, 0x7f1001d8

    invoke-virtual {v6, v7}, Lio/olvid/messenger/fragments/GroupListFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 249
    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v6

    const/16 v7, 0x21

    invoke-virtual {v5, p2, v3, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 250
    iget-object p2, p1, Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter$ViewHolder;->groupMembers:Landroid/widget/TextView;

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    :goto_3
    iget-object p2, v0, Lio/olvid/messenger/databases/dao/GroupDao$GroupAndContactDisplayNames;->group:Lio/olvid/messenger/databases/entity/Group;

    iget p2, p2, Lio/olvid/messenger/databases/entity/Group;->newPublishedDetails:I

    if-eqz p2, :cond_8

    if-eq p2, v1, :cond_7

    if-eq p2, v4, :cond_6

    const/4 v0, 0x3

    if-eq p2, v0, :cond_7

    goto :goto_4

    .line 259
    :cond_6
    iget-object p2, p1, Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter$ViewHolder;->newPublishedDetailsGroup:Landroid/view/View;

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 260
    iget-object p1, p1, Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter$ViewHolder;->newUnseedPublishedDetailsDot:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 264
    :cond_7
    iget-object p2, p1, Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter$ViewHolder;->newPublishedDetailsGroup:Landroid/view/View;

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 265
    iget-object p1, p1, Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter$ViewHolder;->newUnseedPublishedDetailsDot:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 256
    :cond_8
    iget-object p1, p1, Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter$ViewHolder;->newPublishedDetailsGroup:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 208
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter;->onChanged(Ljava/util/List;)V

    return-void
.end method

.method public onChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/dao/GroupDao$GroupAndContactDisplayNames;",
            ">;)V"
        }
    .end annotation

    .line 280
    iput-object p1, p0, Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter;->groups:Ljava/util/List;

    .line 281
    invoke-virtual {p0}, Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 208
    invoke-virtual {p0, p1, p2}, Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter$ViewHolder;
    .locals 2

    .line 220
    iget-object p2, p0, Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0c0058

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 221
    new-instance p2, Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter$ViewHolder;-><init>(Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter;Landroid/view/View;)V

    return-object p2
.end method
