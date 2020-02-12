.class Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment$2$1;
.super Ljava/lang/Object;
.source "GroupMemberAdditionDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment$2;

.field final synthetic val$bytesNewMemberIdentities:[[B


# direct methods
.method constructor <init>(Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment$2;[[B)V
    .locals 0

    .line 119
    iput-object p1, p0, Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment$2$1;->this$1:Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment$2;

    iput-object p2, p0, Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment$2$1;->val$bytesNewMemberIdentities:[[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 123
    :try_start_0
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object p1

    iget-object p2, p0, Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment$2$1;->this$1:Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment$2;

    iget-object p2, p2, Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment$2;->this$0:Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment;

    invoke-static {p2}, Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment;->access$100(Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment;)[B

    move-result-object p2

    iget-object v0, p0, Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment$2$1;->this$1:Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment$2;

    iget-object v0, v0, Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment$2;->this$0:Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment;

    invoke-static {v0}, Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment;->access$200(Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment;)[B

    move-result-object v0

    iget-object v1, p0, Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment$2$1;->val$bytesNewMemberIdentities:[[B

    invoke-virtual {p1, p2, v0, v1}, Lio/olvid/engine/engine/Engine;->inviteContactsToGroup([B[B[[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 125
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
