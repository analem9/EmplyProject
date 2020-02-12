.class Lio/olvid/messenger/activities/GroupDetailsActivity$10;
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

.field final synthetic val$editNameTextView:Lcom/google/android/material/textfield/TextInputEditText;

.field final synthetic val$group:Lio/olvid/messenger/databases/entity/Group;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/GroupDetailsActivity;Lcom/google/android/material/textfield/TextInputEditText;Lio/olvid/messenger/databases/entity/Group;)V
    .locals 0

    .line 717
    iput-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$10;->this$0:Lio/olvid/messenger/activities/GroupDetailsActivity;

    iput-object p2, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$10;->val$editNameTextView:Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p3, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$10;->val$group:Lio/olvid/messenger/databases/entity/Group;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 720
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$10;->val$editNameTextView:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 721
    new-instance p2, Lio/olvid/messenger/activities/GroupDetailsActivity$10$1;

    invoke-direct {p2, p0, p1}, Lio/olvid/messenger/activities/GroupDetailsActivity$10$1;-><init>(Lio/olvid/messenger/activities/GroupDetailsActivity$10;Ljava/lang/String;)V

    invoke-static {p2}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    return-void
.end method
