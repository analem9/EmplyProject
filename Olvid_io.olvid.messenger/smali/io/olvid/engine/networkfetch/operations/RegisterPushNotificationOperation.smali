.class public Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationOperation;
.super Lio/olvid/engine/datatypes/Operation;
.source "RegisterPushNotificationOperation.java"


# static fields
.field public static final RFC_INVALID_SERVER_SESSION:I = 0x2

.field public static final RFC_NETWORK_ERROR:I = 0x1


# instance fields
.field private final deviceUid:Lio/olvid/engine/datatypes/UID;

.field private final extraInfo:Lio/olvid/engine/encoder/Encoded;

.field private final fetchManagerSessionFactory:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;

.field private final identity:Lio/olvid/engine/datatypes/Identity;

.field private final pushNotificationType:B


# direct methods
.method public constructor <init>(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;BLio/olvid/engine/encoder/Encoded;Lio/olvid/engine/datatypes/Operation$OnFinishCallback;Lio/olvid/engine/datatypes/Operation$OnCancelCallback;)V
    .locals 1

    .line 30
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/Identity;->computeUniqueUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v0

    invoke-direct {p0, v0, p6, p7}, Lio/olvid/engine/datatypes/Operation;-><init>(Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Operation$OnFinishCallback;Lio/olvid/engine/datatypes/Operation$OnCancelCallback;)V

    .line 31
    iput-object p1, p0, Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationOperation;->fetchManagerSessionFactory:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;

    .line 32
    iput-object p2, p0, Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationOperation;->identity:Lio/olvid/engine/datatypes/Identity;

    .line 33
    iput-object p3, p0, Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationOperation;->deviceUid:Lio/olvid/engine/datatypes/UID;

    .line 34
    iput-byte p4, p0, Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationOperation;->pushNotificationType:B

    .line 35
    iput-object p5, p0, Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationOperation;->extraInfo:Lio/olvid/engine/encoder/Encoded;

    return-void
.end method


# virtual methods
.method public doCancel()V
    .locals 0

    return-void
.end method

