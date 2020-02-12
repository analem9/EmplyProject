.class Lio/olvid/messenger/viewModels/MessageDetailsViewModel$4;
.super Ljava/lang/Object;
.source "MessageDetailsViewModel.java"

# interfaces
.implements Landroidx/arch/core/util/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/viewModels/MessageDetailsViewModel;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/arch/core/util/Function<",
        "Lio/olvid/messenger/databases/entity/Message;",
        "Landroidx/lifecycle/LiveData<",
        "Ljava/util/List<",
        "Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/viewModels/MessageDetailsViewModel;


# direct methods
.method constructor <init>(Lio/olvid/messenger/viewModels/MessageDetailsViewModel;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lio/olvid/messenger/viewModels/MessageDetailsViewModel$4;->this$0:Lio/olvid/messenger/viewModels/MessageDetailsViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lio/olvid/messenger/databases/entity/Message;)Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/olvid/messenger/databases/entity/Message;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;",
            ">;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 65
    :cond_0
    iget-object v0, p0, Lio/olvid/messenger/viewModels/MessageDetailsViewModel$4;->this$0:Lio/olvid/messenger/viewModels/MessageDetailsViewModel;

    invoke-static {v0}, Lio/olvid/messenger/viewModels/MessageDetailsViewModel;->access$000(Lio/olvid/messenger/viewModels/MessageDetailsViewModel;)Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->fyleMessageJoinWithStatusDao()Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;

    move-result-object v0

    iget-wide v1, p1, Lio/olvid/messenger/databases/entity/Message;->id:J

    invoke-interface {v0, v1, v2}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;->getFylesAndStatusForMessage(J)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 59
    check-cast p1, Lio/olvid/messenger/databases/entity/Message;

    invoke-virtual {p0, p1}, Lio/olvid/messenger/viewModels/MessageDetailsViewModel$4;->apply(Lio/olvid/messenger/databases/entity/Message;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method
