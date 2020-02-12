.class public Lio/olvid/engine/networksend/operations/RefreshOutboxAttachmentSignedUrlOperation;
.super Lio/olvid/engine/datatypes/Operation;
.source "RefreshOutboxAttachmentSignedUrlOperation.java"


# static fields
.field public static final RFC_ATTACHMENT_NOT_FOUND:I = 0x2

.field public static final RFC_DELETED_FROM_SERVER:I = 0x3

.field public static final RFC_NETWORK_ERROR:I = 0x1


# instance fields
.field private final attachmentNumber:I

.field private final messageUid:Lio/olvid/engine/datatypes/UID;

.field private final sendManagerSessionFactory:Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;


# direct methods
.method public constructor <init>(Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;Lio/olvid/engine/datatypes/UID;ILio/olvid/engine/datatypes/Operation$OnFinishCallback;Lio/olvid/engine/datatypes/Operation$OnCancelCallback;)V
    .locals 1

    .line 25
    invoke-static {p2, p3}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->computeUniqueUid(Lio/olvid/engine/datatypes/UID;I)Lio/olvid/engine/datatypes/UID;

    move-result-object v0

    invoke-direct {p0, v0, p4, p5}, Lio/olvid/engine/datatypes/Operation;-><init>(Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Operation$OnFinishCallback;Lio/olvid/engine/datatypes/Operation$OnCancelCallback;)V

    .line 26
    iput-object p1, p0, Lio/olvid/engine/networksend/operations/RefreshOutboxAttachmentSignedUrlOperation;->sendManagerSessionFactory:Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;

    .line 27
    iput-object p2, p0, Lio/olvid/engine/networksend/operations/RefreshOutboxAttachmentSignedUrlOperation;->messageUid:Lio/olvid/engine/datatypes/UID;

    .line 28
    iput p3, p0, Lio/olvid/engine/networksend/operations/RefreshOutboxAttachmentSignedUrlOperation;->attachmentNumber:I

    return-void
.end method


# virtual methods
.method public doCancel()V
    .locals 0

    return-void
.end method

