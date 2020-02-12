.class public Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsOperation;
.super Lio/olvid/engine/datatypes/Operation;
.source "UploadMessageAndGetUidsOperation.java"


# instance fields
.field private final messageUid:Lio/olvid/engine/datatypes/UID;

.field private final sendManagerSessionFactory:Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;


# direct methods
.method public constructor <init>(Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;Lio/olvid/engine/datatypes/UID;)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p2, v0, v0}, Lio/olvid/engine/datatypes/Operation;-><init>(Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Operation$OnFinishCallback;Lio/olvid/engine/datatypes/Operation$OnCancelCallback;)V

    .line 24
    iput-object p1, p0, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsOperation;->sendManagerSessionFactory:Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;

    .line 25
    iput-object p2, p0, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsOperation;->messageUid:Lio/olvid/engine/datatypes/UID;

    return-void
.end method


# virtual methods
.method public doCancel()V
    .locals 0

    return-void
.end method

.method public doExecute()V
    .locals 13

    .line 42
    :try_start_0
    iget-object v0, p0, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsOperation;->sendManagerSessionFactory:Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;

    invoke-interface {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;->getSession()Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    .line 44
    :try_start_1
    iget-object v2, p0, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsOperation;->messageUid:Lio/olvid/engine/datatypes/UID;

    invoke-static {v0, v2}, Lio/olvid/engine/networksend/databases/OutboxMessage;->get(Lio/olvid/engine/networksend/datatypes/SendManagerSession;Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/networksend/databases/OutboxMessage;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    .line 47
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    :try_start_2
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    invoke-virtual {p0, v1}, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsOperation;->cancel(Ljava/lang/Integer;)V

    .line 115
    :cond_0
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsOperation;->processCancel()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_1

    .line 118
    :try_start_3
    invoke-virtual {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    return-void

    .line 54
    :cond_2
    :try_start_4
    invoke-virtual {v2}, Lio/olvid/engine/networksend/databases/OutboxMessage;->getUidFromServer()Lio/olvid/engine/datatypes/UID;

    move-result-object v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_4

    .line 109
    :try_start_5
    iget-object v1, v0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Session;->commit()V

    .line 110
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsOperation;->setFinished()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_3

    .line 118
    :try_start_6
    invoke-virtual {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_3
    return-void

    .line 58
    :cond_4
    :try_start_7
    invoke-virtual {v2}, Lio/olvid/engine/networksend/databases/OutboxMessage;->getProofOfWorkEncodedSolution()Lio/olvid/engine/encoder/Encoded;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Lio/olvid/engine/networksend/databases/OutboxMessage;->getProofOfWorkUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v3

    if-nez v3, :cond_6

    :cond_5
    const/4 v3, 0x5

    .line 59
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsOperation;->cancel(Ljava/lang/Integer;)V

    .line 64
    :cond_6
    invoke-virtual {v2}, Lio/olvid/engine/networksend/databases/OutboxMessage;->getHeaders()[Lio/olvid/engine/networksend/databases/MessageHeader;

    move-result-object v10

    .line 66
    invoke-virtual {v2}, Lio/olvid/engine/networksend/databases/OutboxMessage;->getAttachments()[Lio/olvid/engine/networksend/databases/OutboxAttachment;

    move-result-object v3

    .line 68
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsOperation;->cancelWasRequested()Z

    move-result v4
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v4, :cond_9

    .line 112
    :try_start_8
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 113
    invoke-virtual {p0, v1}, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsOperation;->cancel(Ljava/lang/Integer;)V

    .line 115
    :cond_7
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsOperation;->processCancel()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v0, :cond_8

    .line 118
    :try_start_9
    invoke-virtual {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_9
    .catch Ljava/sql/SQLException; {:try_start_9 .. :try_end_9} :catch_1

    :cond_8
    return-void

    .line 72
    :cond_9
    :try_start_a
    new-instance v12, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsServerMethod;

    .line 73
    invoke-virtual {v2}, Lio/olvid/engine/networksend/databases/OutboxMessage;->getServer()Ljava/lang/String;

    move-result-object v5

    .line 74
    invoke-virtual {v2}, Lio/olvid/engine/networksend/databases/OutboxMessage;->getProofOfWorkUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v6

    .line 75
    invoke-virtual {v2}, Lio/olvid/engine/networksend/databases/OutboxMessage;->getProofOfWorkEncodedSolution()Lio/olvid/engine/encoder/Encoded;

    move-result-object v7

    .line 76
    invoke-virtual {v2}, Lio/olvid/engine/networksend/databases/OutboxMessage;->getEncryptedContent()Lio/olvid/engine/datatypes/EncryptedBytes;

    move-result-object v8

    .line 77
    invoke-virtual {v2}, Lio/olvid/engine/networksend/databases/OutboxMessage;->isApplicationMessageWithUserContent()Z

    move-result v9

    move-object v4, v12

    move-object v11, v3

    invoke-direct/range {v4 .. v11}, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsServerMethod;-><init>(Ljava/lang/String;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/encoder/Encoded;Lio/olvid/engine/datatypes/EncryptedBytes;Z[Lio/olvid/engine/networksend/databases/MessageHeader;[Lio/olvid/engine/networksend/databases/OutboxAttachment;)V

    .line 81
    invoke-virtual {v12}, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsServerMethod;->execute()B

    move-result v4

    .line 83
    iget-object v5, v0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v5}, Lio/olvid/engine/datatypes/Session;->startTransaction()V

    const/4 v5, -0x1

    if-eq v4, v5, :cond_11

    if-eqz v4, :cond_e

    const/4 v2, 0x2

    if-eq v4, v2, :cond_b

    const/4 v2, 0x3

    .line 102
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 112
    :try_start_b
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 113
    invoke-virtual {p0, v1}, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsOperation;->cancel(Ljava/lang/Integer;)V

    .line 115
    :cond_a
    :goto_0
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsOperation;->processCancel()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_2

    :cond_b
    const/4 v2, 0x4

    .line 94
    :try_start_c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 112
    :try_start_d
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 113
    invoke-virtual {p0, v1}, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsOperation;->cancel(Ljava/lang/Integer;)V

    .line 115
    :cond_c
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsOperation;->processCancel()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    if-eqz v0, :cond_d

    .line 118
    :try_start_e
    invoke-virtual {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_e
    .catch Ljava/sql/SQLException; {:try_start_e .. :try_end_e} :catch_1

    :cond_d
    return-void

    .line 86
    :cond_e
    :try_start_f
    invoke-virtual {v12}, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsServerMethod;->getUidFromServer()Lio/olvid/engine/datatypes/UID;

    move-result-object v4

    invoke-virtual {v12}, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsServerMethod;->getTimestampFromServer()J

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Lio/olvid/engine/networksend/databases/OutboxMessage;->setUidFromServer(Lio/olvid/engine/datatypes/UID;J)V

    .line 87
    invoke-virtual {v12}, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsServerMethod;->getAttachmentChunkUploadPrivateUrls()[[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    .line 88
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_f

    .line 89
    aget-object v5, v3, v4

    aget-object v6, v2, v4

    invoke-virtual {v5, v6}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->setChunkUploadPrivateUrls([Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 109
    :cond_f
    :try_start_10
    iget-object v1, v0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Session;->commit()V

    .line 110
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsOperation;->setFinished()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    if-eqz v0, :cond_10

    .line 118
    :try_start_11
    invoke-virtual {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_11
    .catch Ljava/sql/SQLException; {:try_start_11 .. :try_end_11} :catch_1

    :cond_10
    return-void

    .line 97
    :cond_11
    :try_start_12
    invoke-virtual {v2}, Lio/olvid/engine/networksend/databases/OutboxMessage;->removeProofOfWork()V

    .line 98
    iget-object v2, v0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Session;->commit()V

    const/4 v2, 0x6

    .line 99
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 112
    :try_start_13
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 113
    invoke-virtual {p0, v1}, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsOperation;->cancel(Ljava/lang/Integer;)V

    .line 115
    :cond_12
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsOperation;->processCancel()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    if-eqz v0, :cond_13

    .line 118
    :try_start_14
    invoke-virtual {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_14
    .catch Ljava/sql/SQLException; {:try_start_14 .. :try_end_14} :catch_1

    :cond_13
    return-void

    :catchall_0
    move-exception v2

    goto :goto_3

    :catch_0
    move-exception v2

    .line 105
    :try_start_15
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    iget-object v2, v0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Session;->rollback()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 112
    :try_start_16
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 113
    invoke-virtual {p0, v1}, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    goto/16 :goto_0

    :goto_2
    if-eqz v0, :cond_16

    .line 118
    :try_start_17
    invoke-virtual {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_17
    .catch Ljava/sql/SQLException; {:try_start_17 .. :try_end_17} :catch_1

    goto :goto_5

    .line 112
    :goto_3
    :try_start_18
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsOperation;->hasNoReasonForCancel()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 113
    invoke-virtual {p0, v1}, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsOperation;->cancel(Ljava/lang/Integer;)V

    .line 115
    :cond_14
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsOperation;->processCancel()V

    .line 117
    throw v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    :catchall_1
    move-exception v1

    .line 42
    :try_start_19
    throw v1
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    :catchall_2
    move-exception v2

    if-eqz v0, :cond_15

    .line 118
    :try_start_1a
    invoke-virtual {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    :try_start_1b
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_15
    :goto_4
    throw v2
    :try_end_1b
    .catch Ljava/sql/SQLException; {:try_start_1b .. :try_end_1b} :catch_1

    :catch_1
    move-exception v0

    .line 119
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    :cond_16
    :goto_5
    return-void
.end method

.method public getMessageUid()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 29
    iget-object v0, p0, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsOperation;->messageUid:Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method
