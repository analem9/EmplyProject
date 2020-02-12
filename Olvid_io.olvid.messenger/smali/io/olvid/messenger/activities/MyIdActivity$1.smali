.class Lio/olvid/messenger/activities/MyIdActivity$1;
.super Ljava/lang/Object;
.source "MyIdActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/MyIdActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/activities/MyIdActivity;

.field final synthetic val$firstNameEditText:Lcom/google/android/material/textfield/TextInputEditText;

.field final synthetic val$firstNameLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field final synthetic val$lastNameEditText:Lcom/google/android/material/textfield/TextInputEditText;

.field final synthetic val$lastNameLayout:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/MyIdActivity;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lio/olvid/messenger/activities/MyIdActivity$1;->this$0:Lio/olvid/messenger/activities/MyIdActivity;

    iput-object p2, p0, Lio/olvid/messenger/activities/MyIdActivity$1;->val$firstNameEditText:Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p3, p0, Lio/olvid/messenger/activities/MyIdActivity$1;->val$lastNameEditText:Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p4, p0, Lio/olvid/messenger/activities/MyIdActivity$1;->val$firstNameLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p5, p0, Lio/olvid/messenger/activities/MyIdActivity$1;->val$lastNameLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 149
    iget-object p1, p0, Lio/olvid/messenger/activities/MyIdActivity$1;->val$firstNameEditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lio/olvid/messenger/activities/MyIdActivity$1;->val$firstNameEditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    :goto_0
    iget-object v1, p0, Lio/olvid/messenger/activities/MyIdActivity$1;->val$lastNameEditText:Lcom/google/android/material/textfield/TextInputEditText;

    .line 150
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lio/olvid/messenger/activities/MyIdActivity$1;->val$lastNameEditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_1
    add-int/2addr p1, v0

    if-nez p1, :cond_2

    .line 151
    iget-object p1, p0, Lio/olvid/messenger/activities/MyIdActivity$1;->this$0:Lio/olvid/messenger/activities/MyIdActivity;

    const v0, 0x7f100146

    invoke-virtual {p1, v0}, Lio/olvid/messenger/activities/MyIdActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 152
    iget-object v0, p0, Lio/olvid/messenger/activities/MyIdActivity$1;->val$firstNameLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lio/olvid/messenger/activities/MyIdActivity$1;->val$lastNameLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 155
    :cond_2
    iget-object p1, p0, Lio/olvid/messenger/activities/MyIdActivity$1;->val$firstNameLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 156
    iget-object p1, p0, Lio/olvid/messenger/activities/MyIdActivity$1;->val$lastNameLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :goto_2
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
