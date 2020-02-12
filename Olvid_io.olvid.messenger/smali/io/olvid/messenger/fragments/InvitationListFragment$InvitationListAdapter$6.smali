.class Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$6;
.super Landroidx/recyclerview/widget/DiffUtil$Callback;
.source "InvitationListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;->onChanged(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field newList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Invitation;",
            ">;"
        }
    .end annotation
.end field

.field oldList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Invitation;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;

.field final synthetic val$invitations:Ljava/util/List;


# direct methods
.method constructor <init>(Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;Ljava/util/List;)V
    .locals 0

    .line 687
    iput-object p1, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$6;->this$1:Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;

    iput-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$6;->val$invitations:Ljava/util/List;

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;-><init>()V

    .line 688
    iget-object p1, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$6;->this$1:Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;

    invoke-static {p1}, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;->access$100(Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$6;->oldList:Ljava/util/List;

    .line 689
    iget-object p1, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$6;->val$invitations:Ljava/util/List;

    iput-object p1, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$6;->newList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 3

    .line 708
    iget-object v0, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$6;->oldList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/databases/entity/Invitation;

    iget-object p1, p1, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    .line 709
    invoke-virtual {p1}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Lio/olvid/engine/engine/types/ObvDialog;->getUuid()Ljava/util/UUID;

    move-result-object v0

    iget-object v2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$6;->this$1:Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;

    iget-object v2, v2, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;->this$0:Lio/olvid/messenger/fragments/InvitationListFragment;

    invoke-static {v2}, Lio/olvid/messenger/fragments/InvitationListFragment;->access$300(Lio/olvid/messenger/fragments/InvitationListFragment;)Lio/olvid/messenger/viewModels/InvitationListViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lio/olvid/messenger/viewModels/InvitationListViewModel;->getLastSasDialogUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 712
    :cond_0
    invoke-virtual {p1}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object p1

    invoke-virtual {p1}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getId()I

    move-result p1

    iget-object v0, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$6;->newList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/olvid/messenger/databases/entity/Invitation;

    iget-object p2, p2, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {p2}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object p2

    invoke-virtual {p2}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getId()I

    move-result p2

    if-ne p1, p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public areItemsTheSame(II)Z
    .locals 1

    .line 703
    iget-object v0, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$6;->oldList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/databases/entity/Invitation;

    iget-object p1, p1, Lio/olvid/messenger/databases/entity/Invitation;->dialogUuid:Ljava/util/UUID;

    iget-object v0, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$6;->newList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/olvid/messenger/databases/entity/Invitation;

    iget-object p2, p2, Lio/olvid/messenger/databases/entity/Invitation;->dialogUuid:Ljava/util/UUID;

    invoke-virtual {p1, p2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getNewListSize()I
    .locals 1

    .line 698
    iget-object v0, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$6;->newList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOldListSize()I
    .locals 1

    .line 693
    iget-object v0, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$6;->oldList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
