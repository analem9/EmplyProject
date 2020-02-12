.class Lio/olvid/engine/networkfetch/operations/GetTokenOperation;
.super Lio/olvid/engine/datatypes/Operation;
.source "GetTokenOperation.java"


# instance fields
.field private final fetchManagerSessionFactory:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;

.field private final identity:Lio/olvid/engine/datatypes/Identity;


# direct methods
.method public constructor <init>(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;Lio/olvid/engine/datatypes/Identity;)V
    .locals 2

    .line 22
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/Identity;->computeUniqueUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lio/olvid/engine/datatypes/Operation;-><init>(Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Operation$OnFinishCallback;Lio/olvid/engine/datatypes/Operation$OnCancelCallback;)V

    .line 23
    iput-object p1, p0, Lio/olvid/engine/networkfetch/operations/GetTokenOperation;->fetchManagerSessionFactory:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;

    .line 24
    iput-object p2, p0, Lio/olvid/engine/networkfetch/operations/GetTokenOperation;->identity:Lio/olvid/engine/datatypes/Identity;

    return-void
.end method


# virtual methods
.method public doCancel()V
    .locals 0

    return-void
.end method

.method public doExecute()V
    .locals 8

    .line 41
    :try_start_0
    iget-object v0, p0, Lio/olvid/engine/networkfetch/operations/GetTokenOperation;->fetchManagerSessionFactory:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;

    invoke-interface {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;->getSession()Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    .line 43
    :try_start_1
    iget-object v2, p0, Lio/olvid/engine/networkfetch/operations/GetTokenOperation;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-static {v0, v2}, Lio/olvid/engine/networkfetch/databases/ServerSession;->get(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/networkfetch/databases/ServerSession;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x2

    .line 46
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/networkfetch/operations/GetTokenOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    :try_start_2
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/GetTokenOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    invoke-virtual {p0, v1}, Lio/olvid/engine/networkfetch/operations/GetTokenOperation;->cancel(Ljava/lang/Integer;)V

    .line 95
    :cond_0
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/GetTokenOperation;->processCancel()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_1

    .line 98
    :try_start_3
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    return-void

    .line 49
    :cond_2
    :try_start_4
    invoke-virtual {v2}, Lio/olvid/engine/networkfetch/databases/ServerSession;->getNonce()[B

    move-result-object v3

    if-nez v3, :cond_5

    const/4 v2, 0x5

    .line 50
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/networkfetch/operations/GetTokenOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 92
    :try_start_5
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/GetTokenOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 93
    invoke-virtual {p0, v1}, Lio/olvid/engine/networkfetch/operations/GetTokenOperation;->cancel(Ljava/lang/Integer;)V

    .line 95
    :cond_3
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/GetTokenOperation;->processCancel()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_4

    .line 98
    :try_start_6
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_4
    return-void

    .line 53
    :cond_5
    :try_start_7
    invoke-virtual {v2}, Lio/olvid/engine/networkfetch/databases/ServerSession;->getResponse()[B

    move-result-object v3

    const/4 v4, 0x4

    if-nez v3, :cond_8

    .line 54
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/networkfetch/operations/GetTokenOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 92
    :try_start_8
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/GetTokenOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 93
    invoke-virtual {p0, v1}, Lio/olvid/engine/networkfetch/operations/GetTokenOperation;->cancel(Ljava/lang/Integer;)V

    .line 95
    :cond_6
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/GetTokenOperation;->processCancel()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v0, :cond_7

    .line 98
    :try_start_9
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_9
    .catch Ljava/sql/SQLException; {:try_start_9 .. :try_end_9} :catch_1

    :cond_7
    return-void

    .line 57
    :cond_8
    :try_start_a
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/GetTokenOperation;->cancelWasRequested()Z

    move-result v3
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v3, :cond_b

    .line 92
    :try_start_b
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/GetTokenOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 93
    invoke-virtual {p0, v1}, Lio/olvid/engine/networkfetch/operations/GetTokenOperation;->cancel(Ljava/lang/Integer;)V

    .line 95
    :cond_9
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/GetTokenOperation;->processCancel()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v0, :cond_a

    .line 98
    :try_start_c
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_c
    .catch Ljava/sql/SQLException; {:try_start_c .. :try_end_c} :catch_1

    :cond_a
    return-void

    .line 61
    :cond_b
    :try_start_d
    new-instance v3, Lio/olvid/engine/networkfetch/operations/GetTokenServerMethod;

    iget-object v5, p0, Lio/olvid/engine/networkfetch/operations/GetTokenOperation;->identity:Lio/olvid/engine/datatypes/Identity;

    .line 63
    invoke-virtual {v2}, Lio/olvid/engine/networkfetch/databases/ServerSession;->getResponse()[B

    move-result-object v6

    .line 64
    invoke-virtual {v2}, Lio/olvid/engine/networkfetch/databases/ServerSession;->getNonce()[B

    move-result-object v7

    invoke-direct {v3, v5, v6, v7}, Lio/olvid/engine/networkfetch/operations/GetTokenServerMethod;-><init>(Lio/olvid/engine/datatypes/Identity;[B[B)V

    .line 67
    invoke-virtual {v3}, Lio/olvid/engine/networkfetch/operations/GetTokenServerMethod;->execute()B

    move-result v5

    .line 69
    iget-object v6, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v6}, Lio/olvid/engine/datatypes/Session;->startTransaction()V

    if-eqz v5, :cond_11

    if-eq v5, v4, :cond_e

    const/4 v2, 0x1

    .line 81
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/networkfetch/operations/GetTokenOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 92
    :try_start_e
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/GetTokenOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 93
    invoke-virtual {p0, v1}, Lio/olvid/engine/networkfetch/operations/GetTokenOperation;->cancel(Ljava/lang/Integer;)V

    .line 95
    :cond_c
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/GetTokenOperation;->processCancel()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    if-eqz v0, :cond_d

    .line 98
    :try_start_f
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_f
    .catch Ljava/sql/SQLException; {:try_start_f .. :try_end_f} :catch_1

    :cond_d
    return-void

    .line 76
    :cond_e
    :try_start_10
    invoke-virtual {v2}, Lio/olvid/engine/networkfetch/databases/ServerSession;->delete()V

    .line 77
    iget-object v2, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Session;->commit()V

    const/4 v2, 0x7

    .line 78
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/networkfetch/operations/GetTokenOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 92
    :try_start_11
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/GetTokenOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 93
    invoke-virtual {p0, v1}, Lio/olvid/engine/networkfetch/operations/GetTokenOperation;->cancel(Ljava/lang/Integer;)V

    .line 95
    :cond_f
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/GetTokenOperation;->processCancel()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    if-eqz v0, :cond_10

    .line 98
    :try_start_12
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_12
    .catch Ljava/sql/SQLException; {:try_start_12 .. :try_end_12} :catch_1

    :cond_10
    return-void

    .line 72
    :cond_11
    :try_start_13
    invoke-virtual {v3}, Lio/olvid/engine/networkfetch/operations/GetTokenServerMethod;->getToken()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/olvid/engine/networkfetch/databases/ServerSession;->setToken([B)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 89
    :try_start_14
    iget-object v1, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Session;->commit()V

    .line 90
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/GetTokenOperation;->setFinished()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    if-eqz v0, :cond_12

    .line 98
    :try_start_15
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_15
    .catch Ljava/sql/SQLException; {:try_start_15 .. :try_end_15} :catch_1

    :cond_12
    return-void

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 85
    :try_start_16
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 86
    iget-object v2, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Session;->rollback()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 92
    :try_start_17
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/GetTokenOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 93
    invoke-virtual {p0, v1}, Lio/olvid/engine/networkfetch/operations/GetTokenOperation;->cancel(Ljava/lang/Integer;)V

    .line 95
    :cond_13
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/GetTokenOperation;->processCancel()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    if-eqz v0, :cond_16

    .line 98
    :try_start_18
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_18
    .catch Ljava/sql/SQLException; {:try_start_18 .. :try_end_18} :catch_1

    goto :goto_2

    .line 92
    :goto_0
    :try_start_19
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/GetTokenOperation;->hasNoReasonForCancel()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 93
    invoke-virtual {p0, v1}, Lio/olvid/engine/networkfetch/operations/GetTokenOperation;->cancel(Ljava/lang/Integer;)V

    .line 95
    :cond_14
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/GetTokenOperation;->processCancel()V

    .line 97
    throw v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    :catchall_1
    move-exception v1

    .line 41
    :try_start_1a
    throw v1
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    :catchall_2
    move-exception v2

    if-eqz v0, :cond_15

    .line 98
    :try_start_1b
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    :try_start_1c
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_15
    :goto_1
    throw v2
    :try_end_1c
    .catch Ljava/sql/SQLException; {:try_start_1c .. :try_end_1c} :catch_1

    :catch_1
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    :cond_16
    :goto_2
    return-void
.end method

.method public getIdentity()Lio/olvid/engine/datatypes/Identity;
    .locals 1

    .line 28
    iget-object v0, p0, Lio/olvid/engine/networkfetch/operations/GetTokenOperation;->identity:Lio/olvid/engine/datatypes/Identity;

    return-object v0
.end method
