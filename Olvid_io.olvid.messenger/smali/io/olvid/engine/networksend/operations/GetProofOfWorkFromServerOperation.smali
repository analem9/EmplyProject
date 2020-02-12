.class public Lio/olvid/engine/networksend/operations/GetProofOfWorkFromServerOperation;
.super Lio/olvid/engine/datatypes/Operation;
.source "GetProofOfWorkFromServerOperation.java"


# instance fields
.field private final messageUid:Lio/olvid/engine/datatypes/UID;

.field private final sendManagerSessionFactory:Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;


# direct methods
.method public constructor <init>(Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;Lio/olvid/engine/datatypes/UID;)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p2, v0, v0}, Lio/olvid/engine/datatypes/Operation;-><init>(Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Operation$OnFinishCallback;Lio/olvid/engine/datatypes/Operation$OnCancelCallback;)V

    .line 21
    iput-object p1, p0, Lio/olvid/engine/networksend/operations/GetProofOfWorkFromServerOperation;->sendManagerSessionFactory:Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;

    .line 22
    iput-object p2, p0, Lio/olvid/engine/networksend/operations/GetProofOfWorkFromServerOperation;->messageUid:Lio/olvid/engine/datatypes/UID;

    return-void
.end method


# virtual methods
.method public doCancel()V
    .locals 0

    return-void
.end method

