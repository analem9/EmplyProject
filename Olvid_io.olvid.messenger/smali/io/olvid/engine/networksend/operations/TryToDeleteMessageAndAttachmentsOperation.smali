.class public Lio/olvid/engine/networksend/operations/TryToDeleteMessageAndAttachmentsOperation;
.super Lio/olvid/engine/datatypes/Operation;
.source "TryToDeleteMessageAndAttachmentsOperation.java"


# instance fields
.field private final messageUid:Lio/olvid/engine/datatypes/UID;

.field private final sendManagerSessionFactory:Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;


# direct methods
.method public constructor <init>(Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;Lio/olvid/engine/datatypes/UID;)V
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p2, v0, v0}, Lio/olvid/engine/datatypes/Operation;-><init>(Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Operation$OnFinishCallback;Lio/olvid/engine/datatypes/Operation$OnCancelCallback;)V

    .line 20
    iput-object p1, p0, Lio/olvid/engine/networksend/operations/TryToDeleteMessageAndAttachmentsOperation;->sendManagerSessionFactory:Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;

    .line 21
    iput-object p2, p0, Lio/olvid/engine/networksend/operations/TryToDeleteMessageAndAttachmentsOperation;->messageUid:Lio/olvid/engine/datatypes/UID;

    return-void
.end method


# virtual methods
.method public doCancel()V
    .locals 0

    return-void
.end method

.method public doExecute()V
    .locals 8

    .line 36
    :try_start_0
    iget-object v0, p0, Lio/olvid/engine/networksend/operations/TryToDeleteMessageAndAttachmentsOperation;->sendManagerSessionFactory:Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;

    invoke-interface {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;->getSession()Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v1, 0x0

    .line 39
    :try_start_1
    iget-object v2, p0, Lio/olvid/engine/networksend/operations/TryToDeleteMessageAndAttachmentsOperation;->messageUid:Lio/olvid/engine/datatypes/UID;

    invoke-static {v0, v2}, Lio/olvid/engine/networksend/databases/OutboxMessage;->get(Lio/olvid/engine/networksend/datatypes/SendManagerSession;Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/networksend/databases/OutboxMessage;

    move-result-object v2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    .line 85
    :try_start_2
    iget-object v1, v0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Session;->commit()V

    .line 86
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/TryToDeleteMessageAndAttachmentsOperation;->setFinished()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_0

    .line 92
    :try_start_3
    invoke-virtual {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_0
    return-void

    .line 48
    :cond_1
    :try_start_4
    invoke-virtual {v2}, Lio/olvid/engine/networksend/databases/OutboxMessage;->getUidFromServer()Lio/olvid/engine/datatypes/UID;

    move-result-object v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v3, :cond_3

    .line 85
    :try_start_5
    iget-object v1, v0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Session;->commit()V

    .line 86
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/TryToDeleteMessageAndAttachmentsOperation;->setFinished()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_2

    .line 92
    :try_start_6
    invoke-virtual {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_2
    return-void

    .line 53
    :cond_3
    :try_start_7
    invoke-virtual {v2}, Lio/olvid/engine/networksend/databases/OutboxMessage;->getAttachments()[Lio/olvid/engine/networksend/databases/OutboxAttachment;

    move-result-object v3

    .line 54
    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_6

    aget-object v7, v3, v6

    .line 55
    invoke-virtual {v7}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->isAcknowledged()Z

    move-result v7
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v7, :cond_5

    .line 85
    :try_start_8
    iget-object v1, v0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Session;->commit()V

    .line 86
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/TryToDeleteMessageAndAttachmentsOperation;->setFinished()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v0, :cond_4

    .line 92
    :try_start_9
    invoke-virtual {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_9
    .catch Ljava/sql/SQLException; {:try_start_9 .. :try_end_9} :catch_2

    :cond_4
    return-void

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 63
    :cond_6
    :try_start_a
    array-length v4, v3

    :goto_1
    if-ge v5, v4, :cond_9

    aget-object v6, v3, v5

    .line 64
    invoke-virtual {v6}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->shouldBeDeletedAfterSend()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 65
    new-instance v7, Ljava/io/File;

    invoke-virtual {v6}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 67
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_8

    .line 70
    invoke-virtual {p0, v1}, Lio/olvid/engine/networksend/operations/TryToDeleteMessageAndAttachmentsOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 88
    :try_start_b
    invoke-virtual {p0, v1}, Lio/olvid/engine/networksend/operations/TryToDeleteMessageAndAttachmentsOperation;->cancel(Ljava/lang/Integer;)V

    .line 89
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/TryToDeleteMessageAndAttachmentsOperation;->processCancel()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v0, :cond_7

    .line 92
    :try_start_c
    invoke-virtual {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_c
    .catch Ljava/sql/SQLException; {:try_start_c .. :try_end_c} :catch_2

    :cond_7
    return-void

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 77
    :cond_9
    :try_start_d
    iget-object v3, v0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v3}, Lio/olvid/engine/datatypes/Session;->startTransaction()V

    .line 78
    invoke-virtual {v2}, Lio/olvid/engine/networksend/databases/OutboxMessage;->delete()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 85
    :try_start_e
    iget-object v1, v0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Session;->commit()V

    .line 86
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/TryToDeleteMessageAndAttachmentsOperation;->setFinished()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_3

    :catch_0
    move-exception v2

    .line 81
    :try_start_f
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 82
    iget-object v2, v0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Session;->rollback()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 88
    :try_start_10
    invoke-virtual {p0, v1}, Lio/olvid/engine/networksend/operations/TryToDeleteMessageAndAttachmentsOperation;->cancel(Ljava/lang/Integer;)V

    .line 89
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/TryToDeleteMessageAndAttachmentsOperation;->processCancel()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :goto_2
    if-eqz v0, :cond_c

    .line 92
    :try_start_11
    invoke-virtual {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_11
    .catch Ljava/sql/SQLException; {:try_start_11 .. :try_end_11} :catch_2

    goto :goto_5

    .line 88
    :goto_3
    :try_start_12
    invoke-virtual {p0, v1}, Lio/olvid/engine/networksend/operations/TryToDeleteMessageAndAttachmentsOperation;->cancel(Ljava/lang/Integer;)V

    .line 89
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/TryToDeleteMessageAndAttachmentsOperation;->processCancel()V

    .line 91
    throw v2

    .line 88
    :catch_1
    invoke-virtual {p0, v1}, Lio/olvid/engine/networksend/operations/TryToDeleteMessageAndAttachmentsOperation;->cancel(Ljava/lang/Integer;)V

    .line 89
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/TryToDeleteMessageAndAttachmentsOperation;->processCancel()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    if-eqz v0, :cond_a

    .line 92
    :try_start_13
    invoke-virtual {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_13
    .catch Ljava/sql/SQLException; {:try_start_13 .. :try_end_13} :catch_2

    :cond_a
    return-void

    :catchall_1
    move-exception v1

    .line 36
    :try_start_14
    throw v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    :catchall_2
    move-exception v2

    if-eqz v0, :cond_b

    .line 92
    :try_start_15
    invoke-virtual {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    :try_start_16
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b
    :goto_4
    throw v2
    :try_end_16
    .catch Ljava/sql/SQLException; {:try_start_16 .. :try_end_16} :catch_2

    :catch_2
    move-exception v0

    .line 93
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    :cond_c
    :goto_5
    return-void
.end method
