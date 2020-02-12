.class Lio/olvid/messenger/activities/GroupDetailsActivity$9;
.super Ljava/lang/Object;
.source "GroupDetailsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$group:Lio/olvid/messenger/databases/entity/Group;

.field final synthetic val$groupDescriptionEditText:Lcom/google/android/material/textfield/TextInputEditText;

.field final synthetic val$groupNameEditText:Lcom/google/android/material/textfield/TextInputEditText;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/GroupDetailsActivity;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lio/olvid/messenger/databases/entity/Group;)V
    .locals 0

    .line 682
    iput-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$9;->this$0:Lio/olvid/messenger/activities/GroupDetailsActivity;

    iput-object p2, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$9;->val$groupNameEditText:Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p3, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$9;->val$groupDescriptionEditText:Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p4, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$9;->val$group:Lio/olvid/messenger/databases/entity/Group;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 685
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$9;->val$groupNameEditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    const-string p2, ""

    if-nez p1, :cond_0

    move-object p1, p2

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$9;->val$groupNameEditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 686
    :goto_0
    iget-object v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$9;->val$groupDescriptionEditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$9;->val$groupDescriptionEditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 687
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 690
    :cond_2
    new-instance v0, Lio/olvid/messenger/activities/GroupDetailsActivity$9$1;

    invoke-direct {v0, p0, p1, p2}, Lio/olvid/messenger/activities/GroupDetailsActivity$9$1;-><init>(Lio/olvid/messenger/activities/GroupDetailsActivity$9;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    return-void
.end method
