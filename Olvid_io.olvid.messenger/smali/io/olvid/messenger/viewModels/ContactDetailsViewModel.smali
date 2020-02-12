.class public Lio/olvid/messenger/viewModels/ContactDetailsViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "ContactDetailsViewModel.java"


# instance fields
.field private contact:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lio/olvid/messenger/databases/entity/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private contactBytesIdentity:[B

.field private contactBytesOwnedIdentity:[B

.field private groupDiscussions:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndContactDisplayNames;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getContact()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lio/olvid/messenger/databases/entity/Contact;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lio/olvid/messenger/viewModels/ContactDetailsViewModel;->contact:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public getGroupDiscussions()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndContactDisplayNames;",
            ">;>;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lio/olvid/messenger/viewModels/ContactDetailsViewModel;->groupDiscussions:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public setContactBytes([B[B)V
    .locals 3

    .line 22
    iput-object p1, p0, Lio/olvid/messenger/viewModels/ContactDetailsViewModel;->contactBytesIdentity:[B

    .line 23
    iput-object p2, p0, Lio/olvid/messenger/viewModels/ContactDetailsViewModel;->contactBytesOwnedIdentity:[B

    .line 24
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->contactDao()Lio/olvid/messenger/databases/dao/ContactDao;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/olvid/messenger/databases/dao/ContactDao;->getAsync([B[B)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/messenger/viewModels/ContactDetailsViewModel;->contact:Landroidx/lifecycle/LiveData;

    .line 25
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;

    move-result-object v0

    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1001ca

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lio/olvid/messenger/databases/dao/DiscussionDao;->getContactActiveGroupDiscussionsWithContactNames([B[BLjava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/messenger/viewModels/ContactDetailsViewModel;->groupDiscussions:Landroidx/lifecycle/LiveData;

    return-void
.end method
