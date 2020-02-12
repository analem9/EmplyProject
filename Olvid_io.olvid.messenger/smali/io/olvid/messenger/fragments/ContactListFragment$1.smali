.class Lio/olvid/messenger/fragments/ContactListFragment$1;
.super Ljava/lang/Object;
.source "ContactListFragment.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/fragments/ContactListFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/util/List<",
        "Lio/olvid/messenger/databases/entity/Contact;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/fragments/ContactListFragment;


# direct methods
.method constructor <init>(Lio/olvid/messenger/fragments/ContactListFragment;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lio/olvid/messenger/fragments/ContactListFragment$1;->this$0:Lio/olvid/messenger/fragments/ContactListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 85
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lio/olvid/messenger/fragments/ContactListFragment$1;->onChanged(Ljava/util/List;)V

    return-void
.end method

.method public onChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Contact;",
            ">;)V"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lio/olvid/messenger/fragments/ContactListFragment$1;->this$0:Lio/olvid/messenger/fragments/ContactListFragment;

    iget-object v0, v0, Lio/olvid/messenger/fragments/ContactListFragment;->filteredContactListViewModel:Lio/olvid/messenger/viewModels/FilteredContactListViewModel;

    invoke-virtual {v0, p1}, Lio/olvid/messenger/viewModels/FilteredContactListViewModel;->setUnfilteredContacts(Ljava/util/List;)V

    if-eqz p1, :cond_1

    .line 90
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 91
    iget-object p1, p0, Lio/olvid/messenger/fragments/ContactListFragment$1;->this$0:Lio/olvid/messenger/fragments/ContactListFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lio/olvid/messenger/fragments/ContactListFragment;->access$000(Lio/olvid/messenger/fragments/ContactListFragment;Z)V

    goto :goto_0

    .line 93
    :cond_0
    iget-object p1, p0, Lio/olvid/messenger/fragments/ContactListFragment$1;->this$0:Lio/olvid/messenger/fragments/ContactListFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/olvid/messenger/fragments/ContactListFragment;->access$000(Lio/olvid/messenger/fragments/ContactListFragment;Z)V

    :cond_1
    :goto_0
    return-void
.end method
