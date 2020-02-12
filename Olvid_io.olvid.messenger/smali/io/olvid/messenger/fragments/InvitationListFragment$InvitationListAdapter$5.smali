.class Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$5;
.super Ljava/lang/Object;
.source "InvitationListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;->onBindViewHolder(Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;

.field final synthetic val$bytesGroupUid:[B

.field final synthetic val$dialog:Lio/olvid/engine/engine/types/ObvDialog;


# direct methods
.method constructor <init>(Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;Lio/olvid/engine/engine/types/ObvDialog;[B)V
    .locals 0

    .line 658
    iput-object p1, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$5;->this$1:Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;

    iput-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$5;->val$dialog:Lio/olvid/engine/engine/types/ObvDialog;

    iput-object p3, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$5;->val$bytesGroupUid:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 661
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$5;->val$dialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {v0}, Lio/olvid/engine/engine/types/ObvDialog;->getBytesOwnedIdentity()[B

    move-result-object v0

    iget-object v1, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$5;->val$bytesGroupUid:[B

    invoke-static {p1, v0, v1}, Lio/olvid/messenger/App;->openGroupDiscussionActivity(Landroid/content/Context;[B[B)V

    return-void
.end method
