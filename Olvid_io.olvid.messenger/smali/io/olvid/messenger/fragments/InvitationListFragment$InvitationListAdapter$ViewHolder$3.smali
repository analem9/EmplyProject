.class Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder$3;
.super Ljava/lang/Object;
.source "InvitationListFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;-><init>(Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;

.field final synthetic val$this$1:Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;


# direct methods
.method constructor <init>(Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;)V
    .locals 0

    .line 825
    iput-object p1, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder$3;->this$2:Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;

    iput-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder$3;->val$this$1:Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-nez p2, :cond_0

    .line 830
    iget-object p1, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder$3;->this$2:Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;

    iget-object p1, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->this$1:Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;

    iget-object p1, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;->this$0:Lio/olvid/messenger/fragments/InvitationListFragment;

    invoke-virtual {p1}, Lio/olvid/messenger/fragments/InvitationListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lio/olvid/messenger/activities/MainActivity;

    if-eqz p1, :cond_0

    .line 831
    iget-object p1, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder$3;->this$2:Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;

    iget-object p1, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->this$1:Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;

    iget-object p1, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;->this$0:Lio/olvid/messenger/fragments/InvitationListFragment;

    invoke-virtual {p1}, Lio/olvid/messenger/fragments/InvitationListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/activities/MainActivity;

    const/4 p2, 0x0

    .line 832
    invoke-virtual {p1, p2}, Lio/olvid/messenger/activities/MainActivity;->setForceFabHidden(Z)V

    :cond_0
    return-void
.end method
