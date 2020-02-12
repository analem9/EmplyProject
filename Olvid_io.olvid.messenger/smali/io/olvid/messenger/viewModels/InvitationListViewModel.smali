.class public Lio/olvid/messenger/viewModels/InvitationListViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "InvitationListViewModel.java"


# instance fields
.field private db:Lio/olvid/messenger/databases/AppDatabase;

.field private invitations:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Invitation;",
            ">;>;"
        }
    .end annotation
.end field

.field private lastSas:Ljava/lang/String;

.field private lastSasDialogUUID:Ljava/util/UUID;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 24
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/messenger/viewModels/InvitationListViewModel;->db:Lio/olvid/messenger/databases/AppDatabase;

    .line 25
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getCurrentIdentity()Landroidx/lifecycle/LiveData;

    move-result-object v0

    .line 27
    new-instance v1, Lio/olvid/messenger/viewModels/InvitationListViewModel$1;

    invoke-direct {v1, p0}, Lio/olvid/messenger/viewModels/InvitationListViewModel$1;-><init>(Lio/olvid/messenger/viewModels/InvitationListViewModel;)V

    invoke-static {v0, v1}, Landroidx/lifecycle/Transformations;->switchMap(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/messenger/viewModels/InvitationListViewModel;->invitations:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method static synthetic access$000(Lio/olvid/messenger/viewModels/InvitationListViewModel;)Lio/olvid/messenger/databases/AppDatabase;
    .locals 0

    .line 17
    iget-object p0, p0, Lio/olvid/messenger/viewModels/InvitationListViewModel;->db:Lio/olvid/messenger/databases/AppDatabase;

    return-object p0
.end method


# virtual methods
.method public getInvitations()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Invitation;",
            ">;>;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lio/olvid/messenger/viewModels/InvitationListViewModel;->invitations:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public getLastSas()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lio/olvid/messenger/viewModels/InvitationListViewModel;->lastSas:Ljava/lang/String;

    return-object v0
.end method

.method public getLastSasDialogUUID()Ljava/util/UUID;
    .locals 1

    .line 52
    iget-object v0, p0, Lio/olvid/messenger/viewModels/InvitationListViewModel;->lastSasDialogUUID:Ljava/util/UUID;

    return-object v0
.end method

.method public setLastSas(Ljava/lang/String;Ljava/util/UUID;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lio/olvid/messenger/viewModels/InvitationListViewModel;->lastSas:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lio/olvid/messenger/viewModels/InvitationListViewModel;->lastSasDialogUUID:Ljava/util/UUID;

    return-void
.end method
