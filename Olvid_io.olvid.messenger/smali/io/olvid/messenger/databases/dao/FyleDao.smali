.class public interface abstract Lio/olvid/messenger/databases/dao/FyleDao;
.super Ljava/lang/Object;
.source "FyleDao.java"


# virtual methods
.method public abstract delete(Lio/olvid/messenger/databases/entity/Fyle;)V
.end method

.method public abstract getById(J)Lio/olvid/messenger/databases/entity/Fyle;
.end method

.method public abstract getBySha256([B)Lio/olvid/messenger/databases/entity/Fyle;
.end method

.method public abstract getDiscussionDraftFyles(J)Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getStray()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Fyle;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insert(Lio/olvid/messenger/databases/entity/Fyle;)J
.end method

.method public abstract update(Lio/olvid/messenger/databases/entity/Fyle;)V
.end method
