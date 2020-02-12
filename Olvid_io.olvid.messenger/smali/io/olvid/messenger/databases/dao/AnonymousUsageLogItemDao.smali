.class public interface abstract Lio/olvid/messenger/databases/dao/AnonymousUsageLogItemDao;
.super Ljava/lang/Object;
.source "AnonymousUsageLogItemDao.java"


# virtual methods
.method public abstract delete(Lio/olvid/messenger/databases/entity/AnonymousUsageLogItem;)V
.end method

.method public abstract deleteMany(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/AnonymousUsageLogItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getAll()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/AnonymousUsageLogItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insert(Lio/olvid/messenger/databases/entity/AnonymousUsageLogItem;)V
.end method
