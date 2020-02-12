.class Lio/olvid/messenger/activities/GroupCreationActivity$GroupNameFragment$1;
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

    .line 427
    iput-object p1, p0, Lio/olvid/messenger/activities/GroupCreationActivity$GroupNameFragment$1;->this$0:Lio/olvid/messenger/activities/GroupCreationActivity$GroupNameFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 437
    iget-object v0, p0, Lio/olvid/messenger/activities/GroupCreationActivity$GroupNameFragment$1;->this$0:Lio/olvid/messenger/activities/GroupCreationActivity$GroupNameFragment;

    invoke-virtual {v0}, Lio/olvid/messenger/activities/GroupCreationActivity$GroupNameFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lio/olvid/messenger/activities/GroupCreationActivity;

    if-eqz v0, :cond_0

    .line 439
    invoke-static {v0}, Lio/olvid/messenger/activities/GroupCreationActivity;->access$100(Lio/olvid/messenger/activities/GroupCreationActivity;)Lio/olvid/messenger/viewModels/GroupCreationViewModel;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/olvid/messenger/viewModels/GroupCreationViewModel;->setGroupName(Ljava/lang/String;)V

    .line 441
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_1

    .line 442
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupCreationActivity$GroupNameFragment$1;->this$0:Lio/olvid/messenger/activities/GroupCreationActivity$GroupNameFragment;

    const v0, 0x7f100147

    invoke-virtual {p1, v0}, Lio/olvid/messenger/activities/GroupCreationActivity$GroupNameFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 443
    iget-object v0, p0, Lio/olvid/messenger/activities/GroupCreationActivity$GroupNameFragment$1;->this$0:Lio/olvid/messenger/activities/GroupCreationActivity$GroupNameFragment;

    iget-object v0, v0, Lio/olvid/messenger/activities/GroupCreationActivity$GroupNameFragment;->groupNameInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 445
    :cond_1
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupCreationActivity$GroupNameFragment$1;->this$0:Lio/olvid/messenger/activities/GroupCreationActivity$GroupNameFragment;

    iget-object p1, p1, Lio/olvid/messenger/activities/GroupCreationActivity$GroupNameFragment;->groupNameInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :goto_0
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
