.class public Lio/olvid/engine/networksend/operations/UploadReturnReceiptOperation;
.super Lio/olvid/engine/datatypes/Operation;
.source "UploadReturnReceiptOperation.java"


# static fields
.field public static final RFC_RETURN_RECEIPT_NOT_FOUND:I = 0x1


# instance fields
.field private final prng:Lio/olvid/engine/crypto/PRNG;

.field private final returnReceiptId:J

.field private final sendManagerSessionFactory:Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;


# direct methods
.method public constructor <init>(Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;JLio/olvid/engine/crypto/PRNG;Lio/olvid/engine/datatypes/Operation$OnFinishCallback;Lio/olvid/engine/datatypes/Operation$OnCancelCallback;)V
    .locals 1

    .line 29
    invoke-static {p2, p3}, Lio/olvid/engine/datatypes/UID;->fromLong(J)Lio/olvid/engine/datatypes/UID;

    move-result-object v0

    invoke-direct {p0, v0, p5, p6}, Lio/olvid/engine/datatypes/Operation;-><init>(Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Operation$OnFinishCallback;Lio/olvid/engine/datatypes/Operation$OnCancelCallback;)V

    .line 30
    iput-object p1, p0, Lio/olvid/engine/networksend/operations/UploadReturnReceiptOperation;->sendManagerSessionFactory:Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;

    .line 31
    iput-wide p2, p0, Lio/olvid/engine/networksend/operations/UploadReturnReceiptOperation;->returnReceiptId:J

    .line 32
    iput-object p4, p0, Lio/olvid/engine/networksend/operations/UploadReturnReceiptOperation;->prng:Lio/olvid/engine/crypto/PRNG;

    return-void
.end method


# virtual methods
.method public doCancel()V
    .locals 0

    return-void
.end method

