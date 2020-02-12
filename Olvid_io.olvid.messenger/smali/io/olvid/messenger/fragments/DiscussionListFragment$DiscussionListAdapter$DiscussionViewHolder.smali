.class Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter$DiscussionViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DiscussionListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DiscussionViewHolder"
.end annotation


# instance fields
.field final customColorView:Landroid/view/View;

.field final dateTextView:Landroid/widget/TextView;

.field final discussionRootView:Landroid/view/View;

.field final initialView:Lio/olvid/messenger/customClasses/InitialView;

.field final lastMessageContentTextView:Landroid/widget/TextView;

.field final lastMessageUnreadImageView:Landroid/widget/ImageView;

.field final locked:Z

.field messageId:J

.field final nameTextView:Landroid/widget/TextView;

.field final synthetic this$1:Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter;

.field final unreadMessageCountTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter;Landroid/view/View;Z)V
    .locals 0

    .line 589
    iput-object p1, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter$DiscussionViewHolder;->this$1:Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter;

    .line 590
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 591
    iput-object p2, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter$DiscussionViewHolder;->discussionRootView:Landroid/view/View;

    .line 592
    iput-boolean p3, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter$DiscussionViewHolder;->locked:Z

    .line 593
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 594
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const p1, 0x7f090120

    .line 595
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter$DiscussionViewHolder;->nameTextView:Landroid/widget/TextView;

    const p1, 0x7f090110

    .line 596
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter$DiscussionViewHolder;->dateTextView:Landroid/widget/TextView;

    const p1, 0x7f090114

    .line 597
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter$DiscussionViewHolder;->lastMessageContentTextView:Landroid/widget/TextView;

    const p1, 0x7f0900f2

    .line 598
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter$DiscussionViewHolder;->customColorView:Landroid/view/View;

    const p1, 0x7f09019a

    .line 599
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/customClasses/InitialView;

    iput-object p1, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter$DiscussionViewHolder;->initialView:Lio/olvid/messenger/customClasses/InitialView;

    const p1, 0x7f0901ae

    .line 600
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter$DiscussionViewHolder;->lastMessageUnreadImageView:Landroid/widget/ImageView;

    const p1, 0x7f090123

    .line 601
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter$DiscussionViewHolder;->unreadMessageCountTextView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 606
    iget-object v0, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter$DiscussionViewHolder;->this$1:Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter;

    iget-object v0, v0, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter;->this$0:Lio/olvid/messenger/fragments/DiscussionListFragment;

    iget-object v1, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter$DiscussionViewHolder;->this$1:Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter;

    invoke-static {v1}, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter;->access$300(Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter$DiscussionViewHolder;->getLayoutPosition()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;

    iget-object v1, v1, Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;->discussion:Lio/olvid/messenger/databases/entity/Discussion;

    invoke-virtual {v0, v1, p1}, Lio/olvid/messenger/fragments/DiscussionListFragment;->discussionClicked(Lio/olvid/messenger/databases/entity/Discussion;Landroid/view/View;)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 611
    iget-object v0, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter$DiscussionViewHolder;->this$1:Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter;

    iget-object v0, v0, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter;->this$0:Lio/olvid/messenger/fragments/DiscussionListFragment;

    iget-object v1, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter$DiscussionViewHolder;->this$1:Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter;

    invoke-static {v1}, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter;->access$300(Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lio/olvid/messenger/fragments/DiscussionListFragment$DiscussionListAdapter$DiscussionViewHolder;->getLayoutPosition()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;

    invoke-static {v0, v1, p1}, Lio/olvid/messenger/fragments/DiscussionListFragment;->access$400(Lio/olvid/messenger/fragments/DiscussionListFragment;Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;Landroid/view/View;)V

    const/4 p1, 0x1

    return p1
.end method
