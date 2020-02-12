.class public Lio/olvid/messenger/viewModels/GroupListViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "GroupListViewModel.java"


# instance fields
.field private final db:Lio/olvid/messenger/databases/AppDatabase;

.field private final groups:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/dao/GroupDao$GroupAndContactDisplayNames;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 23
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 24
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/messenger/viewModels/GroupListViewModel;->db:Lio/olvid/messenger/databases/AppDatabase;

    .line 25
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getCurrentIdentity()Landroidx/lifecycle/LiveData;

    move-result-object v0

    .line 26
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1001ca

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 27
    new-instance v2, Lio/olvid/messenger/viewModels/GroupListViewModel$1;

    invoke-direct {v2, p0, v1}, Lio/olvid/messenger/viewModels/GroupListViewModel$1;-><init>(Lio/olvid/messenger/viewModels/GroupListViewModel;Ljava/lang/String;)V

    invoke-static {v0, v2}, Landroidx/lifecycle/Transformations;->switchMap(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/messenger/viewModels/GroupListViewModel;->groups:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method static synthetic access$000(Lio/olvid/messenger/viewModels/GroupListViewModel;)Lio/olvid/messenger/databases/AppDatabase;
    .locals 0

    .line 19
    iget-object p0, p0, Lio/olvid/messenger/viewModels/GroupListViewModel;->db:Lio/olvid/messenger/databases/AppDatabase;

    return-object p0
.end method


# virtual methods
.method public getGroups()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/dao/GroupDao$GroupAndContactDisplayNames;",
            ">;>;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lio/olvid/messenger/viewModels/GroupListViewModel;->groups:Landroidx/lifecycle/LiveData;

    return-object v0
.end method
