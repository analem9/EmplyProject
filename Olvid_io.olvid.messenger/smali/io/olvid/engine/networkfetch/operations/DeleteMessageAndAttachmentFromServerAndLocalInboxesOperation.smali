.class public Lio/olvid/engine/networkfetch/operations/DeleteMessageAndAttachmentFromServerAndLocalInboxesOperation;
.super Lio/olvid/engine/datatypes/Operation;
.source "DeleteMessageAndAttachmentFromServerAndLocalInboxesOperation.java"


# static fields
.field public static final RFC_INVALID_SERVER_SESSION:I = 0x2

.field public static final RFC_MESSAGE_AND_ATTACHMENTS_CANNOT_BE_DELETED:I = 0x3

.field public static final RFC_NETWORK_ERROR:I = 0x1


# instance fields
.field private final fetchManagerSessionFactory:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;

.field private final messageUid:Lio/olvid/engine/datatypes/UID;

.field private toIdentity:Lio/olvid/engine/datatypes/Identity;


# direct methods
.method public constructor <init>(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;Lio/olvid/engine/datatypes/UID;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2, v0, v0}, Lio/olvid/engine/networkfetch/operations/DeleteMessageAndAttachmentFromServerAndLocalInboxesOperation;-><init>(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Operation$OnFinishCallback;Lio/olvid/engine/datatypes/Operation$OnCancelCallback;)V

    return-void
.end method

.method public constructor <init>(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Operation$OnFinishCallback;Lio/olvid/engine/datatypes/Operation$OnCancelCallback;)V
    .locals 0

    .line 31
    invoke-direct {p0, p2, p3, p4}, Lio/olvid/engine/datatypes/Operation;-><init>(Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Operation$OnFinishCallback;Lio/olvid/engine/datatypes/Operation$OnCancelCallback;)V

    .line 32
    iput-object p1, p0, Lio/olvid/engine/networkfetch/operations/DeleteMessageAndAttachmentFromServerAndLocalInboxesOperation;->fetchManagerSessionFactory:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;

    .line 33
    iput-object p2, p0, Lio/olvid/engine/networkfetch/operations/DeleteMessageAndAttachmentFromServerAndLocalInboxesOperation;->messageUid:Lio/olvid/engine/datatypes/UID;

    return-void
.end method


# virtual methods
.method public doCancel()V
    .locals 0

    return-void
.end method

