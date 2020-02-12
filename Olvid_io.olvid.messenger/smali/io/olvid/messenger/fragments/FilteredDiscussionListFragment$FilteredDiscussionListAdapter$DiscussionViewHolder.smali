.class Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter$DiscussionViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "FilteredDiscussionListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DiscussionViewHolder"
.end annotation


# instance fields
.field final discussionGroupMembersTextView:Landroid/widget/TextView;

.field final discussionTitleTextView:Landroid/widget/TextView;

.field final initialView:Lio/olvid/messenger/customClasses/InitialView;

.field final synthetic this$1:Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter;


# direct methods
.method constructor <init>(Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter;Landroid/view/View;I)V
    .locals 0

    .line 343
    iput-object p1, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter$DiscussionViewHolder;->this$1:Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter;

    .line 344
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 345
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090121

    .line 346
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter$DiscussionViewHolder;->discussionTitleTextView:Landroid/widget/TextView;

    const p1, 0x7f090112

    .line 347
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter$DiscussionViewHolder;->discussionGroupMembersTextView:Landroid/widget/TextView;

    const p1, 0x7f090113

    .line 348
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/customClasses/InitialView;

    iput-object p1, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter$DiscussionViewHolder;->initialView:Lio/olvid/messenger/customClasses/InitialView;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 354
    invoke-virtual {p0}, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter$DiscussionViewHolder;->getLayoutPosition()I

    move-result v0

    .line 355
    iget-object v1, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter$DiscussionViewHolder;->this$1:Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter;

    iget-object v1, v1, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter;->this$0:Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;

    invoke-static {v1}, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;->access$100(Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;)Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListOnClickDelegate;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter$DiscussionViewHolder;->this$1:Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter;

    invoke-static {v2}, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter;->access$000(Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$SearchableDiscussion;

    invoke-interface {v1, p1, v0}, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListOnClickDelegate;->discussionClicked(Landroid/view/View;Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$SearchableDiscussion;)V

    return-void
.end method
