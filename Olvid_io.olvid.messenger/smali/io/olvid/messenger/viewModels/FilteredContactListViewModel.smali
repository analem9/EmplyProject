.class public Lio/olvid/messenger/viewModels/FilteredContactListViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "FilteredContactListViewModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/messenger/viewModels/FilteredContactListViewModel$SelectableContact;,
        Lio/olvid/messenger/viewModels/FilteredContactListViewModel$FilterContactListTask;
    }
.end annotation


# instance fields
.field private filter:Ljava/lang/String;

.field private filterPatterns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private filteredContacts:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/viewModels/FilteredContactListViewModel$SelectableContact;",
            ">;>;"
        }
    .end annotation
.end field

.field private selectedContacts:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Contact;",
            ">;>;"
        }
    .end annotation
.end field

.field private selectedContactsHashSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lio/olvid/messenger/databases/entity/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private unfilteredContacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Contact;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 22
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lio/olvid/messenger/viewModels/FilteredContactListViewModel;->filteredContacts:Landroidx/lifecycle/MutableLiveData;

    .line 23
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lio/olvid/messenger/viewModels/FilteredContactListViewModel;->selectedContacts:Landroidx/lifecycle/MutableLiveData;

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/olvid/messenger/viewModels/FilteredContactListViewModel;->selectedContactsHashSet:Ljava/util/HashSet;

    return-void
.end method

.method private refreshSelectedContacts()V
    .locals 6

    .line 98
    iget-object v0, p0, Lio/olvid/messenger/viewModels/FilteredContactListViewModel;->filteredContacts:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 100
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/olvid/messenger/viewModels/FilteredContactListViewModel$SelectableContact;

    .line 102
    new-instance v3, Lio/olvid/messenger/viewModels/FilteredContactListViewModel$SelectableContact;

    iget-object v4, v2, Lio/olvid/messenger/viewModels/FilteredContactListViewModel$SelectableContact;->contact:Lio/olvid/messenger/databases/entity/Contact;

    iget-object v5, p0, Lio/olvid/messenger/viewModels/FilteredContactListViewModel;->selectedContactsHashSet:Ljava/util/HashSet;

    iget-object v2, v2, Lio/olvid/messenger/viewModels/FilteredContactListViewModel$SelectableContact;->contact:Lio/olvid/messenger/databases/entity/Contact;

    invoke-virtual {v5, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-direct {v3, v4, v2}, Lio/olvid/messenger/viewModels/FilteredContactListViewModel$SelectableContact;-><init>(Lio/olvid/messenger/databases/entity/Contact;Z)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Lio/olvid/messenger/viewModels/FilteredContactListViewModel;->filteredContacts:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getFilter()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lio/olvid/messenger/viewModels/FilteredContactListViewModel;->filter:Ljava/lang/String;

    return-object v0
.end method

.method public getFilterPatterns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lio/olvid/messenger/viewModels/FilteredContactListViewModel;->filterPatterns:Ljava/util/List;

    return-object v0
.end method

.method public getFilteredContacts()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/viewModels/FilteredContactListViewModel$SelectableContact;",
            ">;>;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lio/olvid/messenger/viewModels/FilteredContactListViewModel;->filteredContacts:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getSelectedContacts()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Contact;",
            ">;>;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lio/olvid/messenger/viewModels/FilteredContactListViewModel;->selectedContacts:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getUnfilteredContacts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Contact;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lio/olvid/messenger/viewModels/FilteredContactListViewModel;->unfilteredContacts:Ljava/util/List;

    return-object v0
.end method

.method public hasFilter()Z
    .locals 1

    .line 61
    iget-object v0, p0, Lio/olvid/messenger/viewModels/FilteredContactListViewModel;->filterPatterns:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public selectContact(Lio/olvid/messenger/databases/entity/Contact;)V
    .locals 2

    .line 81
    iget-object v0, p0, Lio/olvid/messenger/viewModels/FilteredContactListViewModel;->selectedContactsHashSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lio/olvid/messenger/viewModels/FilteredContactListViewModel;->selectedContactsHashSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 84
    :cond_0
    iget-object v0, p0, Lio/olvid/messenger/viewModels/FilteredContactListViewModel;->selectedContactsHashSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 86
    :goto_0
    iget-object p1, p0, Lio/olvid/messenger/viewModels/FilteredContactListViewModel;->selectedContacts:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/olvid/messenger/viewModels/FilteredContactListViewModel;->selectedContactsHashSet:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 87
    invoke-direct {p0}, Lio/olvid/messenger/viewModels/FilteredContactListViewModel;->refreshSelectedContacts()V

    return-void
.end method

.method public setFilter(Ljava/lang/String;)V
    .locals 4

    .line 42
    iput-object p1, p0, Lio/olvid/messenger/viewModels/FilteredContactListViewModel;->filter:Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lio/olvid/messenger/viewModels/FilteredContactListViewModel;->filterPatterns:Ljava/util/List;

    goto :goto_1

    .line 46
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\s+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/olvid/messenger/viewModels/FilteredContactListViewModel;->filterPatterns:Ljava/util/List;

    .line 48
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 49
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 50
    iget-object v3, p0, Lio/olvid/messenger/viewModels/FilteredContactListViewModel;->filterPatterns:Ljava/util/List;

    invoke-static {v2}, Lio/olvid/messenger/App;->unAccent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    :cond_2
    :goto_1
    iget-object p1, p0, Lio/olvid/messenger/viewModels/FilteredContactListViewModel;->unfilteredContacts:Ljava/util/List;

    if-eqz p1, :cond_3

    .line 56
    new-instance v0, Lio/olvid/messenger/viewModels/FilteredContactListViewModel$FilterContactListTask;

    iget-object v1, p0, Lio/olvid/messenger/viewModels/FilteredContactListViewModel;->filterPatterns:Ljava/util/List;

    iget-object v2, p0, Lio/olvid/messenger/viewModels/FilteredContactListViewModel;->filteredContacts:Landroidx/lifecycle/MutableLiveData;

    iget-object v3, p0, Lio/olvid/messenger/viewModels/FilteredContactListViewModel;->selectedContactsHashSet:Ljava/util/HashSet;

    invoke-direct {v0, v1, v2, p1, v3}, Lio/olvid/messenger/viewModels/FilteredContactListViewModel$FilterContactListTask;-><init>(Ljava/util/List;Landroidx/lifecycle/MutableLiveData;Ljava/util/List;Ljava/util/HashSet;)V

    invoke-static {v0}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method public setSelectedContacts(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Contact;",
            ">;)V"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lio/olvid/messenger/viewModels/FilteredContactListViewModel;->selectedContactsHashSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 92
    iget-object v0, p0, Lio/olvid/messenger/viewModels/FilteredContactListViewModel;->selectedContactsHashSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 93
    iget-object v0, p0, Lio/olvid/messenger/viewModels/FilteredContactListViewModel;->selectedContacts:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 94
    invoke-direct {p0}, Lio/olvid/messenger/viewModels/FilteredContactListViewModel;->refreshSelectedContacts()V

    return-void
.end method

.method public setUnfilteredContacts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Contact;",
            ">;)V"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lio/olvid/messenger/viewModels/FilteredContactListViewModel;->unfilteredContacts:Ljava/util/List;

    .line 34
    iget-object p1, p0, Lio/olvid/messenger/viewModels/FilteredContactListViewModel;->filter:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/olvid/messenger/viewModels/FilteredContactListViewModel;->setFilter(Ljava/lang/String;)V

    return-void
.end method
