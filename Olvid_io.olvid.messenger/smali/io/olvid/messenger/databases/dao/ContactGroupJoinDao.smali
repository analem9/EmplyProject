.class public interface abstract Lio/olvid/messenger/databases/dao/ContactGroupJoinDao;
.super Ljava/lang/Object;
.source "ContactGroupJoinDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/messenger/databases/dao/ContactGroupJoinDao$ContactAndTimestamp;
    }
.end annotation


# virtual methods
.method public abstract countContactGroups([B[B)Ljava/lang/Long;
.end method

.method public abstract delete(Lio/olvid/messenger/databases/entity/ContactGroupJoin;)V
.end method

.method public abstract get([B[B[B)Lio/olvid/messenger/databases/entity/ContactGroupJoin;
.end method

.method public abstract getGroupContacts([B[B)Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Contact;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getGroupContactsSync([B[B)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Contact;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGroupContactsWithTimestamp([B[B)Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/dao/ContactGroupJoinDao$ContactAndTimestamp;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract insert(Lio/olvid/messenger/databases/entity/ContactGroupJoin;)V
.end method
