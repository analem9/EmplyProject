.class Lio/olvid/messenger/activities/MainActivity$16;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/MainActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field editText:Landroid/widget/EditText;

.field final synthetic this$0:Lio/olvid/messenger/activities/MainActivity;

.field final synthetic val$searchView:Landroidx/appcompat/widget/SearchView;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/MainActivity;Landroidx/appcompat/widget/SearchView;)V
    .locals 0

    .line 797
    iput-object p1, p0, Lio/olvid/messenger/activities/MainActivity$16;->this$0:Lio/olvid/messenger/activities/MainActivity;

    iput-object p2, p0, Lio/olvid/messenger/activities/MainActivity$16;->val$searchView:Landroidx/appcompat/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 798
    new-instance p1, Landroid/widget/EditText;

    iget-object p2, p0, Lio/olvid/messenger/activities/MainActivity$16;->val$searchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {p2}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lio/olvid/messenger/activities/MainActivity$16;->editText:Landroid/widget/EditText;

    .line 800
    iget-object p1, p0, Lio/olvid/messenger/activities/MainActivity$16;->this$0:Lio/olvid/messenger/activities/MainActivity;

    invoke-static {p1}, Lio/olvid/messenger/activities/MainActivity;->access$400(Lio/olvid/messenger/activities/MainActivity;)Lio/olvid/messenger/fragments/ContactListFragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 801
    iget-object p1, p0, Lio/olvid/messenger/activities/MainActivity$16;->this$0:Lio/olvid/messenger/activities/MainActivity;

    invoke-static {p1}, Lio/olvid/messenger/activities/MainActivity;->access$400(Lio/olvid/messenger/activities/MainActivity;)Lio/olvid/messenger/fragments/ContactListFragment;

    move-result-object p1

    iget-object p2, p0, Lio/olvid/messenger/activities/MainActivity$16;->editText:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Lio/olvid/messenger/fragments/ContactListFragment;->setContactFilterEditText(Landroid/widget/EditText;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    .line 812
    iget-object v0, p0, Lio/olvid/messenger/activities/MainActivity$16;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
