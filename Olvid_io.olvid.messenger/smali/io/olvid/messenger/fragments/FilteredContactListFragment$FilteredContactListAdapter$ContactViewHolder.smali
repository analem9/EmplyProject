.class Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "FilteredContactListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContactViewHolder"
.end annotation


# instance fields
.field final contactNameTextView:Landroid/widget/TextView;

.field final contactSelectionCheckbox:Landroid/widget/CheckBox;

.field currentFilter:Ljava/lang/String;

.field final establishingChannelGroup:Landroid/view/ViewGroup;

.field final establishingChannelImageView:Landroid/widget/ImageView;

.field final initialView:Lio/olvid/messenger/customClasses/InitialView;

.field final myIdHeader:Landroid/widget/TextView;

.field final myIdMiddlePart:Landroid/view/View;

.field final newPublishedDetailsGroup:Landroid/view/ViewGroup;

.field final newUnseedPublishedDetailsDot:Landroid/widget/ImageView;

.field final rootView:Landroid/view/View;

.field shouldAnimateChannelImageView:Z

.field final synthetic this$1:Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;

.field final trustedContactsMyIdFooter:Landroid/widget/TextView;

.field final unpublishedDetailsIcon:Landroid/view/View;


# direct methods
.method constructor <init>(Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;Landroid/view/View;I)V
    .locals 0

    .line 587
    iput-object p1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;->this$1:Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;

    .line 588
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 589
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 590
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 591
    iput-object p2, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;->rootView:Landroid/view/View;

    const p1, 0x7f0901f8

    .line 592
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;->myIdMiddlePart:Landroid/view/View;

    const p1, 0x7f0900de

    .line 593
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;->contactNameTextView:Landroid/widget/TextView;

    const p1, 0x7f09019a

    .line 594
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/customClasses/InitialView;

    iput-object p1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;->initialView:Lio/olvid/messenger/customClasses/InitialView;

    const p1, 0x7f090135

    .line 595
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;->establishingChannelGroup:Landroid/view/ViewGroup;

    const p1, 0x7f090136

    .line 596
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;->establishingChannelImageView:Landroid/widget/ImageView;

    const p1, 0x7f0902c7

    .line 597
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;->unpublishedDetailsIcon:Landroid/view/View;

    const p1, 0x7f0901ff

    .line 598
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;->newPublishedDetailsGroup:Landroid/view/ViewGroup;

    const p1, 0x7f090201

    .line 599
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;->newUnseedPublishedDetailsDot:Landroid/widget/ImageView;

    const p1, 0x7f0900ea

    .line 600
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;->trustedContactsMyIdFooter:Landroid/widget/TextView;

    const p1, 0x7f0901fb

    .line 601
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;->myIdHeader:Landroid/widget/TextView;

    const/4 p1, 0x0

    .line 603
    iput-boolean p1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;->shouldAnimateChannelImageView:Z

    const p1, 0x7f0900e5

    .line 604
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;->contactSelectionCheckbox:Landroid/widget/CheckBox;

    const/4 p1, 0x0

    .line 605
    iput-object p1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;->currentFilter:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 610
    invoke-virtual {p0}, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;->getLayoutPosition()I

    move-result v0

    .line 611
    iget-object v1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;->this$1:Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;

    invoke-static {v1}, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;->access$300(Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 612
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lio/olvid/messenger/App;->openMyId(Landroid/content/Context;)V

    return-void

    .line 615
    :cond_0
    iget-object v1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;->this$1:Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;

    invoke-static {v1}, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;->access$300(Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 618
    :cond_1
    iget-object v1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;->this$1:Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;

    iget-object v1, v1, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;->this$0:Lio/olvid/messenger/fragments/FilteredContactListFragment;

    invoke-static {v1}, Lio/olvid/messenger/fragments/FilteredContactListFragment;->access$200(Lio/olvid/messenger/fragments/FilteredContactListFragment;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 619
    iget-object p1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;->this$1:Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;

    iget-object p1, p1, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;->this$0:Lio/olvid/messenger/fragments/FilteredContactListFragment;

    iget-object p1, p1, Lio/olvid/messenger/fragments/FilteredContactListFragment;->filteredContactListViewModel:Lio/olvid/messenger/viewModels/FilteredContactListViewModel;

    iget-object v1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;->this$1:Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;

    invoke-static {v1}, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;->access$100(Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/messenger/viewModels/FilteredContactListViewModel$SelectableContact;

    iget-object v0, v0, Lio/olvid/messenger/viewModels/FilteredContactListViewModel$SelectableContact;->contact:Lio/olvid/messenger/databases/entity/Contact;

    invoke-virtual {p1, v0}, Lio/olvid/messenger/viewModels/FilteredContactListViewModel;->selectContact(Lio/olvid/messenger/databases/entity/Contact;)V

    goto :goto_0

    .line 621
    :cond_2
    iget-object v1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;->this$1:Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;

    iget-object v1, v1, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;->this$0:Lio/olvid/messenger/fragments/FilteredContactListFragment;

    invoke-static {v1}, Lio/olvid/messenger/fragments/FilteredContactListFragment;->access$400(Lio/olvid/messenger/fragments/FilteredContactListFragment;)Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListOnClickDelegate;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 622
    iget-object v1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;->this$1:Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;

    iget-object v1, v1, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;->this$0:Lio/olvid/messenger/fragments/FilteredContactListFragment;

    invoke-static {v1}, Lio/olvid/messenger/fragments/FilteredContactListFragment;->access$400(Lio/olvid/messenger/fragments/FilteredContactListFragment;)Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListOnClickDelegate;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;->this$1:Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;

    invoke-static {v2}, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;->access$100(Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/messenger/viewModels/FilteredContactListViewModel$SelectableContact;

    iget-object v0, v0, Lio/olvid/messenger/viewModels/FilteredContactListViewModel$SelectableContact;->contact:Lio/olvid/messenger/databases/entity/Contact;

    invoke-interface {v1, p1, v0}, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListOnClickDelegate;->contactClicked(Landroid/view/View;Lio/olvid/messenger/databases/entity/Contact;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 629
    iget-object v0, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;->this$1:Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;

    iget-object v0, v0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;->this$0:Lio/olvid/messenger/fragments/FilteredContactListFragment;

    invoke-static {v0}, Lio/olvid/messenger/fragments/FilteredContactListFragment;->access$200(Lio/olvid/messenger/fragments/FilteredContactListFragment;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 632
    :cond_0
    invoke-virtual {p0}, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;->getLayoutPosition()I

    move-result v0

    .line 633
    iget-object v2, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;->this$1:Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;

    invoke-static {v2}, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;->access$300(Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    return v1

    .line 636
    :cond_1
    iget-object v2, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;->this$1:Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;

    invoke-static {v2}, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;->access$300(Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 639
    :cond_2
    iget-object v2, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;->this$1:Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;

    iget-object v2, v2, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;->this$0:Lio/olvid/messenger/fragments/FilteredContactListFragment;

    invoke-static {v2}, Lio/olvid/messenger/fragments/FilteredContactListFragment;->access$400(Lio/olvid/messenger/fragments/FilteredContactListFragment;)Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListOnClickDelegate;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 640
    iget-object v1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;->this$1:Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;

    iget-object v1, v1, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;->this$0:Lio/olvid/messenger/fragments/FilteredContactListFragment;

    invoke-static {v1}, Lio/olvid/messenger/fragments/FilteredContactListFragment;->access$400(Lio/olvid/messenger/fragments/FilteredContactListFragment;)Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListOnClickDelegate;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;->this$1:Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;

    invoke-static {v2}, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;->access$100(Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/messenger/viewModels/FilteredContactListViewModel$SelectableContact;

    iget-object v0, v0, Lio/olvid/messenger/viewModels/FilteredContactListViewModel$SelectableContact;->contact:Lio/olvid/messenger/databases/entity/Contact;

    invoke-interface {v1, p1, v0}, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListOnClickDelegate;->contactLongClicked(Landroid/view/View;Lio/olvid/messenger/databases/entity/Contact;)V

    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method
