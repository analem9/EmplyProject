.class Lio/olvid/messenger/viewModels/DiscussionViewModel$5;
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
        "Lio/olvid/messenger/databases/entity/Discussion;",
        "Landroidx/lifecycle/LiveData<",
        "Ljava/util/List<",
        "Lio/olvid/messenger/databases/entity/Contact;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/viewModels/DiscussionViewModel;


# direct methods
.method constructor <init>(Lio/olvid/messenger/viewModels/DiscussionViewModel;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lio/olvid/messenger/viewModels/DiscussionViewModel$5;->this$0:Lio/olvid/messenger/viewModels/DiscussionViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lio/olvid/messenger/databases/entity/Discussion;)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/olvid/messenger/databases/entity/Discussion;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Contact;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 94
    :cond_0
    iget-object v1, p1, Lio/olvid/messenger/databases/entity/Discussion;->bytesGroupOwnerAndUid:[B

    if-eqz v1, :cond_1

    .line 95
    iget-object v0, p0, Lio/olvid/messenger/viewModels/DiscussionViewModel$5;->this$0:Lio/olvid/messenger/viewModels/DiscussionViewModel;

    invoke-static {v0}, Lio/olvid/messenger/viewModels/DiscussionViewModel;->access$000(Lio/olvid/messenger/viewModels/DiscussionViewModel;)Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->contactGroupJoinDao()Lio/olvid/messenger/databases/dao/ContactGroupJoinDao;

    move-result-object v0

    iget-object v1, p1, Lio/olvid/messenger/databases/entity/Discussion;->bytesOwnedIdentity:[B

    iget-object p1, p1, Lio/olvid/messenger/databases/entity/Discussion;->bytesGroupOwnerAndUid:[B

    invoke-interface {v0, v1, p1}, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao;->getGroupContacts([B[B)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1

    .line 96
    :cond_1
    iget-object v1, p1, Lio/olvid/messenger/databases/entity/Discussion;->bytesContactIdentity:[B

    if-eqz v1, :cond_2

    .line 97
    iget-object v0, p0, Lio/olvid/messenger/viewModels/DiscussionViewModel$5;->this$0:Lio/olvid/messenger/viewModels/DiscussionViewModel;

    invoke-static {v0}, Lio/olvid/messenger/viewModels/DiscussionViewModel;->access$000(Lio/olvid/messenger/viewModels/DiscussionViewModel;)Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->contactDao()Lio/olvid/messenger/databases/dao/ContactDao;

    move-result-object v0

    iget-object v1, p1, Lio/olvid/messenger/databases/entity/Discussion;->bytesOwnedIdentity:[B

    iget-object p1, p1, Lio/olvid/messenger/databases/entity/Discussion;->bytesContactIdentity:[B

    invoke-interface {v0, v1, p1}, Lio/olvid/messenger/databases/dao/ContactDao;->getAsList([B[B)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 88
    check-cast p1, Lio/olvid/messenger/databases/entity/Discussion;

    invoke-virtual {p0, p1}, Lio/olvid/messenger/viewModels/DiscussionViewModel$5;->apply(Lio/olvid/messenger/databases/entity/Discussion;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method
