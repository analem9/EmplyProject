.class public Lio/olvid/engine/networksend/operations/CancelAttachmentUploadOperation;
.super Lio/olvid/engine/datatypes/Operation;
.source "CancelAttachmentUploadOperation.java"


# instance fields
.field private final attachmentNumber:I

.field private final messageUid:Lio/olvid/engine/datatypes/UID;

.field private final sendManagerSessionFactory:Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;


# direct methods
.method public constructor <init>(Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;Lio/olvid/engine/datatypes/UID;I)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p2, v0, v0}, Lio/olvid/engine/datatypes/Operation;-><init>(Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Operation$OnFinishCallback;Lio/olvid/engine/datatypes/Operation$OnCancelCallback;)V

    .line 26
    iput-object p1, p0, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadOperation;->sendManagerSessionFactory:Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;

    .line 27
    iput-object p2, p0, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadOperation;->messageUid:Lio/olvid/engine/datatypes/UID;

    .line 28
    iput p3, p0, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadOperation;->attachmentNumber:I

    return-void
.end method


# virtual methods
.method public doCancel()V
    .locals 0

    return-void
.end method

.method public doExecute()V
    .locals 7

    .line 47
    :try_start_0
    iget-object v0, p0, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadOperation;->sendManagerSessionFactory:Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;

    invoke-interface {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;->getSession()Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    .line 49
    :try_start_1
    iget-object v2, p0, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadOperation;->messageUid:Lio/olvid/engine/datatypes/UID;

    invoke-static {v0, v2}, Lio/olvid/engine/networksend/databases/OutboxMessage;->get(Lio/olvid/engine/networksend/datatypes/SendManagerSession;Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/networksend/databases/OutboxMessage;

    move-result-object v2

    .line 50
    iget-object v3, p0, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadOperation;->messageUid:Lio/olvid/engine/datatypes/UID;

    iget v4, p0, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadOperation;->attachmentNumber:I

    invoke-static {v0, v3, v4}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->get(Lio/olvid/engine/networksend/datatypes/SendManagerSession;Lio/olvid/engine/datatypes/UID;I)Lio/olvid/engine/networksend/databases/OutboxAttachment;

    move-result-object v3

    if-eqz v2, :cond_9

    if-nez v3, :cond_0

    goto :goto_1

    .line 56
    :cond_0
    invoke-virtual {v2}, Lio/olvid/engine/networksend/databases/OutboxMessage;->getUidFromServer()Lio/olvid/engine/datatypes/UID;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_2

    .line 86
    :try_start_2
    iget-object v1, v0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Session;->commit()V

    .line 87
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadOperation;->setFinished()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_1

    .line 95
    :try_start_3
    invoke-virtual {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    return-void

    .line 61
    :cond_2
    :try_start_4
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadOperation;->cancelWasRequested()Z

    move-result v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_5

    .line 89
    :try_start_5
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 90
    invoke-virtual {p0, v1}, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadOperation;->cancel(Ljava/lang/Integer;)V

    .line 92
    :cond_3
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadOperation;->processCancel()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_4

    .line 95
    :try_start_6
    invoke-virtual {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_4
    return-void

    .line 65
    :cond_5
    :try_start_7
    new-instance v4, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadServerMethod;

    .line 66
    invoke-virtual {v2}, Lio/olvid/engine/networksend/databases/OutboxMessage;->getServer()Ljava/lang/String;

    move-result-object v5

    .line 67
    invoke-virtual {v2}, Lio/olvid/engine/networksend/databases/OutboxMessage;->getUidFromServer()Lio/olvid/engine/datatypes/UID;

    move-result-object v2

    iget v6, p0, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadOperation;->attachmentNumber:I

    invoke-direct {v4, v5, v2, v6}, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadServerMethod;-><init>(Ljava/lang/String;Lio/olvid/engine/datatypes/UID;I)V

    .line 70
    invoke-virtual {v4}, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadServerMethod;->execute()B

    move-result v2

    .line 72
    iget-object v4, v0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v4}, Lio/olvid/engine/datatypes/Session;->startTransaction()V

    if-eqz v2, :cond_7

    const/4 v2, 0x3

    .line 79
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 89
    :try_start_8
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 90
    invoke-virtual {p0, v1}, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadOperation;->cancel(Ljava/lang/Integer;)V

    .line 92
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadOperation;->processCancel()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2

    .line 75
    :cond_7
    :try_start_9
    invoke-virtual {v3}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->setCancelProcessed()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 86
    :try_start_a
    iget-object v1, v0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Session;->commit()V

    .line 87
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadOperation;->setFinished()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v0, :cond_8

    .line 95
    :try_start_b
    invoke-virtual {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_b
    .catch Ljava/sql/SQLException; {:try_start_b .. :try_end_b} :catch_1

    :cond_8
    return-void

    :cond_9
    :goto_1
    const/4 v2, 0x1

    .line 53
    :try_start_c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 89
    :try_start_d
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 90
    invoke-virtual {p0, v1}, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadOperation;->cancel(Ljava/lang/Integer;)V

    .line 92
    :cond_a
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadOperation;->processCancel()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    if-eqz v0, :cond_b

    .line 95
    :try_start_e
    invoke-virtual {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_e
    .catch Ljava/sql/SQLException; {:try_start_e .. :try_end_e} :catch_1

    :cond_b
    return-void

    :catchall_0
    move-exception v2

    goto :goto_3

    :catch_0
    move-exception v2

    .line 82
    :try_start_f
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    iget-object v2, v0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Session;->rollback()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 89
    :try_start_10
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 90
    invoke-virtual {p0, v1}, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto :goto_0

    :goto_2
    if-eqz v0, :cond_e

    .line 95
    :try_start_11
    invoke-virtual {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_11
    .catch Ljava/sql/SQLException; {:try_start_11 .. :try_end_11} :catch_1

    goto :goto_5

    .line 89
    :goto_3
    :try_start_12
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadOperation;->hasNoReasonForCancel()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 90
    invoke-virtual {p0, v1}, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadOperation;->cancel(Ljava/lang/Integer;)V

    .line 92
    :cond_c
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadOperation;->processCancel()V

    .line 94
    throw v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    :catchall_1
    move-exception v1

    .line 47
    :try_start_13
    throw v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    :catchall_2
    move-exception v2

    if-eqz v0, :cond_d

    .line 95
    :try_start_14
    invoke-virtual {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    :try_start_15
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_d
    :goto_4
    throw v2
    :try_end_15
    .catch Ljava/sql/SQLException; {:try_start_15 .. :try_end_15} :catch_1

    :catch_1
    move-exception v0

    .line 96
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    :cond_e
    :goto_5
    return-void
.end method

.method public getAttachmentNumber()I
    .locals 1

    .line 35
    iget v0, p0, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadOperation;->attachmentNumber:I

    return v0
.end method

.method public getMessageUid()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 32
    iget-object v0, p0, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadOperation;->messageUid:Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method
