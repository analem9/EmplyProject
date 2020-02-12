.class Lio/olvid/messenger/activities/ContactDetailsActivity$10$1;
.super Ljava/lang/Object;
.source "ContactDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/ContactDetailsActivity$10;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/olvid/messenger/activities/ContactDetailsActivity$10;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/ContactDetailsActivity$10;)V
    .locals 0

    .line 751
    iput-object p1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$10$1;->this$1:Lio/olvid/messenger/activities/ContactDetailsActivity$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 754
    iget-object p1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$10$1;->this$1:Lio/olvid/messenger/activities/ContactDetailsActivity$10;

    iget-object p1, p1, Lio/olvid/messenger/activities/ContactDetailsActivity$10;->val$editNameTextView:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v0, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$10$1;->this$1:Lio/olvid/messenger/activities/ContactDetailsActivity$10;

    iget-object v0, v0, Lio/olvid/messenger/activities/ContactDetailsActivity$10;->val$contact:Lio/olvid/messenger/databases/entity/Contact;

    iget-object v0, v0, Lio/olvid/messenger/databases/entity/Contact;->displayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 755
    iget-object p1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$10$1;->this$1:Lio/olvid/messenger/activities/ContactDetailsActivity$10;

    iget-object p1, p1, Lio/olvid/messenger/activities/ContactDetailsActivity$10;->val$editNameTextView:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v0, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$10$1;->this$1:Lio/olvid/messenger/activities/ContactDetailsActivity$10;

    iget-object v0, v0, Lio/olvid/messenger/activities/ContactDetailsActivity$10;->val$contact:Lio/olvid/messenger/databases/entity/Contact;

    iget-object v0, v0, Lio/olvid/messenger/databases/entity/Contact;->displayName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setSelection(II)V

    return-void
.end method
