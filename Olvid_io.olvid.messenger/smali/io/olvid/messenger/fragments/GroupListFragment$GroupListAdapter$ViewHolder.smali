.class public Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "GroupListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field final groupMembers:Landroid/widget/TextView;

.field final groupName:Landroid/widget/TextView;

.field final groupSectionHeader:Landroid/widget/TextView;

.field final initialView:Lio/olvid/messenger/customClasses/InitialView;

.field final newPublishedDetailsGroup:Landroid/view/View;

.field final newUnseedPublishedDetailsDot:Landroid/view/View;

.field final synthetic this$1:Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter;


# direct methods
.method constructor <init>(Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter;Landroid/view/View;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter$ViewHolder;->this$1:Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter;

    .line 292
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 293
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09017b

    .line 294
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter$ViewHolder;->groupSectionHeader:Landroid/widget/TextView;

    const p1, 0x7f090179

    .line 295
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter$ViewHolder;->groupName:Landroid/widget/TextView;

    const p1, 0x7f090174

    .line 296
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter$ViewHolder;->groupMembers:Landroid/widget/TextView;

    const p1, 0x7f09019a

    .line 297
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/customClasses/InitialView;

    iput-object p1, p0, Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter$ViewHolder;->initialView:Lio/olvid/messenger/customClasses/InitialView;

    const p1, 0x7f0901ff

    .line 298
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter$ViewHolder;->newPublishedDetailsGroup:Landroid/view/View;

    const p1, 0x7f090201

    .line 299
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter$ViewHolder;->newUnseedPublishedDetailsDot:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 303
    invoke-virtual {p0}, Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter$ViewHolder;->getLayoutPosition()I

    move-result v0

    .line 304
    iget-object v1, p0, Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter$ViewHolder;->this$1:Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter;

    invoke-static {v1}, Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter;->access$200(Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter$ViewHolder;->this$1:Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter;

    invoke-static {v1}, Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter;->access$200(Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 305
    iget-object p1, p0, Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter$ViewHolder;->this$1:Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter;

    iget-object p1, p1, Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter;->this$0:Lio/olvid/messenger/fragments/GroupListFragment;

    iget-object v1, p0, Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter$ViewHolder;->this$1:Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter;

    invoke-static {v1}, Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter;->access$200(Lio/olvid/messenger/fragments/GroupListFragment$GroupListAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/messenger/databases/dao/GroupDao$GroupAndContactDisplayNames;

    invoke-static {p1, v0}, Lio/olvid/messenger/fragments/GroupListFragment;->access$300(Lio/olvid/messenger/fragments/GroupListFragment;Lio/olvid/messenger/databases/dao/GroupDao$GroupAndContactDisplayNames;)V

    :cond_0
    return-void
.end method
