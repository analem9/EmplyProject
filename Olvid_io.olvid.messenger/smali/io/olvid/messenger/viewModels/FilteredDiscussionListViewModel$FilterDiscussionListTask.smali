.class Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$FilterDiscussionListTask;
.super Ljava/lang/Object;
.source "FilteredDiscussionListViewModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FilterDiscussionListTask"
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

.field private final liveFilteredDiscussions:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$SearchableDiscussion;",
            ">;>;"
        }
    .end annotation
.end field

.field private final unfilteredDiscussions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$SearchableDiscussion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Landroidx/lifecycle/MutableLiveData;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/regex/Pattern;",
            ">;",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$SearchableDiscussion;",
            ">;>;",
            "Ljava/util/List<",
            "Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$SearchableDiscussion;",
            ">;)V"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 66
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$FilterDiscussionListTask;->filterPatterns:Ljava/util/List;

    goto :goto_0

    .line 68
    :cond_0
    iput-object p1, p0, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$FilterDiscussionListTask;->filterPatterns:Ljava/util/List;

    .line 70
    :goto_0
    iput-object p2, p0, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$FilterDiscussionListTask;->liveFilteredDiscussions:Landroidx/lifecycle/MutableLiveData;

    .line 71
    iput-object p3, p0, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$FilterDiscussionListTask;->unfilteredDiscussions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 76
    iget-object v0, p0, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$FilterDiscussionListTask;->unfilteredDiscussions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$FilterDiscussionListTask;->liveFilteredDiscussions:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void

    .line 80
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    iget-object v1, p0, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$FilterDiscussionListTask;->unfilteredDiscussions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$SearchableDiscussion;

    const/4 v3, 0x1

    .line 84
    iget-object v4, p0, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$FilterDiscussionListTask;->filterPatterns:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/regex/Pattern;

    .line 85
    iget-object v6, v2, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$SearchableDiscussion;->patternMatchingField:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 86
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v3, 0x0

    :cond_3
    if-eqz v3, :cond_1

    .line 92
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 95
    :cond_4
    iget-object v1, p0, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$FilterDiscussionListTask;->liveFilteredDiscussions:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