.method public doExecute()V
    .locals 11

    .line 63
    :try_start_0
    iget-object v0, p0, Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationOperation;->fetchManagerSessionFactory:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;

    invoke-interface {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSessionFactory;->getSession()Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    .line 65
    :try_start_1
    iget-object v2, p0, Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationOperation;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-static {v0, v2}, Lio/olvid/engine/networkfetch/databases/ServerSession;->getToken(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Lio/olvid/engine/datatypes/Identity;)[B

    move-result-object v2

    const/4 v9, 0x2

    if-nez v2, :cond_2

    .line 67
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    :try_start_2
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    invoke-virtual {p0, v1}, Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationOperation;->cancel(Ljava/lang/Integer;)V

    .line 108
    :cond_0
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationOperation;->processCancel()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_1

    .line 111
    :try_start_3
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    return-void

    .line 70
    :cond_2
    :try_start_4
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationOperation;->cancelWasRequested()Z

    move-result v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_5

    .line 105
    :try_start_5
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 106
    invoke-virtual {p0, v1}, Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationOperation;->cancel(Ljava/lang/Integer;)V

    .line 108
    :cond_3
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationOperation;->processCancel()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_4

    .line 111
    :try_start_6
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_4
    return-void

    .line 74
    :cond_5
    :try_start_7
    new-instance v10, Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationServerMethod;

    iget-object v4, p0, Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationOperation;->identity:Lio/olvid/engine/datatypes/Identity;

    iget-object v6, p0, Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationOperation;->deviceUid:Lio/olvid/engine/datatypes/UID;

    iget-byte v7, p0, Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationOperation;->pushNotificationType:B

    iget-object v8, p0, Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationOperation;->extraInfo:Lio/olvid/engine/encoder/Encoded;

    move-object v3, v10

    move-object v5, v2

    invoke-direct/range {v3 .. v8}, Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationServerMethod;-><init>(Lio/olvid/engine/datatypes/Identity;[BLio/olvid/engine/datatypes/UID;BLio/olvid/engine/encoder/Encoded;)V

    .line 81
    invoke-virtual {v10}, Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationServerMethod;->execute()B

    move-result v3

    .line 83
    iget-object v4, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v4}, Lio/olvid/engine/datatypes/Session;->startTransaction()V

    if-eqz v3, :cond_b

    const/4 v4, 0x4

    if-eq v3, v4, :cond_8

    const/4 v2, 0x1

    .line 94
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 105
    :try_start_8
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 106
    invoke-virtual {p0, v1}, Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationOperation;->cancel(Ljava/lang/Integer;)V

    .line 108
    :cond_6
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationOperation;->processCancel()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v0, :cond_7

    .line 111
    :try_start_9
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_9
    .catch Ljava/sql/SQLException; {:try_start_9 .. :try_end_9} :catch_1

    :cond_7
    return-void

    .line 89
    :cond_8
    :try_start_a
    iget-object v3, p0, Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationOperation;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-static {v0, v2, v3}, Lio/olvid/engine/networkfetch/databases/ServerSession;->deleteCurrentTokenIfEqualTo(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;[BLio/olvid/engine/datatypes/Identity;)V

    .line 90
    iget-object v2, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Session;->commit()V

    .line 91
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 105
    :try_start_b
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 106
    invoke-virtual {p0, v1}, Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationOperation;->cancel(Ljava/lang/Integer;)V

    .line 108
    :cond_9
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationOperation;->processCancel()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v0, :cond_a

    .line 111
    :try_start_c
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_c
    .catch Ljava/sql/SQLException; {:try_start_c .. :try_end_c} :catch_1

    :cond_a
    return-void

    .line 102
    :cond_b
    :try_start_d
    iget-object v1, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Session;->commit()V

    .line 103
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationOperation;->setFinished()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    if-eqz v0, :cond_c

    .line 111
    :try_start_e
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_e
    .catch Ljava/sql/SQLException; {:try_start_e .. :try_end_e} :catch_1

    :cond_c
    return-void

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 98
    :try_start_f
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    iget-object v2, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Session;->rollback()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 105
    :try_start_10
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 106
    invoke-virtual {p0, v1}, Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationOperation;->cancel(Ljava/lang/Integer;)V

    .line 108
    :cond_d
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationOperation;->processCancel()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    if-eqz v0, :cond_10

    .line 111
    :try_start_11
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_11
    .catch Ljava/sql/SQLException; {:try_start_11 .. :try_end_11} :catch_1

    goto :goto_2

    .line 105
    :goto_0
    :try_start_12
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationOperation;->hasNoReasonForCancel()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 106
    invoke-virtual {p0, v1}, Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationOperation;->cancel(Ljava/lang/Integer;)V

    .line 108
    :cond_e
    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationOperation;->processCancel()V

    .line 110
    throw v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    :catchall_1
    move-exception v1

    .line 63
    :try_start_13
    throw v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    :catchall_2
    move-exception v2

    if-eqz v0, :cond_f

    .line 111
    :try_start_14
    invoke-virtual {v0}, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    :try_start_15
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_f
    :goto_1
    throw v2
    :try_end_15
    .catch Ljava/sql/SQLException; {:try_start_15 .. :try_end_15} :catch_1

    :catch_1
    move-exception v0

    .line 112
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    :cond_10
    :goto_2
    return-void
.end method

.method public getDeviceUid()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 44
    iget-object v0, p0, Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationOperation;->deviceUid:Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method

.method public getExtraInfo()Lio/olvid/engine/encoder/Encoded;
    .locals 1

    .line 52
    iget-object v0, p0, Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationOperation;->extraInfo:Lio/olvid/engine/encoder/Encoded;

    return-object v0
.end method

.method public getIdentity()Lio/olvid/engine/datatypes/Identity;
    .locals 1

    .line 40
    iget-object v0, p0, Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationOperation;->identity:Lio/olvid/engine/datatypes/Identity;

    return-object v0
.end method

.method public getPushNotificationType()B
    .locals 1

    .line 48
    iget-byte v0, p0, Lio/olvid/engine/networkfetch/operations/RegisterPushNotificationOperation;->pushNotificationType:B

    return v0
.end method
