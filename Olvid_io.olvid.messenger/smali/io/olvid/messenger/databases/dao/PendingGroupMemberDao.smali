.class public interface abstract Lio/olvid/messenger/databases/dao/PendingGroupMemberDao;
.super Ljava/lang/Object;
.source "PendingGroupMemberDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/messenger/databases/dao/PendingGroupMemberDao$PendingGroupMemberAndContact;
    }
.end annotation


# virtual methods
.method public abstract delete(Lio/olvid/messenger/databases/entity/PendingGroupMember;)V
.end method

.method public abstract get([B[B[B)Lio/olvid/messenger/databases/entity/PendingGroupMember;
.end method

.method public abstract getGroupPendingMemberAndContactsLiveData([B[B)Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/dao/PendingGroupMemberDao$PendingGroupMemberAndContact;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getGroupPendingMembers([B[B)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/PendingGroupMember;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGroupPendingMembersLiveData([B[B)Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/PendingGroupMember;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract insert(Lio/olvid/messenger/databases/entity/PendingGroupMember;)V
.end method

.method public abstract update(Lio/olvid/messenger/databases/entity/PendingGroupMember;)V
.end method
