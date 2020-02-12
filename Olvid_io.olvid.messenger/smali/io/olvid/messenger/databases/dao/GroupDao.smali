.class public interface abstract Lio/olvid/messenger/databases/dao/GroupDao;
.super Ljava/lang/Object;
.source "GroupDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/messenger/databases/dao/GroupDao$GroupAndContactDisplayNames;
    }
.end annotation


# virtual methods
.method public abstract delete(Lio/olvid/messenger/databases/entity/Group;)V
.end method

.method public abstract get([B[B)Lio/olvid/messenger/databases/entity/Group;
.end method

.method public abstract getAllOwnedThenJoined([BLjava/lang/String;)Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/dao/GroupDao$GroupAndContactDisplayNames;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getAllSync()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Group;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBytesGroupOwnerAndUidOfJoinedGroupWithPendingMember([B[B)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end method

.method public abstract getLiveData([B[B)Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Landroidx/lifecycle/LiveData<",
            "Lio/olvid/messenger/databases/entity/Group;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insert(Lio/olvid/messenger/databases/entity/Group;)V
.end method

.method public abstract update(Lio/olvid/messenger/databases/entity/Group;)V
.end method
