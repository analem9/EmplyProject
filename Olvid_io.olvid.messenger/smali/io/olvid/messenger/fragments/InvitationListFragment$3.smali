.class Lio/olvid/messenger/fragments/InvitationListFragment$3;
.super Ljava/lang/Object;
.source "InvitationListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/fragments/InvitationListFragment;->invitationClicked(ILio/olvid/messenger/databases/entity/Invitation;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/fragments/InvitationListFragment;

.field final synthetic val$invitation:Lio/olvid/messenger/databases/entity/Invitation;


# direct methods
.method constructor <init>(Lio/olvid/messenger/fragments/InvitationListFragment;Lio/olvid/messenger/databases/entity/Invitation;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lio/olvid/messenger/fragments/InvitationListFragment$3;->this$0:Lio/olvid/messenger/fragments/InvitationListFragment;

    iput-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$3;->val$invitation:Lio/olvid/messenger/databases/entity/Invitation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 280
    :try_start_0
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object p1

    iget-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$3;->val$invitation:Lio/olvid/messenger/databases/entity/Invitation;

    iget-object p2, p2, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {p1, p2}, Lio/olvid/engine/engine/Engine;->abortProtocol(Lio/olvid/engine/engine/types/ObvDialog;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 282
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
