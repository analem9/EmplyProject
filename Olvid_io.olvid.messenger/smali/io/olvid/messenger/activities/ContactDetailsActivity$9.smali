.class Lio/olvid/messenger/activities/ContactDetailsActivity$9;
.super Ljava/lang/Object;
.source "ContactDetailsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/ContactDetailsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/activities/ContactDetailsActivity;

.field final synthetic val$contact:Lio/olvid/messenger/databases/entity/Contact;

.field final synthetic val$editNameTextView:Lcom/google/android/material/textfield/TextInputEditText;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/ContactDetailsActivity;Lcom/google/android/material/textfield/TextInputEditText;Lio/olvid/messenger/databases/entity/Contact;)V
    .locals 0

    .line 732
    iput-object p1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$9;->this$0:Lio/olvid/messenger/activities/ContactDetailsActivity;

    iput-object p2, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$9;->val$editNameTextView:Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p3, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$9;->val$contact:Lio/olvid/messenger/databases/entity/Contact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 735
    iget-object p1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$9;->val$editNameTextView:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    const-string p2, ""

    if-nez p1, :cond_0

    move-object p1, p2

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$9;->val$editNameTextView:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 736
    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$9;->val$contact:Lio/olvid/messenger/databases/entity/Contact;

    iget-object p2, p2, Lio/olvid/messenger/databases/entity/Contact;->displayName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    .line 739
    :cond_1
    new-instance p2, Lio/olvid/messenger/databases/tasks/UpdateContactCustomDisplayNameTask;

    iget-object v0, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$9;->val$contact:Lio/olvid/messenger/databases/entity/Contact;

    iget-object v0, v0, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    iget-object v1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$9;->val$contact:Lio/olvid/messenger/databases/entity/Contact;

    iget-object v1, v1, Lio/olvid/messenger/databases/entity/Contact;->bytesOwnedIdentity:[B

    invoke-direct {p2, v0, v1, p1}, Lio/olvid/messenger/databases/tasks/UpdateContactCustomDisplayNameTask;-><init>([B[BLjava/lang/String;)V

    invoke-static {p2}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 737
    :cond_2
    :goto_1
    new-instance p1, Lio/olvid/messenger/databases/tasks/UpdateContactCustomDisplayNameTask;

    iget-object p2, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$9;->val$contact:Lio/olvid/messenger/databases/entity/Contact;

    iget-object p2, p2, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    iget-object v0, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$9;->val$contact:Lio/olvid/messenger/databases/entity/Contact;

    iget-object v0, v0, Lio/olvid/messenger/databases/entity/Contact;->bytesOwnedIdentity:[B

    const/4 v1, 0x0

    invoke-direct {p1, p2, v0, v1}, Lio/olvid/messenger/databases/tasks/UpdateContactCustomDisplayNameTask;-><init>([B[BLjava/lang/String;)V

    invoke-static {p1}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    :goto_2
    return-void
.end method
