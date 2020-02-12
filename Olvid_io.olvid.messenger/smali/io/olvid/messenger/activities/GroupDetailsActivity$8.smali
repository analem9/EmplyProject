.class Lio/olvid/messenger/activities/GroupDetailsActivity$8;
.super Ljava/lang/Object;
.source "GroupDetailsActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/GroupDetailsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/activities/GroupDetailsActivity;

.field final synthetic val$groupNameEditText:Lcom/google/android/material/textfield/TextInputEditText;

.field final synthetic val$groupNameLayout:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/GroupDetailsActivity;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 0

    .line 660
    iput-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$8;->this$0:Lio/olvid/messenger/activities/GroupDetailsActivity;

    iput-object p2, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$8;->val$groupNameEditText:Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p3, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$8;->val$groupNameLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 670
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$8;->val$groupNameEditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$8;->val$groupNameEditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 674
    :cond_0
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$8;->val$groupNameLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 671
    :cond_1
    :goto_0
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$8;->this$0:Lio/olvid/messenger/activities/GroupDetailsActivity;

    const v0, 0x7f100148

    invoke-virtual {p1, v0}, Lio/olvid/messenger/activities/GroupDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 672
    iget-object v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$8;->val$groupNameLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :goto_1
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