.method public doExecute()V
    .locals 10

    .line 53
    :try_start_0
    iget-object v0, p0, Lio/olvid/engine/networkfetch/operations/DeleteMessageAndAttachmentFromServerAndLocalInboxesOperation;->fetchManagerSessionFactory:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;

    invoke-interface {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;->getSession()Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    .line 55
    :try_start_1
    iget-object v2, p0, Lio/olvid/engine/networkfetch/operations/DeleteMessageAndAttachmentFromServerAndLocalInboxesOperation;->messageUid:Lio/olvid/engine/datatypes/UID;

    invoke-static {v0, v2}, Lio/olvid/engine/networkfetch/databases/PendingDeleteFromServer;->get(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/networkfetch/databases/PendingDeleteFromServer;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    .line 115
    :try_start_2
    iget-object v1, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Session;->commit()V

    .line 116
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/DeleteMessageAndAttachmentFromServerAndLocalInboxesOperation;->setFinished()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_0

    .line 124
    :try_start_3
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_0
    return-void

    .line 60
    :cond_1
    :try_start_4
    iget-object v3, p0, Lio/olvid/engine/networkfetch/operations/DeleteMessageAndAttachmentFromServerAndLocalInboxesOperation;->messageUid:Lio/olvid/engine/datatypes/UID;

    invoke-static {v0, v3}, Lio/olvid/engine/networkfetch/databases/InboxMessage;->get(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/networkfetch/databases/InboxMessage;

    move-result-object v3

    if-nez v3, :cond_3

    .line 62
    iget-object v3, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v3}, Lio/olvid/engine/datatypes/Session;->startTransaction()V

    .line 63
    invoke-virtual {v2}, Lio/olvid/engine/networkfetch/databases/PendingDeleteFromServer;->delete()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 115
    :try_start_5
    iget-object v1, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Session;->commit()V

    .line 116
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/DeleteMessageAndAttachmentFromServerAndLocalInboxesOperation;->setFinished()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_2

    .line 124
    :try_start_6
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_2
    return-void

    .line 67
    :cond_3
    :try_start_7
    invoke-virtual {v3}, Lio/olvid/engine/networkfetch/databases/InboxMessage;->getToIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    iput-object v4, p0, Lio/olvid/engine/networkfetch/operations/DeleteMessageAndAttachmentFromServerAndLocalInboxesOperation;->toIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 69
    iget-object v4, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->identityDelegate:Lio/olvid/engine/metamanager/IdentityDelegate;

    iget-object v5, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    iget-object v6, p0, Lio/olvid/engine/networkfetch/operations/DeleteMessageAndAttachmentFromServerAndLocalInboxesOperation;->toIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-interface {v4, v5, v6}, Lio/olvid/engine/metamanager/IdentityDelegate;->getCurrentDeviceUidOfOwnedIdentity(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/UID;

    move-result-object v4

    .line 71
    invoke-virtual {v3}, Lio/olvid/engine/networkfetch/databases/InboxMessage;->canBeDeleted()Z

    move-result v5

    if-nez v5, :cond_6

    const/4 v2, 0x3

    .line 72
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/networkfetch/operations/DeleteMessageAndAttachmentFromServerAndLocalInboxesOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 118
    :try_start_8
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/DeleteMessageAndAttachmentFromServerAndLocalInboxesOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 119
    invoke-virtual {p0, v1}, Lio/olvid/engine/networkfetch/operations/DeleteMessageAndAttachmentFromServerAndLocalInboxesOperation;->cancel(Ljava/lang/Integer;)V

    .line 121
    :cond_4
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/DeleteMessageAndAttachmentFromServerAndLocalInboxesOperation;->processCancel()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v0, :cond_5

    .line 124
    :try_start_9
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_9
    .catch Ljava/sql/SQLException; {:try_start_9 .. :try_end_9} :catch_1

    :cond_5
    return-void

    .line 76
    :cond_6
    :try_start_a
    invoke-virtual {v3}, Lio/olvid/engine/networkfetch/databases/InboxMessage;->getToIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v5

    invoke-static {v0, v5}, Lio/olvid/engine/networkfetch/databases/ServerSession;->getToken(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Lio/olvid/engine/datatypes/Identity;)[B

    move-result-object v5

    const/4 v6, 0x2

    if-nez v5, :cond_9

    .line 78
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/networkfetch/operations/DeleteMessageAndAttachmentFromServerAndLocalInboxesOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 118
    :try_start_b
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/DeleteMessageAndAttachmentFromServerAndLocalInboxesOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 119
    invoke-virtual {p0, v1}, Lio/olvid/engine/networkfetch/operations/DeleteMessageAndAttachmentFromServerAndLocalInboxesOperation;->cancel(Ljava/lang/Integer;)V

    .line 121
    :cond_7
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/DeleteMessageAndAttachmentFromServerAndLocalInboxesOperation;->processCancel()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v0, :cond_8

    .line 124
    :try_start_c
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_c
    .catch Ljava/sql/SQLException; {:try_start_c .. :try_end_c} :catch_1

    :cond_8
    return-void

    .line 81
    :cond_9
    :try_start_d
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/DeleteMessageAndAttachmentFromServerAndLocalInboxesOperation;->cancelWasRequested()Z

    move-result v7
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-eqz v7, :cond_c

    .line 118
    :try_start_e
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/DeleteMessageAndAttachmentFromServerAndLocalInboxesOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 119
    invoke-virtual {p0, v1}, Lio/olvid/engine/networkfetch/operations/DeleteMessageAndAttachmentFromServerAndLocalInboxesOperation;->cancel(Ljava/lang/Integer;)V

    .line 121
    :cond_a
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/DeleteMessageAndAttachmentFromServerAndLocalInboxesOperation;->processCancel()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    if-eqz v0, :cond_b

    .line 124
    :try_start_f
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_f
    .catch Ljava/sql/SQLException; {:try_start_f .. :try_end_f} :catch_1

    :cond_b
    return-void

    .line 85
    :cond_c
    :try_start_10
    new-instance v7, Lio/olvid/engine/networkfetch/operations/DeleteMessageAndAttachmentServerMethod;

    .line 86
    invoke-virtual {v3}, Lio/olvid/engine/networkfetch/databases/InboxMessage;->getToIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v8

    iget-object v9, p0, Lio/olvid/engine/networkfetch/operations/DeleteMessageAndAttachmentFromServerAndLocalInboxesOperation;->messageUid:Lio/olvid/engine/datatypes/UID;

    invoke-direct {v7, v8, v5, v9, v4}, Lio/olvid/engine/networkfetch/operations/DeleteMessageAndAttachmentServerMethod;-><init>(Lio/olvid/engine/datatypes/Identity;[BLio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/UID;)V

    .line 92
    invoke-virtual {v7}, Lio/olvid/engine/networkfetch/operations/DeleteMessageAndAttachmentServerMethod;->execute()B

    move-result v4

    .line 94
    iget-object v7, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v7}, Lio/olvid/engine/datatypes/Session;->startTransaction()V

    if-eqz v4, :cond_12

    const/4 v2, 0x4

    if-eq v4, v2, :cond_f

    const/4 v2, 0x1

    .line 107
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/networkfetch/operations/DeleteMessageAndAttachmentFromServerAndLocalInboxesOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 118
    :try_start_11
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/DeleteMessageAndAttachmentFromServerAndLocalInboxesOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 119
    invoke-virtual {p0, v1}, Lio/olvid/engine/networkfetch/operations/DeleteMessageAndAttachmentFromServerAndLocalInboxesOperation;->cancel(Ljava/lang/Integer;)V

    .line 121
    :cond_d
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/DeleteMessageAndAttachmentFromServerAndLocalInboxesOperation;->processCancel()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    if-eqz v0, :cond_e

    .line 124
    :try_start_12
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_12
    .catch Ljava/sql/SQLException; {:try_start_12 .. :try_end_12} :catch_1

    :cond_e
    return-void

    .line 102
    :cond_f
    :try_start_13
    invoke-virtual {v3}, Lio/olvid/engine/networkfetch/databases/InboxMessage;->getToIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    invoke-static {v0, v5, v2}, Lio/olvid/engine/networkfetch/databases/ServerSession;->deleteCurrentTokenIfEqualTo(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;[BLio/olvid/engine/datatypes/Identity;)V

    .line 103
    iget-object v2, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Session;->commit()V

    .line 104
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/networkfetch/operations/DeleteMessageAndAttachmentFromServerAndLocalInboxesOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 118
    :try_start_14
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/DeleteMessageAndAttachmentFromServerAndLocalInboxesOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 119
    invoke-virtual {p0, v1}, Lio/olvid/engine/networkfetch/operations/DeleteMessageAndAttachmentFromServerAndLocalInboxesOperation;->cancel(Ljava/lang/Integer;)V

    .line 121
    :cond_10
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/DeleteMessageAndAttachmentFromServerAndLocalInboxesOperation;->processCancel()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    if-eqz v0, :cond_11

    .line 124
    :try_start_15
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_15
    .catch Ljava/sql/SQLException; {:try_start_15 .. :try_end_15} :catch_1

    :cond_11
    return-void

    .line 97
    :cond_12
    :try_start_16
    invoke-virtual {v2}, Lio/olvid/engine/networkfetch/databases/PendingDeleteFromServer;->delete()V

    .line 98
    invoke-virtual {v3}, Lio/olvid/engine/networkfetch/databases/InboxMessage;->delete()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_0
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 115
    :try_start_17
    iget-object v1, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Session;->commit()V

    .line 116
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/DeleteMessageAndAttachmentFromServerAndLocalInboxesOperation;->setFinished()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    if-eqz v0, :cond_13

    .line 124
    :try_start_18
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_18
    .catch Ljava/sql/SQLException; {:try_start_18 .. :try_end_18} :catch_1

    :cond_13
    return-void

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 111
    :try_start_19
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 112
    iget-object v2, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Session;->rollback()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 118
    :try_start_1a
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/DeleteMessageAndAttachmentFromServerAndLocalInboxesOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 119
    invoke-virtual {p0, v1}, Lio/olvid/engine/networkfetch/operations/DeleteMessageAndAttachmentFromServerAndLocalInboxesOperation;->cancel(Ljava/lang/Integer;)V

    .line 121
    :cond_14
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/DeleteMessageAndAttachmentFromServerAndLocalInboxesOperation;->processCancel()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    if-eqz v0, :cond_17

    .line 124
    :try_start_1b
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_1b
    .catch Ljava/sql/SQLException; {:try_start_1b .. :try_end_1b} :catch_1

    goto :goto_2

    .line 118
    :goto_0
    :try_start_1c
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/DeleteMessageAndAttachmentFromServerAndLocalInboxesOperation;->hasNoReasonForCancel()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 119
    invoke-virtual {p0, v1}, Lio/olvid/engine/networkfetch/operations/DeleteMessageAndAttachmentFromServerAndLocalInboxesOperation;->cancel(Ljava/lang/Integer;)V

    .line 121
    :cond_15
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/DeleteMessageAndAttachmentFromServerAndLocalInboxesOperation;->processCancel()V

    .line 123
    throw v2
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    :catchall_1
    move-exception v1

    .line 53
    :try_start_1d
    throw v1
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    :catchall_2
    move-exception v2

    if-eqz v0, :cond_16

    .line 124
    :try_start_1e
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    :try_start_1f
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_16
    :goto_1
    throw v2
    :try_end_1f
    .catch Ljava/sql/SQLException; {:try_start_1f .. :try_end_1f} :catch_1

    :catch_1
    move-exception v0

    .line 125
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    :cond_17
    :goto_2
    return-void
.end method

.method public getMessageUid()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 37
    iget-object v0, p0, Lio/olvid/engine/networkfetch/operations/DeleteMessageAndAttachmentFromServerAndLocalInboxesOperation;->messageUid:Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method

.method public getToIdentity()Lio/olvid/engine/datatypes/Identity;
    .locals 1

    .line 41
    iget-object v0, p0, Lio/olvid/engine/networkfetch/operations/DeleteMessageAndAttachmentFromServerAndLocalInboxesOperation;->toIdentity:Lio/olvid/engine/datatypes/Identity;

    return-object v0
.end method
