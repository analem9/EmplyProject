.class Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment$3;
.super Ljava/lang/Object;
.source "IdentityCreationActivityNoAPI.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;)V
    .locals 0

    .line 505
    iput-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment$3;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 516
    iget-object v0, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment$3;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;

    invoke-virtual {v0}, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;

    if-eqz v0, :cond_0

    .line 518
    invoke-static {v0}, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->access$000(Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;)Lio/olvid/messenger/viewModels/IdentityCreationViewModel;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->setCompany(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
