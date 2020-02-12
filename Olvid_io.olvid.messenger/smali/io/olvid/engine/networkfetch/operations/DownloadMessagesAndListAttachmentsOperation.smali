.class public Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsOperation;
.super Lio/olvid/engine/datatypes/Operation;
.source "DownloadMessagesAndListAttachmentsOperation.java"


# static fields
.field public static final RFC_INVALID_SERVER_SESSION:I = 0x2

.field public static final RFC_NETWORK_ERROR:I = 0x1


# instance fields
.field private final deviceUid:Lio/olvid/engine/datatypes/UID;

.field private final fetchManagerSessionFactory:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;

.field private final identity:Lio/olvid/engine/datatypes/Identity;


# direct methods
.method public constructor <init>(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 39
    invoke-direct/range {v0 .. v5}, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsOperation;-><init>(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Operation$OnFinishCallback;Lio/olvid/engine/datatypes/Operation$OnCancelCallback;)V

    return-void
.end method

.method public constructor <init>(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Operation$OnFinishCallback;Lio/olvid/engine/datatypes/Operation$OnCancelCallback;)V
    .locals 1

    .line 42
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/Identity;->computeUniqueUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v0

    invoke-direct {p0, v0, p4, p5}, Lio/olvid/engine/datatypes/Operation;-><init>(Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Operation$OnFinishCallback;Lio/olvid/engine/datatypes/Operation$OnCancelCallback;)V

    .line 43
    iput-object p1, p0, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsOperation;->fetchManagerSessionFactory:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;

    .line 44
    iput-object p2, p0, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsOperation;->identity:Lio/olvid/engine/datatypes/Identity;

    .line 45
    iput-object p3, p0, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsOperation;->deviceUid:Lio/olvid/engine/datatypes/UID;

    return-void
.end method


# virtual methods
.method public doCancel()V
    .locals 0

    return-void
.end method

.method public doExecute()V
    .locals 17

    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 57
    :try_start_0
    iget-object v0, v1, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsOperation;->fetchManagerSessionFactory:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;

    invoke-interface {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;->getSession()Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    move-result-object v10
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_3

    .line 59
    :try_start_1
    iget-object v0, v1, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsOperation;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-static {v10, v0}, Lio/olvid/engine/networkfetch/databases/ServerSession;->getToken(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Lio/olvid/engine/datatypes/Identity;)[B

    move-result-object v0

    const/4 v3, 0x2

    if-nez v0, :cond_2

    .line 61
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsOperation;->hasNoReasonForCancel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v1, v2}, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsOperation;->cancel(Ljava/lang/Integer;)V

    .line 147
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsOperation;->processCancel()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v10, :cond_1

    .line 150
    :try_start_3
    invoke-virtual {v10}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_1
    return-void

    .line 64
    :cond_2
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsOperation;->cancelWasRequested()Z

    move-result v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_5

    .line 144
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsOperation;->hasNoReasonForCancel()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 145
    invoke-virtual {v1, v2}, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsOperation;->cancel(Ljava/lang/Integer;)V

    .line 147
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsOperation;->processCancel()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v10, :cond_4

    .line 150
    :try_start_6
    invoke-virtual {v10}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_4
    return-void

    .line 68
    :cond_5
    :try_start_7
    new-instance v4, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod;

    iget-object v5, v1, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsOperation;->identity:Lio/olvid/engine/datatypes/Identity;

    iget-object v6, v1, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsOperation;->deviceUid:Lio/olvid/engine/datatypes/UID;

    invoke-direct {v4, v5, v0, v6}, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod;-><init>(Lio/olvid/engine/datatypes/Identity;[BLio/olvid/engine/datatypes/UID;)V

    .line 74
    invoke-virtual {v4}, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod;->execute()B

    move-result v5

    const/4 v11, 0x4

    if-eqz v5, :cond_b

    if-eq v5, v11, :cond_8

    const/4 v0, 0x1

    .line 133
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 144
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsOperation;->hasNoReasonForCancel()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 145
    invoke-virtual {v1, v2}, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsOperation;->cancel(Ljava/lang/Integer;)V

    .line 147
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsOperation;->processCancel()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v10, :cond_7

    .line 150
    :try_start_9
    invoke-virtual {v10}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_9
    .catch Ljava/sql/SQLException; {:try_start_9 .. :try_end_9} :catch_3

    :cond_7
    return-void

    .line 128
    :cond_8
    :try_start_a
    iget-object v4, v1, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsOperation;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-static {v10, v0, v4}, Lio/olvid/engine/networkfetch/databases/ServerSession;->deleteCurrentTokenIfEqualTo(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;[BLio/olvid/engine/datatypes/Identity;)V

    .line 129
    iget-object v0, v10, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Session;->commit()V

    .line 130
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 144
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsOperation;->hasNoReasonForCancel()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 145
    invoke-virtual {v1, v2}, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsOperation;->cancel(Ljava/lang/Integer;)V

    .line 147
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsOperation;->processCancel()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v10, :cond_a

    .line 150
    :try_start_c
    invoke-virtual {v10}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_c
    .catch Ljava/sql/SQLException; {:try_start_c .. :try_end_c} :catch_3

    :cond_a
    return-void

    .line 78
    :cond_b
    :try_start_d
    invoke-virtual {v4}, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod;->getMessageAndAttachmentLengthsArray()[Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod$MessageAndAttachmentLengths;

    move-result-object v12

    .line 81
    iget-object v0, v10, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Session;->startTransaction()V

    .line 83
    array-length v13, v12

    const/4 v0, 0x0

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v13, :cond_12

    aget-object v8, v12, v15

    .line 84
    iget-object v3, v8, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod$MessageAndAttachmentLengths;->messageUid:Lio/olvid/engine/datatypes/UID;

    invoke-static {v10, v3}, Lio/olvid/engine/networkfetch/databases/InboxMessage;->get(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/networkfetch/databases/InboxMessage;

    move-result-object v3

    if-nez v3, :cond_d

    .line 86
    iget-object v4, v8, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod$MessageAndAttachmentLengths;->messageUid:Lio/olvid/engine/datatypes/UID;

    iget-object v5, v1, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsOperation;->identity:Lio/olvid/engine/datatypes/Identity;

    iget-object v6, v8, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod$MessageAndAttachmentLengths;->messageContent:Lio/olvid/engine/datatypes/EncryptedBytes;

    iget-object v7, v8, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod$MessageAndAttachmentLengths;->wrappedKey:Lio/olvid/engine/datatypes/EncryptedBytes;

    move/from16 v16, v15

    iget-wide v14, v8, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod$MessageAndAttachmentLengths;->serverTimestamp:J

    move-object v3, v10

    move-object v2, v8

    move-wide v8, v14

    invoke-static/range {v3 .. v9}, Lio/olvid/engine/networkfetch/databases/InboxMessage;->create(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/EncryptedBytes;Lio/olvid/engine/datatypes/EncryptedBytes;J)Lio/olvid/engine/networkfetch/databases/InboxMessage;

    move-result-object v3

    if-nez v3, :cond_c

    const/4 v3, 0x4

    goto :goto_6

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_d
    move-object v2, v8

    move/from16 v16, v15

    :goto_1
    move v14, v0

    const/4 v15, 0x0

    .line 98
    :goto_2
    iget-object v0, v2, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod$MessageAndAttachmentLengths;->attachmentLengths:[J

    array-length v0, v0

    if-ge v15, v0, :cond_11

    .line 99
    iget-object v0, v2, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod$MessageAndAttachmentLengths;->messageUid:Lio/olvid/engine/datatypes/UID;

    invoke-static {v10, v0, v15}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->get(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Lio/olvid/engine/datatypes/UID;I)Lio/olvid/engine/networkfetch/databases/InboxAttachment;

    move-result-object v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-nez v0, :cond_10

    const/4 v9, 0x0

    :goto_3
    const/4 v0, 0x5

    if-ge v9, v0, :cond_10

    .line 103
    :try_start_e
    iget-object v0, v2, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod$MessageAndAttachmentLengths;->chunkDownloadPrivateUrls:[[Ljava/lang/String;

    aget-object v0, v0, v15

    if-nez v0, :cond_e

    const-string v0, "Empty list of chunks"

    .line 104
    invoke-static {v0}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 106
    :cond_e
    iget-object v4, v2, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod$MessageAndAttachmentLengths;->messageUid:Lio/olvid/engine/datatypes/UID;

    iget-object v0, v2, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod$MessageAndAttachmentLengths;->attachmentLengths:[J

    aget-wide v6, v0, v15

    iget-object v0, v2, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod$MessageAndAttachmentLengths;->chunkLengths:[I

    aget v8, v0, v15

    iget-object v0, v2, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod$MessageAndAttachmentLengths;->chunkDownloadPrivateUrls:[[Ljava/lang/String;

    aget-object v0, v0, v15
    :try_end_e
    .catch Ljava/sql/SQLException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-object v3, v10

    move v5, v15

    move v11, v9

    move-object v9, v0

    :try_start_f
    invoke-static/range {v3 .. v9}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->create(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Lio/olvid/engine/datatypes/UID;IJI[Ljava/lang/String;)Lio/olvid/engine/networkfetch/databases/InboxAttachment;
    :try_end_f
    .catch Ljava/sql/SQLException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move v11, v9

    :goto_4
    const/4 v3, 0x4

    if-eq v11, v3, :cond_f

    add-int/lit8 v9, v11, 0x1

    const/4 v11, 0x4

    goto :goto_3

    .line 116
    :cond_f
    :try_start_10
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 117
    new-instance v0, Ljava/sql/SQLException;

    invoke-direct {v0}, Ljava/sql/SQLException;-><init>()V

    throw v0

    :cond_10
    :goto_5
    const/4 v3, 0x4

    add-int/lit8 v15, v15, 0x1

    const/4 v11, 0x4

    goto :goto_2

    :cond_11
    const/4 v3, 0x4

    move v0, v14

    :goto_6
    add-int/lit8 v15, v16, 0x1

    const/4 v2, 0x0

    const/4 v11, 0x4

    goto :goto_0

    .line 124
    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DownloadMessagesAndListAttachmentsOperation found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " new messages on the server."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 141
    :try_start_11
    iget-object v0, v10, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Session;->commit()V

    .line 142
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsOperation;->setFinished()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    if-eqz v10, :cond_13

    .line 150
    :try_start_12
    invoke-virtual {v10}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_12
    .catch Ljava/sql/SQLException; {:try_start_12 .. :try_end_12} :catch_3

    :cond_13
    return-void

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    .line 137
    :try_start_13
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 138
    iget-object v0, v10, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Session;->rollback()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 144
    :try_start_14
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsOperation;->hasNoReasonForCancel()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v2, 0x0

    .line 145
    invoke-virtual {v1, v2}, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsOperation;->cancel(Ljava/lang/Integer;)V

    .line 147
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsOperation;->processCancel()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    if-eqz v10, :cond_17

    .line 150
    :try_start_15
    invoke-virtual {v10}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_15
    .catch Ljava/sql/SQLException; {:try_start_15 .. :try_end_15} :catch_3

    goto :goto_9

    .line 144
    :goto_7
    :try_start_16
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v2, 0x0

    .line 145
    invoke-virtual {v1, v2}, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsOperation;->cancel(Ljava/lang/Integer;)V

    .line 147
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsOperation;->processCancel()V

    .line 149
    throw v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    .line 57
    :try_start_17
    throw v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    :catchall_2
    move-exception v0

    move-object v3, v0

    if-eqz v10, :cond_16

    .line 150
    :try_start_18
    invoke-virtual {v10}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object v4, v0

    :try_start_19
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_16
    :goto_8
    throw v3
    :try_end_19
    .catch Ljava/sql/SQLException; {:try_start_19 .. :try_end_19} :catch_3

    :catch_3
    move-exception v0

    .line 151
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    const/4 v2, 0x0

    .line 152
    invoke-virtual {v1, v2}, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsOperation;->cancel(Ljava/lang/Integer;)V

    .line 153
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsOperation;->processCancel()V

    :cond_17
    :goto_9
    return-void
.end method

.method public getDeviceUid()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 35
    iget-object v0, p0, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsOperation;->deviceUid:Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method

.method public getIdentity()Lio/olvid/engine/datatypes/Identity;
    .locals 1

    .line 31
    iget-object v0, p0, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsOperation;->identity:Lio/olvid/engine/datatypes/Identity;

    return-object v0
.end method
