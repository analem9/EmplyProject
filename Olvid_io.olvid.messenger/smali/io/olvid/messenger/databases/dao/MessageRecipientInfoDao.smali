.class public interface abstract Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao;
.super Ljava/lang/Object;
.source "MessageRecipientInfoDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao$MessageRecipientInfoAndMessage;
    }
.end annotation


# virtual methods
.method public varargs abstract delete([Lio/olvid/messenger/databases/entity/MessageRecipientInfo;)V
.end method

.method public abstract get(J[B)Lio/olvid/messenger/databases/entity/MessageRecipientInfo;
.end method

.method public abstract getAllByEngineMessageIdentifier([B)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/MessageRecipientInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllByMessageId(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/MessageRecipientInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllByMessageIdLiveAndSorted(J)Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/MessageRecipientInfo;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getAllNotProcessedByContactIdentity([B[B)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao$MessageRecipientInfoAndMessage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllNotSentByMessageId(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/MessageRecipientInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFromReturnReceipt([B[B[B)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[B)",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/MessageRecipientInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getReturnReceiptKeysForNonce([B)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end method

.method public varargs abstract insert([Lio/olvid/messenger/databases/entity/MessageRecipientInfo;)V
.end method

.method public varargs abstract update([Lio/olvid/messenger/databases/entity/MessageRecipientInfo;)V
.end method
