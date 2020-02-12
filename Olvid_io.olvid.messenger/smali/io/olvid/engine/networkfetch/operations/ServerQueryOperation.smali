.class public Lio/olvid/engine/networkfetch/operations/ServerQueryOperation;
.super Lio/olvid/engine/datatypes/Operation;
.source "ServerQueryOperation.java"


# static fields
.field public static final RFC_BAD_ENCODED_SERVER_QUERY:I = 0x2

.field public static final RFC_INVALID_SERVER_SESSION:I = 0x3

.field public static final RFC_NETWORK_ERROR:I = 0x1


# instance fields
.field private final fetchManagerSessionFactory:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;

.field private serverQuery:Lio/olvid/engine/datatypes/containers/ServerQuery;

.field private final serverQueryUid:Lio/olvid/engine/datatypes/UID;

.field private serverResponse:Lio/olvid/engine/encoder/Encoded;


# direct methods
.method public constructor <init>(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Operation$OnFinishCallback;Lio/olvid/engine/datatypes/Operation$OnCancelCallback;)V
    .locals 0

    .line 31
    invoke-direct {p0, p2, p3, p4}, Lio/olvid/engine/datatypes/Operation;-><init>(Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Operation$OnFinishCallback;Lio/olvid/engine/datatypes/Operation$OnCancelCallback;)V

    .line 32
    iput-object p1, p0, Lio/olvid/engine/networkfetch/operations/ServerQueryOperation;->fetchManagerSessionFactory:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;

    .line 33
    iput-object p2, p0, Lio/olvid/engine/networkfetch/operations/ServerQueryOperation;->serverQueryUid:Lio/olvid/engine/datatypes/UID;

    return-void
.end method


# virtual methods
.method public doCancel()V
    .locals 0

    return-void
.end method

