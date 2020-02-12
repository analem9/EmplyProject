.class Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder$4$1;
.super Ljava/lang/Object;
.source "InvitationListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder$4;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder$4;Landroid/view/View;)V
    .locals 0

    .line 862
    iput-object p1, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder$4$1;->this$3:Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder$4;

    iput-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder$4$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 865
    iget-object v0, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder$4$1;->val$v:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