.method public doExecute()V
    .locals 8

    .line 49
    :try_start_0
    iget-object v0, p0, Lio/olvid/engine/networksend/operations/RefreshOutboxAttachmentSignedUrlOperation;->sendManagerSessionFactory:Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;

    invoke-interface {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;->getSession()Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    .line 51
    :try_start_1
    iget-object v2, p0, Lio/olvid/engine/networksend/operations/RefreshOutboxAttachmentSignedUrlOperation;->messageUid:Lio/olvid/engine/datatypes/UID;

    iget v3, p0, Lio/olvid/engine/networksend/operations/RefreshOutboxAttachmentSignedUrlOperation;->attachmentNumber:I

    invoke-static {v0, v2, v3}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->get(Lio/olvid/engine/networksend/datatypes/SendManagerSession;Lio/olvid/engine/datatypes/UID;I)Lio/olvid/engine/networksend/databases/OutboxAttachment;

    move-result-object v2

    const/4 v3, 0x2

    if-nez v2, :cond_2

    .line 54
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/networksend/operations/RefreshOutboxAttachmentSignedUrlOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    :try_start_2
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/RefreshOutboxAttachmentSignedUrlOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    invoke-virtual {p0, v1}, Lio/olvid/engine/networksend/operations/RefreshOutboxAttachmentSignedUrlOperation;->cancel(Ljava/lang/Integer;)V

    .line 100
    :cond_0
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/RefreshOutboxAttachmentSignedUrlOperation;->processCancel()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_1

    .line 103
    :try_start_3
    invoke-virtual {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    return-void

    .line 57
    :cond_2
    :try_start_4
    invoke-virtual {v2}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->getMessageUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v4

    invoke-static {v0, v4}, Lio/olvid/engine/networksend/databases/OutboxMessage;->get(Lio/olvid/engine/networksend/datatypes/SendManagerSession;Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/networksend/databases/OutboxMessage;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 58
    invoke-virtual {v4}, Lio/olvid/engine/networksend/databases/OutboxMessage;->getUidFromServer()Lio/olvid/engine/datatypes/UID;

    move-result-object v5

    if-nez v5, :cond_3

    goto/16 :goto_0

    .line 63
    :cond_3
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/RefreshOutboxAttachmentSignedUrlOperation;->cancelWasRequested()Z

    move-result v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_6

    .line 97
    :try_start_5
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/RefreshOutboxAttachmentSignedUrlOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 98
    invoke-virtual {p0, v1}, Lio/olvid/engine/networksend/operations/RefreshOutboxAttachmentSignedUrlOperation;->cancel(Ljava/lang/Integer;)V

    .line 100
    :cond_4
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/RefreshOutboxAttachmentSignedUrlOperation;->processCancel()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_5

    .line 103
    :try_start_6
    invoke-virtual {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_5
    return-void

    .line 67
    :cond_6
    :try_start_7
    new-instance v3, Lio/olvid/engine/networksend/operations/RefreshOutboxAttachmentSignedUrlServerMethod;

    .line 68
    invoke-virtual {v4}, Lio/olvid/engine/networksend/databases/OutboxMessage;->getServer()Ljava/lang/String;

    move-result-object v5

    .line 69
    invoke-virtual {v4}, Lio/olvid/engine/networksend/databases/OutboxMessage;->getUidFromServer()Lio/olvid/engine/datatypes/UID;

    move-result-object v4

    iget v6, p0, Lio/olvid/engine/networksend/operations/RefreshOutboxAttachmentSignedUrlOperation;->attachmentNumber:I

    .line 71
    invoke-virtual {v2}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->getNumberOfChunks()I

    move-result v7

    invoke-direct {v3, v5, v4, v6, v7}, Lio/olvid/engine/networksend/operations/RefreshOutboxAttachmentSignedUrlServerMethod;-><init>(Ljava/lang/String;Lio/olvid/engine/datatypes/UID;II)V

    .line 74
    invoke-virtual {v3}, Lio/olvid/engine/networksend/operations/RefreshOutboxAttachmentSignedUrlServerMethod;->execute()B

    move-result v4

    .line 76
    iget-object v5, v0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v5}, Lio/olvid/engine/datatypes/Session;->startTransaction()V

    if-eqz v4, :cond_c

    const/16 v2, 0x9

    if-eq v4, v2, :cond_9

    const/4 v2, 0x1

    .line 86
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/networksend/operations/RefreshOutboxAttachmentSignedUrlOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 97
    :try_start_8
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/RefreshOutboxAttachmentSignedUrlOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 98
    invoke-virtual {p0, v1}, Lio/olvid/engine/networksend/operations/RefreshOutboxAttachmentSignedUrlOperation;->cancel(Ljava/lang/Integer;)V

    .line 100
    :cond_7
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/RefreshOutboxAttachmentSignedUrlOperation;->processCancel()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v0, :cond_8

    .line 103
    :try_start_9
    invoke-virtual {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_9
    .catch Ljava/sql/SQLException; {:try_start_9 .. :try_end_9} :catch_1

    :cond_8
    return-void

    :cond_9
    const/4 v2, 0x3

    .line 83
    :try_start_a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/networksend/operations/RefreshOutboxAttachmentSignedUrlOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 97
    :try_start_b
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/RefreshOutboxAttachmentSignedUrlOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 98
    invoke-virtual {p0, v1}, Lio/olvid/engine/networksend/operations/RefreshOutboxAttachmentSignedUrlOperation;->cancel(Ljava/lang/Integer;)V

    .line 100
    :cond_a
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/RefreshOutboxAttachmentSignedUrlOperation;->processCancel()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v0, :cond_b

    .line 103
    :try_start_c
    invoke-virtual {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_c
    .catch Ljava/sql/SQLException; {:try_start_c .. :try_end_c} :catch_1

    :cond_b
    return-void

    .line 79
    :cond_c
    :try_start_d
    invoke-virtual {v3}, Lio/olvid/engine/networksend/operations/RefreshOutboxAttachmentSignedUrlServerMethod;->getSignedUrls()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->setChunkUploadPrivateUrls([Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 94
    :try_start_e
    iget-object v1, v0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Session;->commit()V

    .line 95
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/RefreshOutboxAttachmentSignedUrlOperation;->setFinished()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    if-eqz v0, :cond_d

    .line 103
    :try_start_f
    invoke-virtual {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_f
    .catch Ljava/sql/SQLException; {:try_start_f .. :try_end_f} :catch_1

    :cond_d
    return-void

    .line 59
    :cond_e
    :goto_0
    :try_start_10
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/networksend/operations/RefreshOutboxAttachmentSignedUrlOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 97
    :try_start_11
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/RefreshOutboxAttachmentSignedUrlOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 98
    invoke-virtual {p0, v1}, Lio/olvid/engine/networksend/operations/RefreshOutboxAttachmentSignedUrlOperation;->cancel(Ljava/lang/Integer;)V

    .line 100
    :cond_f
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/RefreshOutboxAttachmentSignedUrlOperation;->processCancel()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    if-eqz v0, :cond_10

    .line 103
    :try_start_12
    invoke-virtual {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_12
    .catch Ljava/sql/SQLException; {:try_start_12 .. :try_end_12} :catch_1

    :cond_10
    return-void

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    .line 90
    :try_start_13
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 91
    iget-object v2, v0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Session;->rollback()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 97
    :try_start_14
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/RefreshOutboxAttachmentSignedUrlOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 98
    invoke-virtual {p0, v1}, Lio/olvid/engine/networksend/operations/RefreshOutboxAttachmentSignedUrlOperation;->cancel(Ljava/lang/Integer;)V

    .line 100
    :cond_11
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/RefreshOutboxAttachmentSignedUrlOperation;->processCancel()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    if-eqz v0, :cond_14

    .line 103
    :try_start_15
    invoke-virtual {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_15
    .catch Ljava/sql/SQLException; {:try_start_15 .. :try_end_15} :catch_1

    goto :goto_3

    .line 97
    :goto_1
    :try_start_16
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/RefreshOutboxAttachmentSignedUrlOperation;->hasNoReasonForCancel()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 98
    invoke-virtual {p0, v1}, Lio/olvid/engine/networksend/operations/RefreshOutboxAttachmentSignedUrlOperation;->cancel(Ljava/lang/Integer;)V

    .line 100
    :cond_12
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/RefreshOutboxAttachmentSignedUrlOperation;->processCancel()V

    .line 102
    throw v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    :catchall_1
    move-exception v1

    .line 49
    :try_start_17
    throw v1
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    :catchall_2
    move-exception v2

    if-eqz v0, :cond_13

    .line 103
    :try_start_18
    invoke-virtual {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    :try_start_19
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_13
    :goto_2
    throw v2
    :try_end_19
    .catch Ljava/sql/SQLException; {:try_start_19 .. :try_end_19} :catch_1

    :catch_1
    move-exception v0

    .line 104
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    :cond_14
    :goto_3
    return-void
.end method

.method public getAttachmentNumber()I
    .locals 1

    .line 36
    iget v0, p0, Lio/olvid/engine/networksend/operations/RefreshOutboxAttachmentSignedUrlOperation;->attachmentNumber:I

    return v0
.end method

.method public getMessageUid()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 32
    iget-object v0, p0, Lio/olvid/engine/networksend/operations/RefreshOutboxAttachmentSignedUrlOperation;->messageUid:Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method
