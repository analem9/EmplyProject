.class public Lio/olvid/engine/networkfetch/operations/SolveChallengeOperation;
.super Lio/olvid/engine/datatypes/Operation;
.source "SolveChallengeOperation.java"


# instance fields
.field private final fetchManagerSessionFactory:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;

.field private final identity:Lio/olvid/engine/datatypes/Identity;

.field private final solveChallengeDelegate:Lio/olvid/engine/metamanager/SolveChallengeDelegate;


# direct methods
.method public constructor <init>(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/metamanager/SolveChallengeDelegate;)V
    .locals 2

    .line 22
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/Identity;->computeUniqueUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lio/olvid/engine/datatypes/Operation;-><init>(Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Operation$OnFinishCallback;Lio/olvid/engine/datatypes/Operation$OnCancelCallback;)V

    .line 23
    iput-object p1, p0, Lio/olvid/engine/networkfetch/operations/SolveChallengeOperation;->fetchManagerSessionFactory:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;

    .line 24
    iput-object p2, p0, Lio/olvid/engine/networkfetch/operations/SolveChallengeOperation;->identity:Lio/olvid/engine/datatypes/Identity;

    .line 25
    iput-object p3, p0, Lio/olvid/engine/networkfetch/operations/SolveChallengeOperation;->solveChallengeDelegate:Lio/olvid/engine/metamanager/SolveChallengeDelegate;

    return-void
.end method


# virtual methods
.method public doCancel()V
    .locals 0

    return-void
.end method

.method public doExecute()V
    .locals 7

    .line 41
    :try_start_0
    iget-object v0, p0, Lio/olvid/engine/networkfetch/operations/SolveChallengeOperation;->fetchManagerSessionFactory:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;

    invoke-interface {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;->getSession()Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v1, 0x0

    .line 43
    :try_start_1
    iget-object v2, p0, Lio/olvid/engine/networkfetch/operations/SolveChallengeOperation;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-static {v0, v2}, Lio/olvid/engine/networkfetch/databases/ServerSession;->get(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/networkfetch/databases/ServerSession;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x2

    .line 46
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/networkfetch/operations/SolveChallengeOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    :try_start_2
    invoke-virtual {p0, v1}, Lio/olvid/engine/networkfetch/operations/SolveChallengeOperation;->cancel(Ljava/lang/Integer;)V

    .line 80
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/SolveChallengeOperation;->processCancel()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_0

    .line 83
    :try_start_3
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_0
    return-void

    .line 49
    :cond_1
    :try_start_4
    invoke-virtual {v2}, Lio/olvid/engine/networkfetch/databases/ServerSession;->getResponse()[B

    move-result-object v3

    if-nez v3, :cond_6

    invoke-virtual {v2}, Lio/olvid/engine/networkfetch/databases/ServerSession;->getToken()[B

    move-result-object v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {v2}, Lio/olvid/engine/networkfetch/databases/ServerSession;->getChallenge()[B

    move-result-object v3

    if-nez v3, :cond_4

    const/4 v2, 0x3

    .line 54
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/networkfetch/operations/SolveChallengeOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 79
    :try_start_5
    invoke-virtual {p0, v1}, Lio/olvid/engine/networkfetch/operations/SolveChallengeOperation;->cancel(Ljava/lang/Integer;)V

    .line 80
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/SolveChallengeOperation;->processCancel()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_3

    .line 83
    :try_start_6
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_3
    return-void

    :cond_4
    :try_start_7
    const-string v3, "prng_hmac_sha-256"

    .line 58
    invoke-static {v3}, Lio/olvid/engine/crypto/Suite;->getPRNGService(Ljava/lang/String;)Lio/olvid/engine/crypto/PRNGService;

    move-result-object v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 61
    :try_start_8
    iget-object v4, p0, Lio/olvid/engine/networkfetch/operations/SolveChallengeOperation;->solveChallengeDelegate:Lio/olvid/engine/metamanager/SolveChallengeDelegate;

    invoke-virtual {v2}, Lio/olvid/engine/networkfetch/databases/ServerSession;->getChallenge()[B

    move-result-object v5

    iget-object v6, p0, Lio/olvid/engine/networkfetch/operations/SolveChallengeOperation;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-interface {v4, v5, v6, v3}, Lio/olvid/engine/metamanager/SolveChallengeDelegate;->solveChallenge([BLio/olvid/engine/datatypes/Identity;Lio/olvid/engine/crypto/PRNGService;)[B

    move-result-object v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 67
    :try_start_9
    iget-object v4, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v4}, Lio/olvid/engine/datatypes/Session;->startTransaction()V

    .line 68
    invoke-virtual {v2}, Lio/olvid/engine/networkfetch/databases/ServerSession;->getChallenge()[B

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lio/olvid/engine/networkfetch/databases/ServerSession;->setResponseForChallenge([B[B)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 76
    :try_start_a
    iget-object v1, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Session;->commit()V

    .line 77
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/SolveChallengeOperation;->setFinished()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_1

    :catch_0
    const/4 v2, 0x6

    .line 63
    :try_start_b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/networkfetch/operations/SolveChallengeOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 79
    :try_start_c
    invoke-virtual {p0, v1}, Lio/olvid/engine/networkfetch/operations/SolveChallengeOperation;->cancel(Ljava/lang/Integer;)V

    .line 80
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/SolveChallengeOperation;->processCancel()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-eqz v0, :cond_5

    .line 83
    :try_start_d
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_d
    .catch Ljava/sql/SQLException; {:try_start_d .. :try_end_d} :catch_2

    :cond_5
    return-void

    .line 76
    :cond_6
    :goto_0
    :try_start_e
    iget-object v1, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Session;->commit()V

    .line 77
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/SolveChallengeOperation;->setFinished()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    if-eqz v0, :cond_7

    .line 83
    :try_start_f
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_f
    .catch Ljava/sql/SQLException; {:try_start_f .. :try_end_f} :catch_2

    :cond_7
    return-void

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v2

    .line 72
    :try_start_10
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 73
    iget-object v2, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Session;->rollback()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 79
    :try_start_11
    invoke-virtual {p0, v1}, Lio/olvid/engine/networkfetch/operations/SolveChallengeOperation;->cancel(Ljava/lang/Integer;)V

    .line 80
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/SolveChallengeOperation;->processCancel()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :goto_1
    if-eqz v0, :cond_9

    .line 83
    :try_start_12
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_12
    .catch Ljava/sql/SQLException; {:try_start_12 .. :try_end_12} :catch_2

    goto :goto_4

    .line 79
    :goto_2
    :try_start_13
    invoke-virtual {p0, v1}, Lio/olvid/engine/networkfetch/operations/SolveChallengeOperation;->cancel(Ljava/lang/Integer;)V

    .line 80
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/SolveChallengeOperation;->processCancel()V

    .line 82
    throw v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    :catchall_1
    move-exception v1

    .line 41
    :try_start_14
    throw v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    :catchall_2
    move-exception v2

    if-eqz v0, :cond_8

    .line 83
    :try_start_15
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    :try_start_16
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_3
    throw v2
    :try_end_16
    .catch Ljava/sql/SQLException; {:try_start_16 .. :try_end_16} :catch_2

    :catch_2
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    :cond_9
    :goto_4
    return-void
.end method

.method public getIdentity()Lio/olvid/engine/datatypes/Identity;
    .locals 1

    .line 29
    iget-object v0, p0, Lio/olvid/engine/networkfetch/operations/SolveChallengeOperation;->identity:Lio/olvid/engine/datatypes/Identity;

    return-object v0
.end method
