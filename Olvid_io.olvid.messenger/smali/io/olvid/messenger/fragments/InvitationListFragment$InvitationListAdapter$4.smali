.class Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$4;
.super Ljava/lang/Object;
.source "InvitationListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;->lambda$onBindViewHolder$0(Ljava/lang/String;Lio/olvid/engine/engine/types/ObvDialog;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;

.field final synthetic val$dialog:Lio/olvid/engine/engine/types/ObvDialog;

.field final synthetic val$groupOwnerDisplayName:Ljava/lang/String;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;Lio/olvid/engine/engine/types/ObvDialog;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 627
    iput-object p1, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$4;->this$1:Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;

    iput-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$4;->val$dialog:Lio/olvid/engine/engine/types/ObvDialog;

    iput-object p3, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$4;->val$groupOwnerDisplayName:Ljava/lang/String;

    iput-object p4, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$4;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 631
    :try_start_0
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object p1

    iget-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$4;->val$dialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {p2}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object p2

    invoke-virtual {p2}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getBytesMediatorOrGroupOwnerIdentity()[B

    move-result-object p2

    iget-object v0, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$4;->val$groupOwnerDisplayName:Ljava/lang/String;

    iget-object v1, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$4;->val$dialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {v1}, Lio/olvid/engine/engine/types/ObvDialog;->getBytesOwnedIdentity()[B

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lio/olvid/engine/engine/Engine;->startTrustEstablishmentProtocol([BLjava/lang/String;[B)V

    .line 632
    iget-object p1, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$4;->val$v:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x3

    invoke-static {p1, p2}, Lio/olvid/messenger/App;->showMainActivityTab(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 634
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
