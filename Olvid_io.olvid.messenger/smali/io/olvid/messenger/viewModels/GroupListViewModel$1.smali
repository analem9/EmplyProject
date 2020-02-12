.class Lio/olvid/messenger/viewModels/GroupListViewModel$1;
.super Ljava/lang/Object;
.source "GroupListViewModel.java"

# interfaces
.implements Landroidx/arch/core/util/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/viewModels/GroupListViewModel;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/arch/core/util/Function<",
        "Lio/olvid/messenger/databases/entity/OwnedIdentity;",
        "Landroidx/lifecycle/LiveData<",
        "Ljava/util/List<",
        "Lio/olvid/messenger/databases/dao/GroupDao$GroupAndContactDisplayNames;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/viewModels/GroupListViewModel;

.field final synthetic val$joiner:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/olvid/messenger/viewModels/GroupListViewModel;Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lio/olvid/messenger/viewModels/GroupListViewModel$1;->this$0:Lio/olvid/messenger/viewModels/GroupListViewModel;

    iput-object p2, p0, Lio/olvid/messenger/viewModels/GroupListViewModel$1;->val$joiner:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lio/olvid/messenger/databases/entity/OwnedIdentity;)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/olvid/messenger/databases/entity/OwnedIdentity;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/dao/GroupDao$GroupAndContactDisplayNames;",
            ">;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 33
    :cond_0
    iget-object v0, p0, Lio/olvid/messenger/viewModels/GroupListViewModel$1;->this$0:Lio/olvid/messenger/viewModels/GroupListViewModel;

    invoke-static {v0}, Lio/olvid/messenger/viewModels/GroupListViewModel;->access$000(Lio/olvid/messenger/viewModels/GroupListViewModel;)Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->groupDao()Lio/olvid/messenger/databases/dao/GroupDao;

    move-result-object v0

    iget-object p1, p1, Lio/olvid/messenger/databases/entity/OwnedIdentity;->bytesOwnedIdentity:[B

    iget-object v1, p0, Lio/olvid/messenger/viewModels/GroupListViewModel$1;->val$joiner:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lio/olvid/messenger/databases/dao/GroupDao;->getAllOwnedThenJoined([BLjava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 27
    check-cast p1, Lio/olvid/messenger/databases/entity/OwnedIdentity;

    invoke-virtual {p0, p1}, Lio/olvid/messenger/viewModels/GroupListViewModel$1;->apply(Lio/olvid/messenger/databases/entity/OwnedIdentity;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method
