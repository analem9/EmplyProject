.class Lio/olvid/messenger/activities/MyIdActivity$2;
.super Ljava/lang/Object;
.source "MyIdActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$companyEditText:Lcom/google/android/material/textfield/TextInputEditText;

.field final synthetic val$firstNameEditText:Lcom/google/android/material/textfield/TextInputEditText;

.field final synthetic val$lastNameEditText:Lcom/google/android/material/textfield/TextInputEditText;

.field final synthetic val$positionEditText:Lcom/google/android/material/textfield/TextInputEditText;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/MyIdActivity;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lio/olvid/messenger/activities/MyIdActivity$2;->this$0:Lio/olvid/messenger/activities/MyIdActivity;

    iput-object p2, p0, Lio/olvid/messenger/activities/MyIdActivity$2;->val$firstNameEditText:Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p3, p0, Lio/olvid/messenger/activities/MyIdActivity$2;->val$lastNameEditText:Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p4, p0, Lio/olvid/messenger/activities/MyIdActivity$2;->val$companyEditText:Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p5, p0, Lio/olvid/messenger/activities/MyIdActivity$2;->val$positionEditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 168
    new-instance p1, Lio/olvid/engine/engine/types/JsonIdentityDetails;

    invoke-direct {p1}, Lio/olvid/engine/engine/types/JsonIdentityDetails;-><init>()V

    .line 169
    iget-object p2, p0, Lio/olvid/messenger/activities/MyIdActivity$2;->val$firstNameEditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->setFirstName(Ljava/lang/String;)V

    .line 170
    iget-object p2, p0, Lio/olvid/messenger/activities/MyIdActivity$2;->val$lastNameEditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->setLastName(Ljava/lang/String;)V

    .line 171
    iget-object p2, p0, Lio/olvid/messenger/activities/MyIdActivity$2;->val$companyEditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->setCompany(Ljava/lang/String;)V

    .line 172
    iget-object p2, p0, Lio/olvid/messenger/activities/MyIdActivity$2;->val$positionEditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->setPosition(Ljava/lang/String;)V

    .line 173
    iget-object p2, p0, Lio/olvid/messenger/activities/MyIdActivity$2;->this$0:Lio/olvid/messenger/activities/MyIdActivity;

    invoke-static {p2}, Lio/olvid/messenger/activities/MyIdActivity;->access$000(Lio/olvid/messenger/activities/MyIdActivity;)Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;

    move-result-object p2

    invoke-virtual {p2}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->getIdentityDetails()Lio/olvid/engine/engine/types/JsonIdentityDetails;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 175
    :try_start_0
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object p2

    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getCurrentIdentity()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/messenger/databases/entity/OwnedIdentity;

    iget-object v0, v0, Lio/olvid/messenger/databases/entity/OwnedIdentity;->bytesOwnedIdentity:[B

    invoke-virtual {p2, v0, p1}, Lio/olvid/engine/engine/Engine;->updateLatestIdentityDetails([BLio/olvid/engine/engine/types/JsonIdentityDetails;)V

    .line 176
    iget-object p1, p0, Lio/olvid/messenger/activities/MyIdActivity$2;->this$0:Lio/olvid/messenger/activities/MyIdActivity;

    invoke-static {p1}, Lio/olvid/messenger/activities/MyIdActivity;->access$100(Lio/olvid/messenger/activities/MyIdActivity;)Lio/olvid/messenger/activities/MyIdActivity$IdentityObserver;

    move-result-object p1

    invoke-virtual {p1}, Lio/olvid/messenger/activities/MyIdActivity$IdentityObserver;->reload()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const p1, 0x7f1001f5

    const/4 p2, 0x0

    .line 178
    invoke-static {p1, p2}, Lio/olvid/messenger/App;->toast(II)V

    :cond_0
    :goto_0
    return-void
.end method
