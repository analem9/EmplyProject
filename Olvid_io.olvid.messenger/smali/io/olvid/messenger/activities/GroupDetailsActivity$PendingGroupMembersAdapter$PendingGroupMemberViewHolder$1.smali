.class Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter$PendingGroupMemberViewHolder$1;
.super Ljava/lang/Object;
.source "GroupDetailsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter$PendingGroupMemberViewHolder;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter$PendingGroupMemberViewHolder;

.field final synthetic val$pendingGroupMemberAndContact:Lio/olvid/messenger/databases/dao/PendingGroupMemberDao$PendingGroupMemberAndContact;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter$PendingGroupMemberViewHolder;Lio/olvid/messenger/databases/dao/PendingGroupMemberDao$PendingGroupMemberAndContact;)V
    .locals 0

    .line 1048
    iput-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter$PendingGroupMemberViewHolder$1;->this$2:Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter$PendingGroupMemberViewHolder;

    iput-object p2, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter$PendingGroupMemberViewHolder$1;->val$pendingGroupMemberAndContact:Lio/olvid/messenger/databases/dao/PendingGroupMemberDao$PendingGroupMemberAndContact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1052
    :try_start_0
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object p1

    iget-object p2, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter$PendingGroupMemberViewHolder$1;->val$pendingGroupMemberAndContact:Lio/olvid/messenger/databases/dao/PendingGroupMemberDao$PendingGroupMemberAndContact;

    iget-object p2, p2, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao$PendingGroupMemberAndContact;->pendingGroupMember:Lio/olvid/messenger/databases/entity/PendingGroupMember;

    iget-object p2, p2, Lio/olvid/messenger/databases/entity/PendingGroupMember;->bytesOwnedIdentity:[B

    iget-object v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter$PendingGroupMemberViewHolder$1;->val$pendingGroupMemberAndContact:Lio/olvid/messenger/databases/dao/PendingGroupMemberDao$PendingGroupMemberAndContact;

    iget-object v0, v0, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao$PendingGroupMemberAndContact;->pendingGroupMember:Lio/olvid/messenger/databases/entity/PendingGroupMember;

    iget-object v0, v0, Lio/olvid/messenger/databases/entity/PendingGroupMember;->bytesGroupOwnerAndUid:[B

    iget-object v1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter$PendingGroupMemberViewHolder$1;->val$pendingGroupMemberAndContact:Lio/olvid/messenger/databases/dao/PendingGroupMemberDao$PendingGroupMemberAndContact;

    iget-object v1, v1, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao$PendingGroupMemberAndContact;->pendingGroupMember:Lio/olvid/messenger/databases/entity/PendingGroupMember;

    iget-object v1, v1, Lio/olvid/messenger/databases/entity/PendingGroupMember;->bytesIdentity:[B

    invoke-virtual {p1, p2, v0, v1}, Lio/olvid/engine/engine/Engine;->reinvitePendingToGroup([B[B[B)V

    const p1, 0x7f100200

    const/4 p2, 0x0

    .line 1053
    invoke-static {p1, p2}, Lio/olvid/messenger/App;->toast(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1055
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
