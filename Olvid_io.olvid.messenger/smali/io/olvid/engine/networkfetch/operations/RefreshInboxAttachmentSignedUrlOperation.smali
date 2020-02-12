.class public Lio/olvid/engine/networkfetch/operations/RefreshInboxAttachmentSignedUrlOperation;
.super Lio/olvid/engine/datatypes/Operation;
.source "RefreshInboxAttachmentSignedUrlOperation.java"


# static fields
.field public static final RFC_ATTACHMENT_NOT_FOUND:I = 0x2

.field public static final RFC_DELETED_FROM_SERVER:I = 0x3

.field public static final RFC_NETWORK_ERROR:I = 0x1


# instance fields
.field private final attachmentNumber:I

.field private final fetchManagerSessionFactory:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;

.field private final messageUid:Lio/olvid/engine/datatypes/UID;


# direct methods
.method public constructor <init>(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;Lio/olvid/engine/datatypes/UID;ILio/olvid/engine/datatypes/Operation$OnFinishCallback;Lio/olvid/engine/datatypes/Operation$OnCancelCallback;)V
    .locals 1

    .line 27
    invoke-static {p2, p3}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->computeUniqueUid(Lio/olvid/engine/datatypes/UID;I)Lio/olvid/engine/datatypes/UID;

    move-result-object v0

    invoke-direct {p0, v0, p4, p5}, Lio/olvid/engine/datatypes/Operation;-><init>(Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Operation$OnFinishCallback;Lio/olvid/engine/datatypes/Operation$OnCancelCallback;)V

    .line 28
    iput-object p1, p0, Lio/olvid/engine/networkfetch/operations/RefreshInboxAttachmentSignedUrlOperation;->fetchManagerSessionFactory:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;

    .line 29
    iput-object p2, p0, Lio/olvid/engine/networkfetch/operations/RefreshInboxAttachmentSignedUrlOperation;->messageUid:Lio/olvid/engine/datatypes/UID;

    .line 30
    iput p3, p0, Lio/olvid/engine/networkfetch/operations/RefreshInboxAttachmentSignedUrlOperation;->attachmentNumber:I

    return-void
.end method


# virtual methods
.method public doCancel()V
    .locals 0

    return-void
.end method

