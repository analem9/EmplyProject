.class public interface abstract Lio/olvid/messenger/databases/dao/InvitationDao;
.super Ljava/lang/Object;
.source "InvitationDao.java"


# virtual methods
.method public varargs abstract delete([Lio/olvid/messenger/databases/entity/Invitation;)V
.end method

.method public abstract getAll([B)Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Invitation;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getByDialogUuid(Ljava/util/UUID;)Lio/olvid/messenger/databases/entity/Invitation;
.end method

.method public varargs abstract insert([Lio/olvid/messenger/databases/entity/Invitation;)V
.end method
