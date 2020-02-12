.class Lio/olvid/messenger/activities/GroupDetailsActivity$11;
.super Ljava/lang/Object;
.source "GroupDetailsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


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

    .line 737
    iput-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$11;->this$0:Lio/olvid/messenger/activities/GroupDetailsActivity;

    iput-object p2, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$11;->val$editNameTextView:Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p3, p0, Lio/olvid/messenger/activities/GroupDetailsActivity$11;->val$group:Lio/olvid/messenger/databases/entity/Group;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    .line 740
    check-cast p1, Landroidx/appcompat/app/AlertDialog;

    const/4 v0, -0x3

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 742
    new-instance v0, Lio/olvid/messenger/activities/GroupDetailsActivity$11$1;

    invoke-direct {v0, p0}, Lio/olvid/messenger/activities/GroupDetailsActivity$11$1;-><init>(Lio/olvid/messenger/activities/GroupDetailsActivity$11;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
