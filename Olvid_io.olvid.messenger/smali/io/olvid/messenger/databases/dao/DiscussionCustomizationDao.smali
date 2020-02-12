.class public interface abstract Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao;
.super Ljava/lang/Object;
.source "DiscussionCustomizationDao.java"


# virtual methods
.method public abstract delete(Lio/olvid/messenger/databases/entity/DiscussionCustomization;)V
.end method

.method public abstract get(J)Lio/olvid/messenger/databases/entity/DiscussionCustomization;
.end method

.method public abstract getLiveData(J)Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroidx/lifecycle/LiveData<",
            "Lio/olvid/messenger/databases/entity/DiscussionCustomization;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insert(Lio/olvid/messenger/databases/entity/DiscussionCustomization;)J
.end method

.method public abstract update(Lio/olvid/messenger/databases/entity/DiscussionCustomization;)V
.end method
