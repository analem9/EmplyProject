.class Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment$4$1;
.super Ljava/lang/Object;
.source "IdentityCreationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment$4;

.field final synthetic val$activity:Lio/olvid/messenger/activities/IdentityCreationActivity;

.field final synthetic val$apiKeyInput:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment$4;Lio/olvid/messenger/activities/IdentityCreationActivity;Landroid/widget/EditText;)V
    .locals 0

    .line 374
    iput-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment$4$1;->this$1:Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment$4;

    iput-object p2, p0, Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment$4$1;->val$activity:Lio/olvid/messenger/activities/IdentityCreationActivity;

    iput-object p3, p0, Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment$4$1;->val$apiKeyInput:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 377
    iget-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment$4$1;->val$activity:Lio/olvid/messenger/activities/IdentityCreationActivity;

    invoke-static {p1}, Lio/olvid/messenger/activities/IdentityCreationActivity;->access$000(Lio/olvid/messenger/activities/IdentityCreationActivity;)Lio/olvid/messenger/viewModels/IdentityCreationViewModel;

    move-result-object p1

    iget-object p2, p0, Lio/olvid/messenger/activities/IdentityCreationActivity$ServerAndApiKeyFragment$4$1;->val$apiKeyInput:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->setApiKey(Ljava/lang/String;)V

    return-void
.end method
