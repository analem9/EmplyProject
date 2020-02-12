.class Lio/olvid/messenger/fragments/FilteredContactListFragment$1;
.super Ljava/lang/Object;
.source "FilteredContactListFragment.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/fragments/FilteredContactListFragment;->observeUnfiltered()V
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
.field final synthetic this$0:Lio/olvid/messenger/fragments/FilteredContactListFragment;


# direct methods
.method constructor <init>(Lio/olvid/messenger/fragments/FilteredContactListFragment;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$1;->this$0:Lio/olvid/messenger/fragments/FilteredContactListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 187
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lio/olvid/messenger/fragments/FilteredContactListFragment$1;->onChanged(Ljava/util/List;)V

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

    .line 190
    iget-object v0, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$1;->this$0:Lio/olvid/messenger/fragments/FilteredContactListFragment;

    iget-object v0, v0, Lio/olvid/messenger/fragments/FilteredContactListFragment;->filteredContactListViewModel:Lio/olvid/messenger/viewModels/FilteredContactListViewModel;

    invoke-virtual {v0, p1}, Lio/olvid/messenger/viewModels/FilteredContactListViewModel;->setUnfilteredContacts(Ljava/util/List;)V

    return-void
.end method
