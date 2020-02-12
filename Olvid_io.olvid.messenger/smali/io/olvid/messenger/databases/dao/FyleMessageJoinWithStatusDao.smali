.class public interface abstract Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;
.super Ljava/lang/Object;
.source "FyleMessageJoinWithStatusDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;
    }
.end annotation


# virtual methods
.method public abstract countFylesForMessage(J)Ljava/lang/Long;
.end method

.method public abstract countMessageForFyle(J)Ljava/lang/Long;
.end method

.method public abstract delete(Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;)V
.end method

.method public abstract deleteById(JJ)V
.end method

.method public abstract get(JJ)Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;
.end method

.method public abstract getByEngineIdentifierAndNumber([BI)Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;
.end method

.method public abstract getDownloading()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getForFyleId(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFylesAndStatusForMessage(J)Landroidx/lifecycle/LiveData;
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

.method public abstract getFylesAndStatusForMessageSync(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMessageIdsForFyleSync(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStatusForMessage(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUploading()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insert(Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;)V
.end method

.method public abstract update(Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;)V
.end method
