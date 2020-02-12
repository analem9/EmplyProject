.class Lio/olvid/messenger/viewModels/DiscussionViewModel$6;
.super Ljava/lang/Object;
.source "DiscussionViewModel.java"

# interfaces
.implements Landroidx/arch/core/util/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/viewModels/DiscussionViewModel;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/arch/core/util/Function<",
        "Ljava/lang/Long;",
        "Landroidx/lifecycle/LiveData<",
        "Lio/olvid/messenger/databases/dao/MessageDao$UnreadCountAndFirstMessage;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/viewModels/DiscussionViewModel;


# direct methods
.method constructor <init>(Lio/olvid/messenger/viewModels/DiscussionViewModel;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lio/olvid/messenger/viewModels/DiscussionViewModel$6;->this$0:Lio/olvid/messenger/viewModels/DiscussionViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Long;)Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lio/olvid/messenger/databases/dao/MessageDao$UnreadCountAndFirstMessage;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 110
    :cond_0
    iget-object v0, p0, Lio/olvid/messenger/viewModels/DiscussionViewModel$6;->this$0:Lio/olvid/messenger/viewModels/DiscussionViewModel;

    invoke-static {v0}, Lio/olvid/messenger/viewModels/DiscussionViewModel;->access$000(Lio/olvid/messenger/viewModels/DiscussionViewModel;)Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lio/olvid/messenger/databases/dao/MessageDao;->getUnreadCountAndFirstMessage(J)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 104
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lio/olvid/messenger/viewModels/DiscussionViewModel$6;->apply(Ljava/lang/Long;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method
