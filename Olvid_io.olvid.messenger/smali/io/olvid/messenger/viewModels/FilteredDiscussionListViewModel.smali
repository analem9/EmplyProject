.class public Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "FilteredDiscussionListViewModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$SearchableDiscussion;,
        Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$FilterDiscussionListTask;
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

.field private filteredDiscussions:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$SearchableDiscussion;",
            ">;>;"
        }
    .end annotation
.end field

.field private unfilteredDiscussions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$SearchableDiscussion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 19
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel;->filteredDiscussions:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method


# virtual methods
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

    .line 51
    iget-object v0, p0, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel;->filterPatterns:Ljava/util/List;

    return-object v0
.end method

.method public getFilteredDiscussions()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$SearchableDiscussion;",
            ">;>;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel;->filteredDiscussions:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public setFilter(Ljava/lang/String;)V
    .locals 4

    .line 34
    iput-object p1, p0, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel;->filter:Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 36
    iput-object p1, p0, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel;->filterPatterns:Ljava/util/List;

    goto :goto_1

    .line 38
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\s+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel;->filterPatterns:Ljava/util/List;

    .line 40
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 41
    iget-object v3, p0, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel;->filterPatterns:Ljava/util/List;

    invoke-static {v2}, Lio/olvid/messenger/App;->unAccent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 44
    :cond_1
    :goto_1
    iget-object p1, p0, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel;->unfilteredDiscussions:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 46
    new-instance v0, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$FilterDiscussionListTask;

    iget-object v1, p0, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel;->filterPatterns:Ljava/util/List;

    iget-object v2, p0, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel;->filteredDiscussions:Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0, v1, v2, p1}, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$FilterDiscussionListTask;-><init>(Ljava/util/List;Landroidx/lifecycle/MutableLiveData;Ljava/util/List;)V

    invoke-static {v0}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public setUnfilteredDiscussions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$SearchableDiscussion;",
            ">;)V"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel;->unfilteredDiscussions:Ljava/util/List;

    .line 30
    iget-object p1, p0, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel;->filter:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel;->setFilter(Ljava/lang/String;)V

    return-void
.end method
