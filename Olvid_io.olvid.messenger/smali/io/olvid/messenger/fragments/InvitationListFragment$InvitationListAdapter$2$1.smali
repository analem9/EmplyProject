.class Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$2$1;
.super Ljava/lang/Object;
.source "InvitationListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$2;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$2;Landroid/view/View;)V
    .locals 0

    .line 501
    iput-object p1, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$2$1;->this$2:Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$2;

    iput-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$2$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 505
    :try_start_0
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object p1

    iget-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$2$1;->this$2:Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$2;

    iget-object p2, p2, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$2;->val$dialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {p2}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object p2

    invoke-virtual {p2}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getBytesContactIdentity()[B

    move-result-object p2

    iget-object v0, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$2$1;->this$2:Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$2;

    iget-object v0, v0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$2;->val$identityDetails:Lio/olvid/engine/engine/types/JsonIdentityDetails;

    const-string v1, "%f %l (%p @ %c)"

    invoke-virtual {v0, v1}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getFullDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$2$1;->this$2:Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$2;

    iget-object v1, v1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$2;->val$dialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {v1}, Lio/olvid/engine/engine/types/ObvDialog;->getBytesOwnedIdentity()[B

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lio/olvid/engine/engine/Engine;->startTrustEstablishmentProtocol([BLjava/lang/String;[B)V

    const/16 p1, 0xa

    .line 506
    invoke-static {p1}, Lio/olvid/messenger/AnonymousUsageService;->log(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 508
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 510
    :goto_0
    iget-object p1, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$2$1;->val$v:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x3

    invoke-static {p1, p2}, Lio/olvid/messenger/App;->showMainActivityTab(Landroid/content/Context;I)V

    return-void
.end method
