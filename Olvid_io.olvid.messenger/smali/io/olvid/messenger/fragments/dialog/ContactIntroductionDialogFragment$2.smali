.class Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment$2;
.super Ljava/lang/Object;
.source "ContactIntroductionDialogFragment.java"

# interfaces
.implements Landroidx/arch/core/util/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
        "Lio/olvid/messenger/databases/entity/Contact;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment;


# direct methods
.method constructor <init>(Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment$2;->this$0:Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment;

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
            "Lio/olvid/messenger/databases/entity/Contact;",
            ">;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 107
    :cond_0
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->contactDao()Lio/olvid/messenger/databases/dao/ContactDao;

    move-result-object v0

    iget-object p1, p1, Lio/olvid/messenger/databases/entity/OwnedIdentity;->bytesOwnedIdentity:[B

    iget-object v1, p0, Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment$2;->this$0:Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment;

    invoke-static {v1}, Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment;->access$000(Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment;)[B

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lio/olvid/messenger/databases/dao/ContactDao;->getAllForOwnedIdentityWithChannelExcludingOne([B[B)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 101
    check-cast p1, Lio/olvid/messenger/databases/entity/OwnedIdentity;

    invoke-virtual {p0, p1}, Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment$2;->apply(Lio/olvid/messenger/databases/entity/OwnedIdentity;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method
