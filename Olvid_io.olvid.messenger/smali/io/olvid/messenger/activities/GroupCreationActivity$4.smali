.class Lio/olvid/messenger/activities/GroupCreationActivity$4;
.super Ljava/lang/Object;
.source "GroupCreationActivity.java"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/GroupCreationActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field editText:Landroid/widget/EditText;

.field final synthetic this$0:Lio/olvid/messenger/activities/GroupCreationActivity;

.field final synthetic val$searchView:Landroidx/appcompat/widget/SearchView;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/GroupCreationActivity;Landroidx/appcompat/widget/SearchView;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lio/olvid/messenger/activities/GroupCreationActivity$4;->this$0:Lio/olvid/messenger/activities/GroupCreationActivity;

    iput-object p2, p0, Lio/olvid/messenger/activities/GroupCreationActivity$4;->val$searchView:Landroidx/appcompat/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    new-instance p1, Landroid/widget/EditText;

    iget-object p2, p0, Lio/olvid/messenger/activities/GroupCreationActivity$4;->val$searchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {p2}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lio/olvid/messenger/activities/GroupCreationActivity$4;->editText:Landroid/widget/EditText;

    .line 214
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupCreationActivity$4;->this$0:Lio/olvid/messenger/activities/GroupCreationActivity;

    iget-object p1, p1, Lio/olvid/messenger/activities/GroupCreationActivity;->contactsSelectionFragment:Lio/olvid/messenger/activities/GroupCreationActivity$ContactsSelectionFragment;

    iget-object p2, p0, Lio/olvid/messenger/activities/GroupCreationActivity$4;->editText:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Lio/olvid/messenger/activities/GroupCreationActivity$ContactsSelectionFragment;->setContactFilterEditText(Landroid/widget/EditText;)V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    .line 224
    iget-object v0, p0, Lio/olvid/messenger/activities/GroupCreationActivity$4;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
