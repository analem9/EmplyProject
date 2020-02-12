.class Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder$1;
.super Ljava/lang/Object;
.source "InvitationListFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

    .line 792
    iput-object p1, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder$1;->this$2:Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;

    iput-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder$1;->val$this$1:Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    if-eqz p3, :cond_0

    .line 794
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p3, 0x42

    if-eq p1, p3, :cond_1

    :cond_0
    const/4 p1, 0x6

    if-ne p2, p1, :cond_3

    .line 795
    :cond_1
    iget-object p1, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder$1;->this$2:Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;

    iget-object p1, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->validateSasButton:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 796
    iget-object p1, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder$1;->this$2:Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;

    iget-object p1, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->validateSasButton:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->performClick()Z

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method