.method public doExecute()V
    .locals 11

    .line 51
    :try_start_0
    iget-object v0, p0, Lio/olvid/engine/networkfetch/operations/RefreshInboxAttachmentSignedUrlOperation;->fetchManagerSessionFactory:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;

    invoke-interface {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;->getSession()Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    .line 53
    :try_start_1
    iget-object v2, p0, Lio/olvid/engine/networkfetch/operations/RefreshInboxAttachmentSignedUrlOperation;->messageUid:Lio/olvid/engine/datatypes/UID;

    iget v3, p0, Lio/olvid/engine/networkfetch/operations/RefreshInboxAttachmentSignedUrlOperation;->attachmentNumber:I

    invoke-static {v0, v2, v3}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->get(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Lio/olvid/engine/datatypes/UID;I)Lio/olvid/engine/networkfetch/databases/InboxAttachment;

    move-result-object v2

    const/4 v3, 0x2

    if-nez v2, :cond_2

    .line 56
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/networkfetch/operations/RefreshInboxAttachmentSignedUrlOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    :try_start_2
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/RefreshInboxAttachmentSignedUrlOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    invoke-virtual {p0, v1}, Lio/olvid/engine/networkfetch/operations/RefreshInboxAttachmentSignedUrlOperation;->cancel(Ljava/lang/Integer;)V

    .line 101
    :cond_0
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/RefreshInboxAttachmentSignedUrlOperation;->processCancel()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_1

    .line 104
    :try_start_3
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    return-void

    .line 59
    :cond_2
    :try_start_4
    invoke-virtual {v2}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->getMessage()Lio/olvid/engine/networkfetch/databases/InboxMessage;

    move-result-object v4

    if-nez v4, :cond_5

    .line 61
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/networkfetch/operations/RefreshInboxAttachmentSignedUrlOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 98
    :try_start_5
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/RefreshInboxAttachmentSignedUrlOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 99
    invoke-virtual {p0, v1}, Lio/olvid/engine/networkfetch/operations/RefreshInboxAttachmentSignedUrlOperation;->cancel(Ljava/lang/Integer;)V

    .line 101
    :cond_3
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/RefreshInboxAttachmentSignedUrlOperation;->processCancel()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_4

    .line 104
    :try_start_6
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_4
    return-void

    .line 64
    :cond_5
    :try_start_7
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/RefreshInboxAttachmentSignedUrlOperation;->cancelWasRequested()Z

    move-result v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v3, :cond_8

    .line 98
    :try_start_8
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/RefreshInboxAttachmentSignedUrlOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 99
    invoke-virtual {p0, v1}, Lio/olvid/engine/networkfetch/operations/RefreshInboxAttachmentSignedUrlOperation;->cancel(Ljava/lang/Integer;)V

    .line 101
    :cond_6
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/RefreshInboxAttachmentSignedUrlOperation;->processCancel()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v0, :cond_7

    .line 104
    :try_start_9
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_9
    .catch Ljava/sql/SQLException; {:try_start_9 .. :try_end_9} :catch_1

    :cond_7
    return-void

    .line 68
    :cond_8
    :try_start_a
    new-instance v3, Lio/olvid/engine/networkfetch/operations/RefreshInboxAttachmentSignedUrlServerMethod;

    .line 69
    invoke-virtual {v4}, Lio/olvid/engine/networkfetch/databases/InboxMessage;->getToIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    iget-object v5, p0, Lio/olvid/engine/networkfetch/operations/RefreshInboxAttachmentSignedUrlOperation;->messageUid:Lio/olvid/engine/datatypes/UID;

    iget v6, p0, Lio/olvid/engine/networkfetch/operations/RefreshInboxAttachmentSignedUrlOperation;->attachmentNumber:I

    .line 72
    invoke-virtual {v2}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->getExpectedLength()J

    move-result-wide v7

    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    invoke-virtual {v2}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->getChunkLength()I

    move-result v9

    int-to-long v9, v9

    div-long/2addr v7, v9

    long-to-int v8, v7

    const/4 v7, 0x1

    add-int/2addr v8, v7

    invoke-direct {v3, v4, v5, v6, v8}, Lio/olvid/engine/networkfetch/operations/RefreshInboxAttachmentSignedUrlServerMethod;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;II)V

    .line 75
    invoke-virtual {v3}, Lio/olvid/engine/networkfetch/operations/RefreshInboxAttachmentSignedUrlServerMethod;->execute()B

    move-result v4

    .line 77
    iget-object v5, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v5}, Lio/olvid/engine/datatypes/Session;->startTransaction()V

    if-eqz v4, :cond_e

    const/16 v2, 0x9

    if-eq v4, v2, :cond_b

    .line 87
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/networkfetch/operations/RefreshInboxAttachmentSignedUrlOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 98
    :try_start_b
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/RefreshInboxAttachmentSignedUrlOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 99
    invoke-virtual {p0, v1}, Lio/olvid/engine/networkfetch/operations/RefreshInboxAttachmentSignedUrlOperation;->cancel(Ljava/lang/Integer;)V

    .line 101
    :cond_9
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/RefreshInboxAttachmentSignedUrlOperation;->processCancel()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v0, :cond_a

    .line 104
    :try_start_c
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_c
    .catch Ljava/sql/SQLException; {:try_start_c .. :try_end_c} :catch_1

    :cond_a
    return-void

    :cond_b
    const/4 v2, 0x3

    .line 84
    :try_start_d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/networkfetch/operations/RefreshInboxAttachmentSignedUrlOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 98
    :try_start_e
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/RefreshInboxAttachmentSignedUrlOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 99
    invoke-virtual {p0, v1}, Lio/olvid/engine/networkfetch/operations/RefreshInboxAttachmentSignedUrlOperation;->cancel(Ljava/lang/Integer;)V

    .line 101
    :cond_c
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/RefreshInboxAttachmentSignedUrlOperation;->processCancel()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    if-eqz v0, :cond_d

    .line 104
    :try_start_f
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_f
    .catch Ljava/sql/SQLException; {:try_start_f .. :try_end_f} :catch_1

    :cond_d
    return-void

    .line 80
    :cond_e
    :try_start_10
    invoke-virtual {v3}, Lio/olvid/engine/networkfetch/operations/RefreshInboxAttachmentSignedUrlServerMethod;->getSignedUrls()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->setChunkDownloadPrivateUrls([Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 95
    :try_start_11
    iget-object v1, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Session;->commit()V

    .line 96
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/RefreshInboxAttachmentSignedUrlOperation;->setFinished()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    if-eqz v0, :cond_f

    .line 104
    :try_start_12
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_12
    .catch Ljava/sql/SQLException; {:try_start_12 .. :try_end_12} :catch_1

    :cond_f
    return-void

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 91
    :try_start_13
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 92
    iget-object v2, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Session;->rollback()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 98
    :try_start_14
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/RefreshInboxAttachmentSignedUrlOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 99
    invoke-virtual {p0, v1}, Lio/olvid/engine/networkfetch/operations/RefreshInboxAttachmentSignedUrlOperation;->cancel(Ljava/lang/Integer;)V

    .line 101
    :cond_10
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/RefreshInboxAttachmentSignedUrlOperation;->processCancel()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    if-eqz v0, :cond_13

    .line 104
    :try_start_15
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_15
    .catch Ljava/sql/SQLException; {:try_start_15 .. :try_end_15} :catch_1

    goto :goto_2

    .line 98
    :goto_0
    :try_start_16
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/RefreshInboxAttachmentSignedUrlOperation;->hasNoReasonForCancel()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 99
    invoke-virtual {p0, v1}, Lio/olvid/engine/networkfetch/operations/RefreshInboxAttachmentSignedUrlOperation;->cancel(Ljava/lang/Integer;)V

    .line 101
    :cond_11
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/RefreshInboxAttachmentSignedUrlOperation;->processCancel()V

    .line 103
    throw v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    :catchall_1
    move-exception v1

    .line 51
    :try_start_17
    throw v1
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    :catchall_2
    move-exception v2

    if-eqz v0, :cond_12

    .line 104
    :try_start_18
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    :try_start_19
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_12
    :goto_1
    throw v2
    :try_end_19
    .catch Ljava/sql/SQLException; {:try_start_19 .. :try_end_19} :catch_1

    :catch_1
    move-exception v0

    .line 105
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    :cond_13
    :goto_2
    return-void
.end method

.method public getAttachmentNumber()I
    .locals 1

    .line 38
    iget v0, p0, Lio/olvid/engine/networkfetch/operations/RefreshInboxAttachmentSignedUrlOperation;->attachmentNumber:I

    return v0
.end method

.method public getMessageUid()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 34
    iget-object v0, p0, Lio/olvid/engine/networkfetch/operations/RefreshInboxAttachmentSignedUrlOperation;->messageUid:Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method
