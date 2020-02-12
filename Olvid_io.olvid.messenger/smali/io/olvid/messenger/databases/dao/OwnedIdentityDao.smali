.class public interface abstract Lio/olvid/messenger/databases/dao/OwnedIdentityDao;
.super Ljava/lang/Object;
.source "OwnedIdentityDao.java"


# virtual methods
.method public abstract delete(Lio/olvid/messenger/databases/entity/OwnedIdentity;)V
.end method

.method public abstract get([B)Lio/olvid/messenger/databases/entity/OwnedIdentity;
.end method

.method public abstract getAll()Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/OwnedIdentity;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getAllSync()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/OwnedIdentity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insert(Lio/olvid/messenger/databases/entity/OwnedIdentity;)V
.end method

.method public abstract update(Lio/olvid/messenger/databases/entity/OwnedIdentity;)V
.end method
