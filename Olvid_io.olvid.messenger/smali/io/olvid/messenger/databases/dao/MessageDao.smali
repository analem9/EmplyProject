.class public interface abstract Lio/olvid/messenger/databases/dao/MessageDao;
.super Ljava/lang/Object;
.source "MessageDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/messenger/databases/dao/MessageDao$UnreadCountAndFirstMessage;
    }
.end annotation


# virtual methods
.method public abstract countMessagesInDiscussion(J)I
.end method

.method public varargs abstract delete([Lio/olvid/messenger/databases/entity/Message;)V
.end method

.method public abstract deleteDiscussionDraftMessage(J)V
.end method

.method public abstract get(J)Lio/olvid/messenger/databases/entity/Message;
.end method

.method public abstract getAllDiscussionMessagesSync(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Message;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllUnreadDiscussionMessagesSync(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Message;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBySenderSequenceNumber(JLjava/util/UUID;[BJ)Lio/olvid/messenger/databases/entity/Message;
.end method

.method public abstract getCountForEngineIdentifier([B)I
.end method

.method public abstract getDiscussionDraftMessage(J)Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroidx/lifecycle/LiveData<",
            "Lio/olvid/messenger/databases/entity/Message;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDiscussionDraftMessageSync(J)Lio/olvid/messenger/databases/entity/Message;
.end method

.method public abstract getDiscussionMaxSortIndex(J)D
.end method

.method public abstract getDiscussionMessages(J)Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Message;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getLive(J)Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroidx/lifecycle/LiveData<",
            "Lio/olvid/messenger/databases/entity/Message;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMany(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Message;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNextMessageBySequenceNumber(JLjava/util/UUID;[BJ)Lio/olvid/messenger/databases/entity/Message;
.end method

.method public abstract getNextSortIndex(DJ)Ljava/lang/Double;
.end method

.method public abstract getPreviousMessageBySequenceNumber(JLjava/util/UUID;[BJ)Lio/olvid/messenger/databases/entity/Message;
.end method

.method public abstract getPreviousSortIndex(DJ)Ljava/lang/Double;
.end method

.method public abstract getProcessingMessages()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Message;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUnprocessedGroupMessages([B[B)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Message;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUnprocessedGroupMessagesForContact([B[B)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Message;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUnprocessedMessages()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Message;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUnprocessedMessagesForContact([B[B)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Message;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUnreadCountAndFirstMessage(J)Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroidx/lifecycle/LiveData<",
            "Lio/olvid/messenger/databases/dao/MessageDao$UnreadCountAndFirstMessage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasUnreadMessages([B)Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insert(Lio/olvid/messenger/databases/entity/Message;)J
.end method

.method public abstract markAllDiscussionMessagesRead(J)V
.end method

.method public abstract markMessagesRead([Ljava/lang/Long;)V
.end method

.method public abstract update(Lio/olvid/messenger/databases/entity/Message;)V
.end method