.method public doExecute()V
    .locals 13

    .line 48
    :try_start_0
    iget-object v0, p0, Lio/olvid/engine/networksend/operations/UploadReturnReceiptOperation;->sendManagerSessionFactory:Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;

    invoke-interface {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;->getSession()Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    .line 50
    :try_start_1
    iget-wide v2, p0, Lio/olvid/engine/networksend/operations/UploadReturnReceiptOperation;->returnReceiptId:J

    invoke-static {v0, v2, v3}, Lio/olvid/engine/networksend/databases/ReturnReceipt;->get(Lio/olvid/engine/networksend/datatypes/SendManagerSession;J)Lio/olvid/engine/networksend/databases/ReturnReceipt;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 53
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/networksend/operations/UploadReturnReceiptOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    :try_start_2
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadReturnReceiptOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    invoke-virtual {p0, v1}, Lio/olvid/engine/networksend/operations/UploadReturnReceiptOperation;->cancel(Ljava/lang/Integer;)V

    .line 97
    :cond_0
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadReturnReceiptOperation;->processCancel()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_1

    .line 100
    :try_start_3
    invoke-virtual {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    return-void

    .line 56
    :cond_2
    :try_start_4
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadReturnReceiptOperation;->cancelWasRequested()Z

    move-result v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_5

    .line 94
    :try_start_5
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadReturnReceiptOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 95
    invoke-virtual {p0, v1}, Lio/olvid/engine/networksend/operations/UploadReturnReceiptOperation;->cancel(Ljava/lang/Integer;)V

    .line 97
    :cond_3
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadReturnReceiptOperation;->processCancel()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_4

    .line 100
    :try_start_6
    invoke-virtual {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_4
    return-void

    :cond_5
    const/4 v4, 0x2

    :try_start_7
    new-array v4, v4, [Lio/olvid/engine/encoder/Encoded;

    const/4 v5, 0x0

    .line 62
    invoke-virtual {v2}, Lio/olvid/engine/networksend/databases/ReturnReceipt;->getOwnedIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v6

    invoke-static {v6}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v6

    aput-object v6, v4, v5

    .line 63
    invoke-virtual {v2}, Lio/olvid/engine/networksend/databases/ReturnReceipt;->getStatus()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v5, v6}, Lio/olvid/engine/encoder/Encoded;->of(J)Lio/olvid/engine/encoder/Encoded;

    move-result-object v5

    aput-object v5, v4, v3

    .line 61
    invoke-static {v4}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v3

    .line 65
    invoke-virtual {v2}, Lio/olvid/engine/networksend/databases/ReturnReceipt;->getKey()Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    move-result-object v4

    invoke-static {v4}, Lio/olvid/engine/crypto/Suite;->getAuthEnc(Lio/olvid/engine/datatypes/key/CryptographicKey;)Lio/olvid/engine/crypto/AuthEnc;

    move-result-object v4

    .line 66
    invoke-virtual {v2}, Lio/olvid/engine/networksend/databases/ReturnReceipt;->getKey()Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    move-result-object v5

    invoke-virtual {v3}, Lio/olvid/engine/encoder/Encoded;->getBytes()[B

    move-result-object v3

    iget-object v6, p0, Lio/olvid/engine/networksend/operations/UploadReturnReceiptOperation;->prng:Lio/olvid/engine/crypto/PRNG;

    invoke-interface {v4, v5, v3, v6}, Lio/olvid/engine/crypto/AuthEnc;->encrypt(Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;[BLio/olvid/engine/crypto/PRNG;)Lio/olvid/engine/datatypes/EncryptedBytes;

    move-result-object v12

    .line 68
    new-instance v3, Lio/olvid/engine/networksend/operations/UploadReturnReceiptServerMethod;

    .line 69
    invoke-virtual {v2}, Lio/olvid/engine/networksend/databases/ReturnReceipt;->getContactIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    invoke-virtual {v4}, Lio/olvid/engine/datatypes/Identity;->getServer()Ljava/lang/String;

    move-result-object v8

    .line 70
    invoke-virtual {v2}, Lio/olvid/engine/networksend/databases/ReturnReceipt;->getContactIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v9

    .line 71
    invoke-virtual {v2}, Lio/olvid/engine/networksend/databases/ReturnReceipt;->getContactDeviceUids()[Lio/olvid/engine/datatypes/UID;

    move-result-object v10

    .line 72
    invoke-virtual {v2}, Lio/olvid/engine/networksend/databases/ReturnReceipt;->getNonce()[B

    move-result-object v11

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lio/olvid/engine/networksend/operations/UploadReturnReceiptServerMethod;-><init>(Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/datatypes/UID;[BLio/olvid/engine/datatypes/EncryptedBytes;)V

    .line 75
    invoke-virtual {v3}, Lio/olvid/engine/networksend/operations/UploadReturnReceiptServerMethod;->execute()B

    move-result v3

    .line 77
    iget-object v4, v0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v4}, Lio/olvid/engine/datatypes/Session;->startTransaction()V

    if-eqz v3, :cond_7

    .line 84
    invoke-virtual {p0, v1}, Lio/olvid/engine/networksend/operations/UploadReturnReceiptOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 94
    :try_start_8
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadReturnReceiptOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 95
    invoke-virtual {p0, v1}, Lio/olvid/engine/networksend/operations/UploadReturnReceiptOperation;->cancel(Ljava/lang/Integer;)V

    .line 97
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadReturnReceiptOperation;->processCancel()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    .line 80
    :cond_7
    :try_start_9
    invoke-virtual {v2}, Lio/olvid/engine/networksend/databases/ReturnReceipt;->delete()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 91
    :try_start_a
    iget-object v1, v0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Session;->commit()V

    .line 92
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadReturnReceiptOperation;->setFinished()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v0, :cond_8

    .line 100
    :try_start_b
    invoke-virtual {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_b
    .catch Ljava/sql/SQLException; {:try_start_b .. :try_end_b} :catch_1

    :cond_8
    return-void

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    .line 87
    :try_start_c
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 88
    iget-object v2, v0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Session;->rollback()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 94
    :try_start_d
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadReturnReceiptOperation;->hasNoReasonForCancel()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 95
    invoke-virtual {p0, v1}, Lio/olvid/engine/networksend/operations/UploadReturnReceiptOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_0

    :goto_1
    if-eqz v0, :cond_b

    .line 100
    :try_start_e
    invoke-virtual {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_e
    .catch Ljava/sql/SQLException; {:try_start_e .. :try_end_e} :catch_1

    goto :goto_4

    .line 94
    :goto_2
    :try_start_f
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadReturnReceiptOperation;->hasNoReasonForCancel()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 95
    invoke-virtual {p0, v1}, Lio/olvid/engine/networksend/operations/UploadReturnReceiptOperation;->cancel(Ljava/lang/Integer;)V

    .line 97
    :cond_9
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadReturnReceiptOperation;->processCancel()V

    .line 99
    throw v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :catchall_1
    move-exception v1

    .line 48
    :try_start_10
    throw v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :catchall_2
    move-exception v2

    if-eqz v0, :cond_a

    .line 100
    :try_start_11
    invoke-virtual {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    :try_start_12
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    :goto_3
    throw v2
    :try_end_12
    .catch Ljava/sql/SQLException; {:try_start_12 .. :try_end_12} :catch_1

    :catch_1
    move-exception v0

    .line 101
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    :cond_b
    :goto_4
    return-void
.end method

.method public getReturnReceiptId()J
    .locals 2

    .line 36
    iget-wide v0, p0, Lio/olvid/engine/networksend/operations/UploadReturnReceiptOperation;->returnReceiptId:J

    return-wide v0
.end method
