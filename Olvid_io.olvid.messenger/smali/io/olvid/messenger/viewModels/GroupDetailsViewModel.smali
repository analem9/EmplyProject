.class public Lio/olvid/messenger/viewModels/GroupDetailsViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "GroupDetailsViewModel.java"


# instance fields
.field public bytesOwnedIdentity:[B

.field private group:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lio/olvid/messenger/databases/entity/Group;",
            ">;"
        }
    .end annotation
.end field

.field public groupId:[B

.field private groupMembers:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/dao/ContactGroupJoinDao$ContactAndTimestamp;",
            ">;>;"
        }
    .end annotation
.end field

.field private pendingGroupMembers:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/dao/PendingGroupMemberDao$PendingGroupMemberAndContact;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getGroup()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lio/olvid/messenger/databases/entity/Group;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lio/olvid/messenger/viewModels/GroupDetailsViewModel;->group:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public getGroupMembers()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/dao/ContactGroupJoinDao$ContactAndTimestamp;",
            ">;>;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lio/olvid/messenger/viewModels/GroupDetailsViewModel;->groupMembers:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public getPendingGroupMembers()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/dao/PendingGroupMemberDao$PendingGroupMemberAndContact;",
            ">;>;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lio/olvid/messenger/viewModels/GroupDetailsViewModel;->pendingGroupMembers:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public setGroup([B[B)V
    .locals 1

    .line 25
    iput-object p1, p0, Lio/olvid/messenger/viewModels/GroupDetailsViewModel;->bytesOwnedIdentity:[B

    .line 26
    iput-object p2, p0, Lio/olvid/messenger/viewModels/GroupDetailsViewModel;->groupId:[B

    .line 27
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->groupDao()Lio/olvid/messenger/databases/dao/GroupDao;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/olvid/messenger/databases/dao/GroupDao;->getLiveData([B[B)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/messenger/viewModels/GroupDetailsViewModel;->group:Landroidx/lifecycle/LiveData;

    .line 28
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->contactGroupJoinDao()Lio/olvid/messenger/databases/dao/ContactGroupJoinDao;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao;->getGroupContactsWithTimestamp([B[B)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/messenger/viewModels/GroupDetailsViewModel;->groupMembers:Landroidx/lifecycle/LiveData;

    .line 29
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->pendingGroupMemberDao()Lio/olvid/messenger/databases/dao/PendingGroupMemberDao;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/olvid/messenger/databases/dao/PendingGroupMemberDao;->getGroupPendingMemberAndContactsLiveData([B[B)Landroidx/lifecycle/LiveData;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/messenger/viewModels/GroupDetailsViewModel;->pendingGroupMembers:Landroidx/lifecycle/LiveData;

    return-void
.end method
