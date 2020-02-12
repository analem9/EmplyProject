.class public Lio/olvid/engine/networksend/operations/SolvePoWChallengeIfRequiredOperation;
.super Lio/olvid/engine/datatypes/Operation;
.source "SolvePoWChallengeIfRequiredOperation.java"


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
    iput-object p1, p0, Lio/olvid/engine/networksend/operations/SolvePoWChallengeIfRequiredOperation;->sendManagerSessionFactory:Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;

    .line 22
    iput-object p2, p0, Lio/olvid/engine/networksend/operations/SolvePoWChallengeIfRequiredOperation;->messageUid:Lio/olvid/engine/datatypes/UID;

    return-void
.end method


# virtual methods
.method public doCancel()V
    .locals 0

    return-void
.end method

.method public doExecute()V
    .locals 5

    .line 39
    :try_start_0
    iget-object v0, p0, Lio/olvid/engine/networksend/operations/SolvePoWChallengeIfRequiredOperation;->sendManagerSessionFactory:Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;

    invoke-interface {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;->getSession()Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v1, 0x0

    .line 41
    :try_start_1
    iget-object v2, p0, Lio/olvid/engine/networksend/operations/SolvePoWChallengeIfRequiredOperation;->messageUid:Lio/olvid/engine/datatypes/UID;

    invoke-static {v0, v2}, Lio/olvid/engine/networksend/databases/OutboxMessage;->get(Lio/olvid/engine/networksend/datatypes/SendManagerSession;Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/networksend/databases/OutboxMessage;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    .line 44
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/networksend/operations/SolvePoWChallengeIfRequiredOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    :try_start_2
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/SolvePoWChallengeIfRequiredOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    invoke-virtual {p0, v1}, Lio/olvid/engine/networksend/operations/SolvePoWChallengeIfRequiredOperation;->cancel(Ljava/lang/Integer;)V

    .line 89
    :cond_0
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/SolvePoWChallengeIfRequiredOperation;->processCancel()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_1

    .line 92
    :try_start_3
    invoke-virtual {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    return-void

    .line 51
    :cond_2
    :try_start_4
    invoke-virtual {v2}, Lio/olvid/engine/networksend/databases/OutboxMessage;->getUidFromServer()Lio/olvid/engine/datatypes/UID;

    move-result-object v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_4

    .line 83
    :try_start_5
    iget-object v1, v0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Session;->commit()V

    .line 84
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/SolvePoWChallengeIfRequiredOperation;->setFinished()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_3

    .line 92
    :try_start_6
    invoke-virtual {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_3
    return-void

    .line 56
    :cond_4
    :try_start_7
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/SolvePoWChallengeIfRequiredOperation;->cancelWasRequested()Z

    move-result v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v3, :cond_7

    .line 86
    :try_start_8
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/SolvePoWChallengeIfRequiredOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 87
    invoke-virtual {p0, v1}, Lio/olvid/engine/networksend/operations/SolvePoWChallengeIfRequiredOperation;->cancel(Ljava/lang/Integer;)V

    .line 89
    :cond_5
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/SolvePoWChallengeIfRequiredOperation;->processCancel()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v0, :cond_6

    .line 92
    :try_start_9
    invoke-virtual {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_9
    .catch Ljava/sql/SQLException; {:try_start_9 .. :try_end_9} :catch_2

    :cond_6
    return-void

    .line 62
    :cond_7
    :try_start_a
    invoke-virtual {v2}, Lio/olvid/engine/networksend/databases/OutboxMessage;->getProofOfWorkEncodedChallenge()Lio/olvid/engine/encoder/Encoded;

    move-result-object v3

    invoke-static {v3}, Lio/olvid/engine/crypto/ProofOfWorkEngine;->solveChallenge(Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v3
    :try_end_a
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_0

    :catch_0
    move-object v3, v1

    .line 67
    :goto_0
    :try_start_b
    iget-object v4, v0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v4}, Lio/olvid/engine/datatypes/Session;->startTransaction()V

    if-nez v3, :cond_a

    .line 69
    invoke-virtual {v2}, Lio/olvid/engine/networksend/databases/OutboxMessage;->removeProofOfWork()V

    .line 70
    iget-object v2, v0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Session;->commit()V

    const/16 v2, 0x9

    .line 71
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/networksend/operations/SolvePoWChallengeIfRequiredOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 86
    :try_start_c
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/SolvePoWChallengeIfRequiredOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 87
    invoke-virtual {p0, v1}, Lio/olvid/engine/networksend/operations/SolvePoWChallengeIfRequiredOperation;->cancel(Ljava/lang/Integer;)V

    .line 89
    :cond_8
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/SolvePoWChallengeIfRequiredOperation;->processCancel()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-eqz v0, :cond_9

    .line 92
    :try_start_d
    invoke-virtual {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_d
    .catch Ljava/sql/SQLException; {:try_start_d .. :try_end_d} :catch_2

    :cond_9
    return-void

    .line 75
    :cond_a
    :try_start_e
    invoke-virtual {v2, v3}, Lio/olvid/engine/networksend/databases/OutboxMessage;->setProofOfWorkEncodedSolution(Lio/olvid/engine/encoder/Encoded;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 83
    :try_start_f
    iget-object v1, v0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Session;->commit()V

    .line 84
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/SolvePoWChallengeIfRequiredOperation;->setFinished()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v2

    .line 79
    :try_start_10
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 80
    iget-object v2, v0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Session;->rollback()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 86
    :try_start_11
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/SolvePoWChallengeIfRequiredOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 87
    invoke-virtual {p0, v1}, Lio/olvid/engine/networksend/operations/SolvePoWChallengeIfRequiredOperation;->cancel(Ljava/lang/Integer;)V

    .line 89
    :cond_b
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/SolvePoWChallengeIfRequiredOperation;->processCancel()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :goto_1
    if-eqz v0, :cond_e

    .line 92
    :try_start_12
    invoke-virtual {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_12
    .catch Ljava/sql/SQLException; {:try_start_12 .. :try_end_12} :catch_2

    goto :goto_4

    .line 86
    :goto_2
    :try_start_13
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/SolvePoWChallengeIfRequiredOperation;->hasNoReasonForCancel()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 87
    invoke-virtual {p0, v1}, Lio/olvid/engine/networksend/operations/SolvePoWChallengeIfRequiredOperation;->cancel(Ljava/lang/Integer;)V

    .line 89
    :cond_c
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/SolvePoWChallengeIfRequiredOperation;->processCancel()V

    .line 91
    throw v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    :catchall_1
    move-exception v1

    .line 39
    :try_start_14
    throw v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    :catchall_2
    move-exception v2

    if-eqz v0, :cond_d

    .line 92
    :try_start_15
    invoke-virtual {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    :try_start_16
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_d
    :goto_3
    throw v2
    :try_end_16
    .catch Ljava/sql/SQLException; {:try_start_16 .. :try_end_16} :catch_2

    :catch_2
    move-exception v0

    .line 93
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    :cond_e
    :goto_4
    return-void
.end method

.method public getMessageUid()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 26
    iget-object v0, p0, Lio/olvid/engine/networksend/operations/SolvePoWChallengeIfRequiredOperation;->messageUid:Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method