.method public doExecute()V
    .locals 8

    .line 56
    :try_start_0
    iget-object v0, p0, Lio/olvid/engine/networkfetch/operations/ServerQueryOperation;->fetchManagerSessionFactory:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;

    invoke-interface {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;->getSession()Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v1, 0x0

    .line 58
    :try_start_1
    iget-object v2, p0, Lio/olvid/engine/networkfetch/operations/ServerQueryOperation;->serverQueryUid:Lio/olvid/engine/datatypes/UID;

    invoke-static {v0, v2}, Lio/olvid/engine/networkfetch/databases/PendingServerQuery;->get(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/networkfetch/databases/PendingServerQuery;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x2

    .line 60
    :try_start_2
    invoke-virtual {v2}, Lio/olvid/engine/networkfetch/databases/PendingServerQuery;->getEncodedQuery()Lio/olvid/engine/encoder/Encoded;

    move-result-object v2

    invoke-static {v2}, Lio/olvid/engine/datatypes/containers/ServerQuery;->of(Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/datatypes/containers/ServerQuery;

    move-result-object v2

    iput-object v2, p0, Lio/olvid/engine/networkfetch/operations/ServerQueryOperation;->serverQuery:Lio/olvid/engine/datatypes/containers/ServerQuery;
    :try_end_2
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    :try_start_3
    iget-object v2, p0, Lio/olvid/engine/networkfetch/operations/ServerQueryOperation;->serverQuery:Lio/olvid/engine/datatypes/containers/ServerQuery;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/containers/ServerQuery;->getType()Lio/olvid/engine/datatypes/containers/ServerQuery$Type;

    move-result-object v2

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/containers/ServerQuery$Type;->getId()I

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_7

    if-eq v2, v4, :cond_3

    if-eq v2, v3, :cond_2

    .line 86
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/networkfetch/operations/ServerQueryOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 107
    :try_start_4
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/ServerQueryOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    invoke-virtual {p0, v1}, Lio/olvid/engine/networkfetch/operations/ServerQueryOperation;->cancel(Ljava/lang/Integer;)V

    .line 110
    :cond_0
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/ServerQueryOperation;->processCancel()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_1

    .line 113
    :try_start_5
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_1
    return-void

    .line 82
    :cond_2
    :try_start_6
    new-instance v2, Lio/olvid/engine/networkfetch/operations/GetUserDataServerMethod;

    iget-object v3, p0, Lio/olvid/engine/networkfetch/operations/ServerQueryOperation;->serverQuery:Lio/olvid/engine/datatypes/containers/ServerQuery;

    invoke-virtual {v3}, Lio/olvid/engine/datatypes/containers/ServerQuery;->getType()Lio/olvid/engine/datatypes/containers/ServerQuery$Type;

    move-result-object v3

    invoke-virtual {v3}, Lio/olvid/engine/datatypes/containers/ServerQuery$Type;->getIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    iget-object v5, p0, Lio/olvid/engine/networkfetch/operations/ServerQueryOperation;->serverQuery:Lio/olvid/engine/datatypes/containers/ServerQuery;

    invoke-virtual {v5}, Lio/olvid/engine/datatypes/containers/ServerQuery;->getType()Lio/olvid/engine/datatypes/containers/ServerQuery$Type;

    move-result-object v5

    invoke-virtual {v5}, Lio/olvid/engine/datatypes/containers/ServerQuery$Type;->getServerLabel()Lio/olvid/engine/datatypes/UID;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Lio/olvid/engine/networkfetch/operations/GetUserDataServerMethod;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;)V

    goto :goto_0

    .line 73
    :cond_3
    iget-object v2, p0, Lio/olvid/engine/networkfetch/operations/ServerQueryOperation;->serverQuery:Lio/olvid/engine/datatypes/containers/ServerQuery;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/containers/ServerQuery;->getType()Lio/olvid/engine/datatypes/containers/ServerQuery$Type;

    move-result-object v2

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/containers/ServerQuery$Type;->getIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v2

    invoke-static {v0, v2}, Lio/olvid/engine/networkfetch/databases/ServerSession;->getToken(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Lio/olvid/engine/datatypes/Identity;)[B

    move-result-object v2

    if-nez v2, :cond_6

    const/4 v2, 0x3

    .line 75
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/networkfetch/operations/ServerQueryOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 107
    :try_start_7
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/ServerQueryOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 108
    invoke-virtual {p0, v1}, Lio/olvid/engine/networkfetch/operations/ServerQueryOperation;->cancel(Ljava/lang/Integer;)V

    .line 110
    :cond_4
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/ServerQueryOperation;->processCancel()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v0, :cond_5

    .line 113
    :try_start_8
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_8
    .catch Ljava/sql/SQLException; {:try_start_8 .. :try_end_8} :catch_2

    :cond_5
    return-void

    .line 78
    :cond_6
    :try_start_9
    new-instance v3, Lio/olvid/engine/networkfetch/operations/PutUserDataServerMethod;

    iget-object v5, p0, Lio/olvid/engine/networkfetch/operations/ServerQueryOperation;->serverQuery:Lio/olvid/engine/datatypes/containers/ServerQuery;

    invoke-virtual {v5}, Lio/olvid/engine/datatypes/containers/ServerQuery;->getType()Lio/olvid/engine/datatypes/containers/ServerQuery$Type;

    move-result-object v5

    invoke-virtual {v5}, Lio/olvid/engine/datatypes/containers/ServerQuery$Type;->getIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v5

    iget-object v6, p0, Lio/olvid/engine/networkfetch/operations/ServerQueryOperation;->serverQuery:Lio/olvid/engine/datatypes/containers/ServerQuery;

    invoke-virtual {v6}, Lio/olvid/engine/datatypes/containers/ServerQuery;->getType()Lio/olvid/engine/datatypes/containers/ServerQuery$Type;

    move-result-object v6

    invoke-virtual {v6}, Lio/olvid/engine/datatypes/containers/ServerQuery$Type;->getServerLabel()Lio/olvid/engine/datatypes/UID;

    move-result-object v6

    iget-object v7, p0, Lio/olvid/engine/networkfetch/operations/ServerQueryOperation;->serverQuery:Lio/olvid/engine/datatypes/containers/ServerQuery;

    invoke-virtual {v7}, Lio/olvid/engine/datatypes/containers/ServerQuery;->getType()Lio/olvid/engine/datatypes/containers/ServerQuery$Type;

    move-result-object v7

    invoke-virtual {v7}, Lio/olvid/engine/datatypes/containers/ServerQuery$Type;->getData()Lio/olvid/engine/datatypes/EncryptedBytes;

    move-result-object v7

    invoke-direct {v3, v5, v2, v6, v7}, Lio/olvid/engine/networkfetch/operations/PutUserDataServerMethod;-><init>(Lio/olvid/engine/datatypes/Identity;[BLio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/EncryptedBytes;)V

    move-object v2, v3

    goto :goto_0

    .line 69
    :cond_7
    new-instance v2, Lio/olvid/engine/networkfetch/operations/DeviceDiscoveryServerMethod;

    iget-object v3, p0, Lio/olvid/engine/networkfetch/operations/ServerQueryOperation;->serverQuery:Lio/olvid/engine/datatypes/containers/ServerQuery;

    invoke-virtual {v3}, Lio/olvid/engine/datatypes/containers/ServerQuery;->getType()Lio/olvid/engine/datatypes/containers/ServerQuery$Type;

    move-result-object v3

    invoke-virtual {v3}, Lio/olvid/engine/datatypes/containers/ServerQuery$Type;->getIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v3

    invoke-direct {v2, v3}, Lio/olvid/engine/networkfetch/operations/DeviceDiscoveryServerMethod;-><init>(Lio/olvid/engine/datatypes/Identity;)V

    .line 90
    :goto_0
    invoke-virtual {v2}, Lio/olvid/engine/networkfetch/operations/ServerQueryServerMethod;->execute()B

    move-result v3

    if-eqz v3, :cond_a

    .line 98
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/networkfetch/operations/ServerQueryOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 107
    :try_start_a
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/ServerQueryOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 108
    invoke-virtual {p0, v1}, Lio/olvid/engine/networkfetch/operations/ServerQueryOperation;->cancel(Ljava/lang/Integer;)V

    .line 110
    :cond_8
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/ServerQueryOperation;->processCancel()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v0, :cond_9

    .line 113
    :try_start_b
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_b
    .catch Ljava/sql/SQLException; {:try_start_b .. :try_end_b} :catch_2

    :cond_9
    return-void

    .line 94
    :cond_a
    :try_start_c
    invoke-virtual {v2}, Lio/olvid/engine/networkfetch/operations/ServerQueryServerMethod;->getServerResponse()Lio/olvid/engine/encoder/Encoded;

    move-result-object v2

    iput-object v2, p0, Lio/olvid/engine/networkfetch/operations/ServerQueryOperation;->serverResponse:Lio/olvid/engine/encoder/Encoded;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 105
    :try_start_d
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/ServerQueryOperation;->setFinished()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    if-eqz v0, :cond_b

    .line 113
    :try_start_e
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_e
    .catch Ljava/sql/SQLException; {:try_start_e .. :try_end_e} :catch_2

    :cond_b
    return-void

    .line 62
    :catch_0
    :try_start_f
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/networkfetch/operations/ServerQueryOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 107
    :try_start_10
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/ServerQueryOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 108
    invoke-virtual {p0, v1}, Lio/olvid/engine/networkfetch/operations/ServerQueryOperation;->cancel(Ljava/lang/Integer;)V

    .line 110
    :cond_c
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/ServerQueryOperation;->processCancel()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    if-eqz v0, :cond_d

    .line 113
    :try_start_11
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_11
    .catch Ljava/sql/SQLException; {:try_start_11 .. :try_end_11} :catch_2

    :cond_d
    return-void

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    .line 102
    :try_start_12
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 107
    :try_start_13
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/ServerQueryOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 108
    invoke-virtual {p0, v1}, Lio/olvid/engine/networkfetch/operations/ServerQueryOperation;->cancel(Ljava/lang/Integer;)V

    .line 110
    :cond_e
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/ServerQueryOperation;->processCancel()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    if-eqz v0, :cond_11

    .line 113
    :try_start_14
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_14
    .catch Ljava/sql/SQLException; {:try_start_14 .. :try_end_14} :catch_2

    goto :goto_3

    .line 107
    :goto_1
    :try_start_15
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/ServerQueryOperation;->hasNoReasonForCancel()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 108
    invoke-virtual {p0, v1}, Lio/olvid/engine/networkfetch/operations/ServerQueryOperation;->cancel(Ljava/lang/Integer;)V

    .line 110
    :cond_f
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/ServerQueryOperation;->processCancel()V

    .line 112
    throw v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    :catchall_1
    move-exception v1

    .line 56
    :try_start_16
    throw v1
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    :catchall_2
    move-exception v2

    if-eqz v0, :cond_10

    .line 113
    :try_start_17
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    :try_start_18
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_10
    :goto_2
    throw v2
    :try_end_18
    .catch Ljava/sql/SQLException; {:try_start_18 .. :try_end_18} :catch_2

    :catch_2
    move-exception v0

    .line 114
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    :cond_11
    :goto_3
    return-void
.end method

.method public getServerQuery()Lio/olvid/engine/datatypes/containers/ServerQuery;
    .locals 1

    .line 41
    iget-object v0, p0, Lio/olvid/engine/networkfetch/operations/ServerQueryOperation;->serverQuery:Lio/olvid/engine/datatypes/containers/ServerQuery;

    return-object v0
.end method

.method public getServerQueryUid()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 37
    iget-object v0, p0, Lio/olvid/engine/networkfetch/operations/ServerQueryOperation;->serverQueryUid:Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method

.method public getServerResponse()Lio/olvid/engine/encoder/Encoded;
    .locals 1

    .line 45
    iget-object v0, p0, Lio/olvid/engine/networkfetch/operations/ServerQueryOperation;->serverResponse:Lio/olvid/engine/encoder/Encoded;

    return-object v0
.end method
