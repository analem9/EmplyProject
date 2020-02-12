.class Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment$2;
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

    .line 473
    iput-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment$2;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .line 485
    iget-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment$2;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;

    iget-object p1, p1, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;->firstNameEditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment$2;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;

    iget-object p1, p1, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;->firstNameEditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 486
    :goto_0
    iget-object v1, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment$2;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;

    iget-object v1, v1, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;->lastNameEditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment$2;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;

    iget-object v0, v0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;->lastNameEditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 487
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    if-nez v1, :cond_2

    .line 488
    iget-object v1, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment$2;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;

    const v2, 0x7f100146

    invoke-virtual {v1, v2}, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 489
    iget-object v2, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment$2;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;

    iget-object v2, v2, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;->firstNameLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v3, " "

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 490
    iget-object v2, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment$2;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;

    iget-object v2, v2, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;->lastNameLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v2, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 492
    :cond_2
    iget-object v1, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment$2;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;

    iget-object v1, v1, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;->firstNameLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 493
    iget-object v1, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment$2;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;

    iget-object v1, v1, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;->lastNameLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 495
    :goto_2
    iget-object v1, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment$2;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;

    invoke-virtual {v1}, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;

    if-eqz v1, :cond_3

    .line 497
    invoke-static {v1}, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->access$000(Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;)Lio/olvid/messenger/viewModels/IdentityCreationViewModel;

    move-result-object v2

    invoke-virtual {v2, p1}, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->setFirstName(Ljava/lang/String;)V

    .line 498
    invoke-static {v1}, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->access$000(Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;)Lio/olvid/messenger/viewModels/IdentityCreationViewModel;

    move-result-object p1

    invoke-virtual {p1, v0}, Lio/olvid/messenger/viewModels/IdentityCreationViewModel;->setLastName(Ljava/lang/String;)V

    :cond_3
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
