.class Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment$3;
.super Ljava/lang/Object;
.source "GroupMemberAdditionDialogFragment.java"

# interfaces
.implements Landroidx/arch/core/util/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/arch/core/util/Function<",
        "Lio/olvid/messenger/databases/entity/Group;",
        "Landroidx/lifecycle/LiveData<",
        "Ljava/util/List<",
        "Lio/olvid/messenger/databases/entity/Contact;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment;


# direct methods
.method constructor <init>(Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment$3;->this$0:Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lio/olvid/messenger/databases/entity/Group;)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/olvid/messenger/databases/entity/Group;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Contact;",
            ">;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 143
    :cond_0
    iget-object v0, p0, Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment$3;->this$0:Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment;

    invoke-static {v0, p1}, Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment;->access$302(Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment;Lio/olvid/messenger/databases/entity/Group;)Lio/olvid/messenger/databases/entity/Group;

    .line 144
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lio/olvid/messenger/databases/AppDatabase;->contactDao()Lio/olvid/messenger/databases/dao/ContactDao;

    move-result-object p1

    iget-object v0, p0, Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment$3;->this$0:Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment;

    invoke-static {v0}, Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment;->access$100(Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment;)[B

    move-result-object v0

    iget-object v1, p0, Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment$3;->this$0:Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment;

    invoke-static {v1}, Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment;->access$200(Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment;)[B

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lio/olvid/messenger/databases/dao/ContactDao;->getAllForOwnedIdentityWithChannelExcludingGroup([B[B)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 137
    check-cast p1, Lio/olvid/messenger/databases/entity/Group;

    invoke-virtual {p0, p1}, Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment$3;->apply(Lio/olvid/messenger/databases/entity/Group;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method
