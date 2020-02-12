.class Lio/olvid/messenger/viewModels/FilteredContactListViewModel$FilterContactListTask;
.super Ljava/lang/Object;
.source "FilteredContactListViewModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/viewModels/FilteredContactListViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FilterContactListTask"
.end annotation


# instance fields
.field private final filterPatterns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private final filteredContacts:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/viewModels/FilteredContactListViewModel$SelectableContact;",
            ">;>;"
        }
    .end annotation
.end field

.field private final selectedContactsHashSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lio/olvid/messenger/databases/entity/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private final unfilteredContacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Contact;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Landroidx/lifecycle/MutableLiveData;Ljava/util/List;Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/regex/Pattern;",
            ">;",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/viewModels/FilteredContactListViewModel$SelectableContact;",
            ">;>;",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Contact;",
            ">;",
            "Ljava/util/HashSet<",
            "Lio/olvid/messenger/databases/entity/Contact;",
            ">;)V"
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 118
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lio/olvid/messenger/viewModels/FilteredContactListViewModel$FilterContactListTask;->filterPatterns:Ljava/util/List;

    goto :goto_0

    .line 120
    :cond_0
    iput-object p1, p0, Lio/olvid/messenger/viewModels/FilteredContactListViewModel$FilterContactListTask;->filterPatterns:Ljava/util/List;

    .line 122
    :goto_0
    iput-object p2, p0, Lio/olvid/messenger/viewModels/FilteredContactListViewModel$FilterContactListTask;->filteredContacts:Landroidx/lifecycle/MutableLiveData;

    .line 123
    iput-object p3, p0, Lio/olvid/messenger/viewModels/FilteredContactListViewModel$FilterContactListTask;->unfilteredContacts:Ljava/util/List;

    .line 124
    iput-object p4, p0, Lio/olvid/messenger/viewModels/FilteredContactListViewModel$FilterContactListTask;->selectedContactsHashSet:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 129
    iget-object v0, p0, Lio/olvid/messenger/viewModels/FilteredContactListViewModel$FilterContactListTask;->unfilteredContacts:Ljava/util/List;

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lio/olvid/messenger/viewModels/FilteredContactListViewModel$FilterContactListTask;->filteredContacts:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void

    .line 133
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 135
    iget-object v1, p0, Lio/olvid/messenger/viewModels/FilteredContactListViewModel$FilterContactListTask;->unfilteredContacts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/olvid/messenger/databases/entity/Contact;

    const/4 v3, 0x1

    .line 137
    invoke-virtual {v2}, Lio/olvid/messenger/databases/entity/Contact;->getCustomDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/olvid/messenger/App;->unAccent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 138
    iget-object v5, p0, Lio/olvid/messenger/viewModels/FilteredContactListViewModel$FilterContactListTask;->filterPatterns:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/regex/Pattern;

    .line 139
    invoke-virtual {v6, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 140
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v3, 0x0

    :cond_3
    if-eqz v3, :cond_1

    .line 146
    new-instance v3, Lio/olvid/messenger/viewModels/FilteredContactListViewModel$SelectableContact;

    iget-object v4, p0, Lio/olvid/messenger/viewModels/FilteredContactListViewModel$FilterContactListTask;->selectedContactsHashSet:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    invoke-direct {v3, v2, v4}, Lio/olvid/messenger/viewModels/FilteredContactListViewModel$SelectableContact;-><init>(Lio/olvid/messenger/databases/entity/Contact;Z)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 149
    :cond_4
    iget-object v1, p0, Lio/olvid/messenger/viewModels/FilteredContactListViewModel$FilterContactListTask;->filteredContacts:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
