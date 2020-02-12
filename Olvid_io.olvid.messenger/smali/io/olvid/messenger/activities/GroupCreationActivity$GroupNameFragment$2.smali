.class Lio/olvid/messenger/activities/GroupCreationActivity$GroupNameFragment$2;
.super Ljava/lang/Object;
.source "GroupCreationActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/GroupCreationActivity$GroupNameFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/activities/GroupCreationActivity$GroupNameFragment;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/GroupCreationActivity$GroupNameFragment;)V
    .locals 0

    .line 449
    iput-object p1, p0, Lio/olvid/messenger/activities/GroupCreationActivity$GroupNameFragment$2;->this$0:Lio/olvid/messenger/activities/GroupCreationActivity$GroupNameFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 459
    iget-object v0, p0, Lio/olvid/messenger/activities/GroupCreationActivity$GroupNameFragment$2;->this$0:Lio/olvid/messenger/activities/GroupCreationActivity$GroupNameFragment;

    invoke-virtual {v0}, Lio/olvid/messenger/activities/GroupCreationActivity$GroupNameFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lio/olvid/messenger/activities/GroupCreationActivity;

    if-eqz v0, :cond_0

    .line 461
    invoke-static {v0}, Lio/olvid/messenger/activities/GroupCreationActivity;->access$100(Lio/olvid/messenger/activities/GroupCreationActivity;)Lio/olvid/messenger/viewModels/GroupCreationViewModel;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/olvid/messenger/viewModels/GroupCreationViewModel;->setGroupDescription(Ljava/lang/String;)V

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