.method public doExecute()V
    .locals 6

    .line 38
    :try_start_0
    iget-object v0, p0, Lio/olvid/engine/networksend/operations/GetProofOfWorkFromServerOperation;->sendManagerSessionFactory:Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;

    invoke-interface {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;->getSession()Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    .line 40
    :try_start_1
    iget-object v2, p0, Lio/olvid/engine/networksend/operations/GetProofOfWorkFromServerOperation;->messageUid:Lio/olvid/engine/datatypes/UID;

    invoke-static {v0, v2}, Lio/olvid/engine/networksend/databases/OutboxMessage;->get(Lio/olvid/engine/networksend/datatypes/SendManagerSession;Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/networksend/databases/OutboxMessage;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    .line 43
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/networksend/operations/GetProofOfWorkFromServerOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    :try_start_2
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/GetProofOfWorkFromServerOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    invoke-virtual {p0, v1}, Lio/olvid/engine/networksend/operations/GetProofOfWorkFromServerOperation;->cancel(Ljava/lang/Integer;)V

    .line 90
    :cond_0
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/GetProofOfWorkFromServerOperation;->processCancel()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_1

    .line 93
    :try_start_3
    invoke-virtual {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    return-void

    .line 50
    :cond_2
    :try_start_4
    invoke-virtual {v2}, Lio/olvid/engine/networksend/databases/OutboxMessage;->getUidFromServer()Lio/olvid/engine/datatypes/UID;

    move-result-object v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_4

    .line 84
    :try_start_5
    iget-object v1, v0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Session;->commit()V

    .line 85
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/GetProofOfWorkFromServerOperation;->setFinished()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_3

    .line 93
    :try_start_6
    invoke-virtual {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_3
    return-void

    .line 54
    :cond_4
    :try_start_7
    invoke-virtual {v2}, Lio/olvid/engine/networksend/databases/OutboxMessage;->getProofOfWorkEncodedChallenge()Lio/olvid/engine/encoder/Encoded;

    move-result-object v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v3, :cond_6

    .line 84
    :try_start_8
    iget-object v1, v0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Session;->commit()V

    .line 85
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/GetProofOfWorkFromServerOperation;->setFinished()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v0, :cond_5

    .line 93
    :try_start_9
    invoke-virtual {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_9
    .catch Ljava/sql/SQLException; {:try_start_9 .. :try_end_9} :catch_1

    :cond_5
    return-void

    .line 59
    :cond_6
    :try_start_a
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/GetProofOfWorkFromServerOperation;->cancelWasRequested()Z

    move-result v3
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v3, :cond_9

    .line 87
    :try_start_b
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/GetProofOfWorkFromServerOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 88
    invoke-virtual {p0, v1}, Lio/olvid/engine/networksend/operations/GetProofOfWorkFromServerOperation;->cancel(Ljava/lang/Integer;)V

    .line 90
    :cond_7
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/GetProofOfWorkFromServerOperation;->processCancel()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v0, :cond_8

    .line 93
    :try_start_c
    invoke-virtual {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_c
    .catch Ljava/sql/SQLException; {:try_start_c .. :try_end_c} :catch_1

    :cond_8
    return-void

    .line 63
    :cond_9
    :try_start_d
    new-instance v3, Lio/olvid/engine/networksend/operations/GetProofOfWorkServerMethod;

    invoke-virtual {v2}, Lio/olvid/engine/networksend/databases/OutboxMessage;->getServer()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lio/olvid/engine/networksend/operations/GetProofOfWorkServerMethod;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v3}, Lio/olvid/engine/networksend/operations/GetProofOfWorkServerMethod;->execute()B

    move-result v4

    .line 67
    iget-object v5, v0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v5}, Lio/olvid/engine/datatypes/Session;->startTransaction()V

    const/4 v5, -0x1

    if-eq v4, v5, :cond_d

    if-eqz v4, :cond_b

    const/4 v2, 0x3

    .line 77
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/networksend/operations/GetProofOfWorkFromServerOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 87
    :try_start_e
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/GetProofOfWorkFromServerOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 88
    invoke-virtual {p0, v1}, Lio/olvid/engine/networksend/operations/GetProofOfWorkFromServerOperation;->cancel(Ljava/lang/Integer;)V

    .line 90
    :cond_a
    :goto_0
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/GetProofOfWorkFromServerOperation;->processCancel()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_1

    .line 70
    :cond_b
    :try_start_f
    invoke-virtual {v3}, Lio/olvid/engine/networksend/operations/GetProofOfWorkServerMethod;->getProofOfWorkUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v4

    invoke-virtual {v3}, Lio/olvid/engine/networksend/operations/GetProofOfWorkServerMethod;->getProofOfWorkEncodedChallenge()Lio/olvid/engine/encoder/Encoded;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lio/olvid/engine/networksend/databases/OutboxMessage;->setProofOfWork(Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/encoder/Encoded;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 84
    :try_start_10
    iget-object v1, v0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Session;->commit()V

    .line 85
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/GetProofOfWorkFromServerOperation;->setFinished()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    if-eqz v0, :cond_c

    .line 93
    :try_start_11
    invoke-virtual {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_11
    .catch Ljava/sql/SQLException; {:try_start_11 .. :try_end_11} :catch_1

    :cond_c
    return-void

    .line 74
    :cond_d
    :try_start_12
    invoke-virtual {p0, v1}, Lio/olvid/engine/networksend/operations/GetProofOfWorkFromServerOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 87
    :try_start_13
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/GetProofOfWorkFromServerOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 88
    invoke-virtual {p0, v1}, Lio/olvid/engine/networksend/operations/GetProofOfWorkFromServerOperation;->cancel(Ljava/lang/Integer;)V

    .line 90
    :cond_e
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/GetProofOfWorkFromServerOperation;->processCancel()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    if-eqz v0, :cond_f

    .line 93
    :try_start_14
    invoke-virtual {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_14
    .catch Ljava/sql/SQLException; {:try_start_14 .. :try_end_14} :catch_1

    :cond_f
    return-void

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    .line 80
    :try_start_15
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 81
    iget-object v2, v0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Session;->rollback()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 87
    :try_start_16
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/GetProofOfWorkFromServerOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 88
    invoke-virtual {p0, v1}, Lio/olvid/engine/networksend/operations/GetProofOfWorkFromServerOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    goto :goto_0

    :goto_1
    if-eqz v0, :cond_12

    .line 93
    :try_start_17
    invoke-virtual {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_17
    .catch Ljava/sql/SQLException; {:try_start_17 .. :try_end_17} :catch_1

    goto :goto_4

    .line 87
    :goto_2
    :try_start_18
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/GetProofOfWorkFromServerOperation;->hasNoReasonForCancel()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 88
    invoke-virtual {p0, v1}, Lio/olvid/engine/networksend/operations/GetProofOfWorkFromServerOperation;->cancel(Ljava/lang/Integer;)V

    .line 90
    :cond_10
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/GetProofOfWorkFromServerOperation;->processCancel()V

    .line 92
    throw v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    :catchall_1
    move-exception v1

    .line 38
    :try_start_19
    throw v1
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    :catchall_2
    move-exception v2

    if-eqz v0, :cond_11

    .line 93
    :try_start_1a
    invoke-virtual {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    :try_start_1b
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_11
    :goto_3
    throw v2
    :try_end_1b
    .catch Ljava/sql/SQLException; {:try_start_1b .. :try_end_1b} :catch_1

    :catch_1
    move-exception v0

    .line 94
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    :cond_12
    :goto_4
    return-void
.end method

.method public getMessageUid()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 26
    iget-object v0, p0, Lio/olvid/engine/networksend/operations/GetProofOfWorkFromServerOperation;->messageUid:Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method
