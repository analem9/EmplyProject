.class public Lio/olvid/messenger/databases/tasks/DeleteAttachmentTask;
.super Ljava/lang/Object;
.source "DeleteAttachmentTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final fyleAndStatus:Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;


# direct methods
.method public constructor <init>(Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lio/olvid/messenger/databases/tasks/DeleteAttachmentTask;->fyleAndStatus:Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 22
    iget-object v0, p0, Lio/olvid/messenger/databases/tasks/DeleteAttachmentTask;->fyleAndStatus:Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    iget-object v0, v0, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyleMessageJoinWithStatus:Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    iget v0, v0, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->status:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object v0

    iget-object v2, p0, Lio/olvid/messenger/databases/tasks/DeleteAttachmentTask;->fyleAndStatus:Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    iget-object v2, v2, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyleMessageJoinWithStatus:Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    iget-object v2, v2, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->engineMessageIdentifier:[B

    iget-object v3, p0, Lio/olvid/messenger/databases/tasks/DeleteAttachmentTask;->fyleAndStatus:Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    iget-object v3, v3, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyleMessageJoinWithStatus:Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    iget-object v3, v3, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->engineNumber:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lio/olvid/engine/engine/Engine;->cancelAttachmentUpload([BI)V

    goto :goto_0

    .line 25
    :cond_1
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object v0

    iget-object v2, p0, Lio/olvid/messenger/databases/tasks/DeleteAttachmentTask;->fyleAndStatus:Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    iget-object v2, v2, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyleMessageJoinWithStatus:Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    iget-object v2, v2, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->engineMessageIdentifier:[B

    iget-object v3, p0, Lio/olvid/messenger/databases/tasks/DeleteAttachmentTask;->fyleAndStatus:Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    iget-object v3, v3, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyleMessageJoinWithStatus:Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    iget-object v3, v3, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->engineNumber:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lio/olvid/engine/engine/Engine;->deleteAttachment([BI)V

    .line 31
    :goto_0
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->fyleMessageJoinWithStatusDao()Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/messenger/databases/tasks/DeleteAttachmentTask;->fyleAndStatus:Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    iget-object v3, v3, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyle:Lio/olvid/messenger/databases/entity/Fyle;

    iget-wide v3, v3, Lio/olvid/messenger/databases/entity/Fyle;->id:J

    invoke-interface {v2, v3, v4}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;->getMessageIdsForFyleSync(J)Ljava/util/List;

    move-result-object v2

    .line 33
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v1, :cond_2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v5, p0, Lio/olvid/messenger/databases/tasks/DeleteAttachmentTask;->fyleAndStatus:Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    iget-object v5, v5, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyleMessageJoinWithStatus:Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    iget-wide v5, v5, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->messageId:J

    cmp-long v7, v2, v5

    if-nez v7, :cond_2

    goto :goto_1

    .line 38
    :cond_2
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->fyleMessageJoinWithStatusDao()Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/messenger/databases/tasks/DeleteAttachmentTask;->fyleAndStatus:Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    iget-object v3, v3, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyleMessageJoinWithStatus:Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    invoke-interface {v2, v3}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;->delete(Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;)V

    goto :goto_2

    .line 34
    :cond_3
    :goto_1
    iget-object v2, p0, Lio/olvid/messenger/databases/tasks/DeleteAttachmentTask;->fyleAndStatus:Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    iget-object v2, v2, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyle:Lio/olvid/messenger/databases/entity/Fyle;

    iget-object v2, v2, Lio/olvid/messenger/databases/entity/Fyle;->sha256:[B

    invoke-static {v2}, Lio/olvid/messenger/databases/entity/Fyle;->acquireLock([B)V

    .line 35
    iget-object v2, p0, Lio/olvid/messenger/databases/tasks/DeleteAttachmentTask;->fyleAndStatus:Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    iget-object v2, v2, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyle:Lio/olvid/messenger/databases/entity/Fyle;

    invoke-virtual {v2}, Lio/olvid/messenger/databases/entity/Fyle;->delete()V

    .line 36
    iget-object v2, p0, Lio/olvid/messenger/databases/tasks/DeleteAttachmentTask;->fyleAndStatus:Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    iget-object v2, v2, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyle:Lio/olvid/messenger/databases/entity/Fyle;

    iget-object v2, v2, Lio/olvid/messenger/databases/entity/Fyle;->sha256:[B

    invoke-static {v2}, Lio/olvid/messenger/databases/entity/Fyle;->releaseLock([B)V

    .line 41
    :goto_2
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/messenger/databases/tasks/DeleteAttachmentTask;->fyleAndStatus:Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    iget-object v3, v3, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyleMessageJoinWithStatus:Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    iget-wide v5, v3, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->messageId:J

    invoke-interface {v2, v5, v6}, Lio/olvid/messenger/databases/dao/MessageDao;->get(J)Lio/olvid/messenger/databases/entity/Message;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 45
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->fyleMessageJoinWithStatusDao()Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;

    move-result-object v3

    iget-wide v5, v2, Lio/olvid/messenger/databases/entity/Message;->id:J

    invoke-interface {v3, v5, v6}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;->getStatusForMessage(J)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    .line 46
    sget-object v8, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->imageAndVideoPattern:Ljava/util/regex/Pattern;

    iget-object v7, v7, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->mimeType:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_4

    add-int/lit8 v6, v6, 0x1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 51
    :cond_5
    iput v5, v2, Lio/olvid/messenger/databases/entity/Message;->totalAttachmentCount:I

    .line 52
    iput v6, v2, Lio/olvid/messenger/databases/entity/Message;->imageCount:I

    .line 53
    invoke-virtual {v2}, Lio/olvid/messenger/databases/entity/Message;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 54
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v0

    new-array v1, v1, [Lio/olvid/messenger/databases/entity/Message;

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lio/olvid/messenger/databases/dao/MessageDao;->delete([Lio/olvid/messenger/databases/entity/Message;)V

    goto :goto_4

    .line 56
    :cond_6
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v0

    invoke-interface {v0, v2}, Lio/olvid/messenger/databases/dao/MessageDao;->update(Lio/olvid/messenger/databases/entity/Message;)V

    :cond_7
    :goto_4
    return-void
.end method
