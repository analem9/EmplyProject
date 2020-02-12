.class public Lio/olvid/messenger/viewModels/DiscussionSettingsViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "DiscussionSettingsViewModel.java"


# instance fields
.field private db:Lio/olvid/messenger/databases/AppDatabase;

.field private final discussionCustomization:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lio/olvid/messenger/databases/entity/DiscussionCustomization;",
            ">;"
        }
    .end annotation
.end field

.field private final discussionIdLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 22
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/messenger/viewModels/DiscussionSettingsViewModel;->db:Lio/olvid/messenger/databases/AppDatabase;

    .line 23
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lio/olvid/messenger/viewModels/DiscussionSettingsViewModel;->discussionIdLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 24
    iget-object v0, p0, Lio/olvid/messenger/viewModels/DiscussionSettingsViewModel;->discussionIdLiveData:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lio/olvid/messenger/viewModels/DiscussionSettingsViewModel$1;

    invoke-direct {v1, p0}, Lio/olvid/messenger/viewModels/DiscussionSettingsViewModel$1;-><init>(Lio/olvid/messenger/viewModels/DiscussionSettingsViewModel;)V

    invoke-static {v0, v1}, Landroidx/lifecycle/Transformations;->switchMap(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/messenger/viewModels/DiscussionSettingsViewModel;->discussionCustomization:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method static synthetic access$000(Lio/olvid/messenger/viewModels/DiscussionSettingsViewModel;)Lio/olvid/messenger/databases/AppDatabase;
    .locals 0

    .line 14
    iget-object p0, p0, Lio/olvid/messenger/viewModels/DiscussionSettingsViewModel;->db:Lio/olvid/messenger/databases/AppDatabase;

    return-object p0
.end method


# virtual methods
.method public getDiscussionCustomization()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lio/olvid/messenger/databases/entity/DiscussionCustomization;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lio/olvid/messenger/viewModels/DiscussionSettingsViewModel;->discussionCustomization:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public getDiscussionId()Ljava/lang/Long;
    .locals 1

    .line 45
    iget-object v0, p0, Lio/olvid/messenger/viewModels/DiscussionSettingsViewModel;->discussionIdLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public setDiscussionId(J)V
    .locals 1

    .line 37
    iget-object v0, p0, Lio/olvid/messenger/viewModels/DiscussionSettingsViewModel;->discussionIdLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
