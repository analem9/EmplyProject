.class public Lio/olvid/messenger/viewModels/DiscussionListViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "DiscussionListViewModel.java"


# instance fields
.field private bytesOwnedIdentity:[B

.field private discussionsAndLastMessage:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getDiscussions()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;",
            ">;>;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lio/olvid/messenger/viewModels/DiscussionListViewModel;->discussionsAndLastMessage:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public setOwnedIdentity([B)V
    .locals 1

    .line 17
    iput-object p1, p0, Lio/olvid/messenger/viewModels/DiscussionListViewModel;->bytesOwnedIdentity:[B

    .line 18
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lio/olvid/messenger/viewModels/DiscussionListViewModel;->discussionsAndLastMessage:Landroidx/lifecycle/LiveData;

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/olvid/messenger/databases/dao/DiscussionDao;->getAllDiscussionAndLastMessages([B)Landroidx/lifecycle/LiveData;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/messenger/viewModels/DiscussionListViewModel;->discussionsAndLastMessage:Landroidx/lifecycle/LiveData;

    :goto_0
    return-void
.end method
