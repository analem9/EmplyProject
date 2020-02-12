.class public Lio/olvid/engine/networksend/databases/OutboxAttachment;
.super Ljava/lang/Object;
.source "OutboxAttachment.java"

# interfaces
.implements Lio/olvid/engine/datatypes/ObvDatabase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/engine/networksend/databases/OutboxAttachment$OutboxAttachmentCancelRequestedListener;,
        Lio/olvid/engine/networksend/databases/OutboxAttachment$OutboxAttachmentCanBeSentListener;
    }
.end annotation


# static fields
.field static final ACKNOWLEDGED:Ljava/lang/String; = "acknowledged"

.field static final ACKNOWLEDGED_CHUNK_COUNT:Ljava/lang/String; = "acknowledged_chunk_count"

.field static final ATTACHMENT_LENGTH:Ljava/lang/String; = "attachment_length"

.field static final ATTACHMENT_NUMBER:Ljava/lang/String; = "attachment_number"

.field static final CANCEL_EXTERNALLY_REQUESTED:Ljava/lang/String; = "cancel_externally_requested"

.field static final CHUNK_UPLOAD_PRIVATE_URLS:Ljava/lang/String; = "chunk_upload_private_urls"

.field static final CIPHERTEXT_CHUNK_LENGTH:Ljava/lang/String; = "ciphertext_chunk_length"

.field static final DELETE_AFTER_SEND:Ljava/lang/String; = "delete_after_send"

.field private static HOOK_BIT_CANCEL_REQUESTED:J = 0x4L

.field private static HOOK_BIT_FINISHED:J = 0x2L

.field private static HOOK_BIT_PROGRESS:J = 0x1L

.field static final KEY:Ljava/lang/String; = "key"

.field static final MESSAGE_UID:Ljava/lang/String; = "message_uid"

.field static final TABLE_NAME:Ljava/lang/String; = "outbox_attachment"

.field static final URL:Ljava/lang/String; = "url"


# instance fields
.field private acknowledged:Z

.field private acknowledgedChunkCount:I

.field private attachmentChunkLength:I

.field private attachmentLength:J

.field private attachmentNumber:I

.field private cancelExternallyRequested:Z

.field private chunkUploadPrivateUrls:Ljava/lang/String;

.field private ciphertextChunkLength:I

.field private ciphertextLength:J

.field private commitHookBits:J

.field private deleteAfterSend:Z

.field private key:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

.field private messageUid:Lio/olvid/engine/datatypes/UID;

.field private numberOfChunks:I

.field private final sendManagerSession:Lio/olvid/engine/networksend/datatypes/SendManagerSession;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lio/olvid/engine/networksend/datatypes/SendManagerSession;Lio/olvid/engine/datatypes/UID;ILjava/lang/String;ZJLio/olvid/engine/datatypes/key/symmetric/AuthEncKey;)V
    .locals 3

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 113
    iput v0, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->attachmentChunkLength:I

    .line 123
    iput v0, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->numberOfChunks:I

    const-wide/16 v1, 0x0

    .line 132
    iput-wide v1, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->ciphertextLength:J

    .line 430
    iput-wide v1, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->commitHookBits:J

    .line 258
    iput-object p1, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->sendManagerSession:Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    .line 259
    iput-object p2, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->messageUid:Lio/olvid/engine/datatypes/UID;

    .line 260
    iput p3, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->attachmentNumber:I

    .line 261
    iput-object p4, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->url:Ljava/lang/String;

    .line 262
    iput-boolean p5, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->deleteAfterSend:Z

    .line 263
    iput-wide p6, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->attachmentLength:J

    .line 264
    iput-object p8, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->key:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    .line 265
    iput v0, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->acknowledgedChunkCount:I

    .line 266
    iput-boolean v0, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->acknowledged:Z

    const/high16 p1, 0x200000

    .line 267
    iput p1, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->ciphertextChunkLength:I

    .line 268
    iput-boolean v0, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->cancelExternallyRequested:Z

    const/4 p1, 0x0

    .line 269
    iput-object p1, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->chunkUploadPrivateUrls:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lio/olvid/engine/networksend/datatypes/SendManagerSession;Ljava/sql/ResultSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 113
    iput v0, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->attachmentChunkLength:I

    .line 123
    iput v0, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->numberOfChunks:I

    const-wide/16 v0, 0x0

    .line 132
    iput-wide v0, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->ciphertextLength:J

    .line 430
    iput-wide v0, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->commitHookBits:J

    .line 273
    iput-object p1, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->sendManagerSession:Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    .line 274
    new-instance p1, Lio/olvid/engine/datatypes/UID;

    const-string v0, "message_uid"

    invoke-interface {p2, v0}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p1, v0}, Lio/olvid/engine/datatypes/UID;-><init>([B)V

    iput-object p1, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->messageUid:Lio/olvid/engine/datatypes/UID;

    const-string p1, "attachment_number"

    .line 275
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->attachmentNumber:I

    const-string p1, "url"

    .line 276
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->url:Ljava/lang/String;

    const-string p1, "delete_after_send"

    .line 277
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->deleteAfterSend:Z

    const-string p1, "attachment_length"

    .line 278
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->attachmentLength:J

    .line 280
    :try_start_0
    new-instance p1, Lio/olvid/engine/encoder/Encoded;

    const-string v0, "key"

    invoke-interface {p2, v0}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p1, v0}, Lio/olvid/engine/encoder/Encoded;-><init>([B)V

    invoke-virtual {p1}, Lio/olvid/engine/encoder/Encoded;->decodeSymmetricKey()Lio/olvid/engine/datatypes/key/symmetric/SymmetricKey;

    move-result-object p1

    check-cast p1, Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    iput-object p1, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->key:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;
    :try_end_0
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 282
    invoke-virtual {p1}, Lio/olvid/engine/encoder/DecodingException;->printStackTrace()V

    :goto_0
    const-string p1, "acknowledged_chunk_count"

    .line 284
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->acknowledgedChunkCount:I

    const-string p1, "acknowledged"

    .line 285
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->acknowledged:Z

    const-string p1, "ciphertext_chunk_length"

    .line 286
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->ciphertextChunkLength:I

    const-string p1, "cancel_externally_requested"

    .line 287
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->cancelExternallyRequested:Z

    const-string p1, "chunk_upload_private_urls"

    .line 288
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->chunkUploadPrivateUrls:Ljava/lang/String;

    return-void
.end method

.method public static computeUniqueUid(Lio/olvid/engine/datatypes/UID;I)Lio/olvid/engine/datatypes/UID;
    .locals 4

    const-string v0, "sha-256"

    .line 106
    invoke-static {v0}, Lio/olvid/engine/crypto/Suite;->getHash(Ljava/lang/String;)Lio/olvid/engine/crypto/Hash;

    move-result-object v0

    const/16 v1, 0x2d

    new-array v1, v1, [B

    .line 108
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object p0

    const/16 v2, 0x20

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-long p0, p1

    .line 109
    invoke-static {p0, p1}, Lio/olvid/engine/encoder/Encoded;->of(J)Lio/olvid/engine/encoder/Encoded;

    move-result-object p0

    invoke-virtual {p0}, Lio/olvid/engine/encoder/Encoded;->getBytes()[B

    move-result-object p0

    const/16 p1, 0xd

    invoke-static {p0, v3, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    new-instance p0, Lio/olvid/engine/datatypes/UID;

    invoke-interface {v0, v1}, Lio/olvid/engine/crypto/Hash;->digest([B)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lio/olvid/engine/datatypes/UID;-><init>([B)V

    return-object p0
.end method

.method public static create(Lio/olvid/engine/networksend/datatypes/SendManagerSession;Lio/olvid/engine/datatypes/UID;ILjava/lang/String;ZJLio/olvid/engine/datatypes/key/symmetric/AuthEncKey;)Lio/olvid/engine/networksend/databases/OutboxAttachment;
    .locals 11

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    if-nez p7, :cond_0

    goto :goto_0

    .line 248
    :cond_0
    :try_start_0
    new-instance v0, Lio/olvid/engine/networksend/databases/OutboxAttachment;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Lio/olvid/engine/networksend/databases/OutboxAttachment;-><init>(Lio/olvid/engine/networksend/datatypes/SendManagerSession;Lio/olvid/engine/datatypes/UID;ILjava/lang/String;ZJLio/olvid/engine/datatypes/key/symmetric/AuthEncKey;)V

    .line 249
    invoke-virtual {v0}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->insert()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 252
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v1
.end method

.method public static createTable(Lio/olvid/engine/datatypes/Session;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 295
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Session;->createStatement()Ljava/sql/Statement;

    move-result-object p0

    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS outbox_attachment (message_uid BLOB, attachment_number INT, url TEXT NOT NULL, delete_after_send BIT NOT NULL, attachment_length BIGINT NOT NULL, key BLOB NOT NULL, acknowledged_chunk_count INT NOT NULL, acknowledged BIT NOT NULL, ciphertext_chunk_length INT NOT NULL, cancel_externally_requested BIT NOT NULL, chunk_upload_private_urls TEXT, CONSTRAINT PK_outbox_attachment PRIMARY KEY(message_uid, attachment_number), FOREIGN KEY (message_uid) REFERENCES outbox_message(uid));"

    .line 296
    invoke-interface {p0, v0}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 310
    invoke-interface {p0}, Ljava/sql/Statement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 295
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_1

    .line 310
    :try_start_2
    invoke-interface {p0}, Ljava/sql/Statement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method static deleteAll(Lio/olvid/engine/networksend/datatypes/SendManagerSession;Lio/olvid/engine/datatypes/UID;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 353
    iget-object p0, p0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v0, "DELETE FROM outbox_attachment WHERE message_uid = ?;"

    invoke-virtual {p0, v0}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p0

    const/4 v0, 0x1

    .line 354
    :try_start_0
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 355
    invoke-interface {p0}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 356
    invoke-interface {p0}, Ljava/sql/PreparedStatement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 353
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p0, :cond_1

    .line 356
    :try_start_2
    invoke-interface {p0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0
.end method

.method public static get(Lio/olvid/engine/networksend/datatypes/SendManagerSession;Lio/olvid/engine/datatypes/UID;I)Lio/olvid/engine/networksend/databases/OutboxAttachment;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 387
    :cond_0
    iget-object v1, p0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v2, "SELECT * FROM outbox_attachment WHERE message_uid = ? AND attachment_number = ?;"

    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    const/4 v2, 0x1

    .line 389
    :try_start_0
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 p1, 0x2

    .line 390
    invoke-interface {v1, p1, p2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 391
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 392
    :try_start_1
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 393
    new-instance p2, Lio/olvid/engine/networksend/databases/OutboxAttachment;

    invoke-direct {p2, p0, p1}, Lio/olvid/engine/networksend/databases/OutboxAttachment;-><init>(Lio/olvid/engine/networksend/datatypes/SendManagerSession;Ljava/sql/ResultSet;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 397
    :try_start_2
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :cond_1
    if-eqz v1, :cond_2

    .line 398
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    :cond_2
    return-object p2

    :cond_3
    if-eqz p1, :cond_4

    .line 397
    :try_start_3
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_4
    if-eqz v1, :cond_5

    .line 398
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    :cond_5
    return-object v0

    :catchall_0
    move-exception p0

    .line 391
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p1, :cond_6

    .line 397
    :try_start_5
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_0
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception p0

    .line 387
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    move-exception p1

    if-eqz v1, :cond_7

    .line 398
    :try_start_8
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    throw p1
.end method

.method static getAll(Lio/olvid/engine/networksend/datatypes/SendManagerSession;Lio/olvid/engine/datatypes/UID;)[Lio/olvid/engine/networksend/databases/OutboxAttachment;
    .locals 4

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 366
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v2, "SELECT * FROM outbox_attachment WHERE message_uid = ?  ORDER BY attachment_number ASC;"

    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    .line 370
    :try_start_1
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 371
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 372
    :try_start_2
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 373
    :goto_0
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 374
    new-instance v3, Lio/olvid/engine/networksend/databases/OutboxAttachment;

    invoke-direct {v3, p0, p1}, Lio/olvid/engine/networksend/databases/OutboxAttachment;-><init>(Lio/olvid/engine/networksend/datatypes/SendManagerSession;Ljava/sql/ResultSet;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-array p0, v0, [Lio/olvid/engine/networksend/databases/OutboxAttachment;

    .line 376
    invoke-interface {v2, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lio/olvid/engine/networksend/databases/OutboxAttachment;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_2

    .line 377
    :try_start_3
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_2
    if-eqz v1, :cond_3

    .line 378
    :try_start_4
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    return-object p0

    :catchall_0
    move-exception p0

    .line 371
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz p1, :cond_4

    .line 377
    :try_start_6
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    :try_start_7
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p0

    .line 366
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception p1

    if-eqz v1, :cond_5

    .line 378
    :try_start_9
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v1

    :try_start_a
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    throw p1
    :try_end_a
    .catch Ljava/sql/SQLException; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    new-array p0, v0, [Lio/olvid/engine/networksend/databases/OutboxAttachment;

    return-object p0
.end method

.method public static getAllToCancel(Lio/olvid/engine/networksend/datatypes/SendManagerSession;)[Lio/olvid/engine/networksend/databases/OutboxAttachment;
    .locals 5

    const/4 v0, 0x0

    .line 402
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v2, "SELECT * FROM outbox_attachment WHERE cancel_externally_requested = 1  AND acknowledged = 0"

    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    :try_start_1
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 407
    :try_start_2
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 408
    :goto_0
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 409
    new-instance v4, Lio/olvid/engine/networksend/databases/OutboxAttachment;

    invoke-direct {v4, p0, v2}, Lio/olvid/engine/networksend/databases/OutboxAttachment;-><init>(Lio/olvid/engine/networksend/datatypes/SendManagerSession;Ljava/sql/ResultSet;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-array p0, v0, [Lio/olvid/engine/networksend/databases/OutboxAttachment;

    .line 411
    invoke-interface {v3, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lio/olvid/engine/networksend/databases/OutboxAttachment;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    .line 412
    :try_start_3
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_1
    if-eqz v1, :cond_2

    .line 413
    :try_start_4
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    return-object p0

    :catchall_0
    move-exception p0

    .line 406
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v3

    if-eqz v2, :cond_3

    .line 412
    :try_start_6
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v2

    :try_start_7
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p0

    .line 402
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception v2

    if-eqz v1, :cond_4

    .line 413
    :try_start_9
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v1

    :try_start_a
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw v2
    :try_end_a
    .catch Ljava/sql/SQLException; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    new-array p0, v0, [Lio/olvid/engine/networksend/databases/OutboxAttachment;

    return-object p0
.end method

.method public static upgradeTable(Lio/olvid/engine/datatypes/Session;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0xd

    if-ge p1, v0, :cond_1

    if-lt p2, v0, :cond_1

    .line 315
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MIGRATING `outbox_attachment` DATABASE FROM VERSION "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " TO 13"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    .line 316
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Session;->createStatement()Ljava/sql/Statement;

    move-result-object p0

    :try_start_0
    const-string p1, "ALTER TABLE outbox_attachment ADD COLUMN chunk_upload_private_urls TEXT DEFAULT NULL;"

    .line 317
    invoke-interface {p0, p1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    .line 318
    invoke-interface {p0}, Ljava/sql/Statement;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 316
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p0, :cond_0

    .line 318
    :try_start_2
    invoke-interface {p0}, Ljava/sql/Statement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p2

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->sendManagerSession:Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    iget-object v0, v0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "DELETE FROM outbox_attachment WHERE message_uid = ? AND attachment_number = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 346
    :try_start_0
    iget-object v2, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->messageUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x2

    .line 347
    iget v2, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->attachmentNumber:I

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 348
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 349
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 345
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    .line 349
    :try_start_2
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
.end method

.method public getAcknowledgedChunkCount()I
    .locals 1

    .line 81
    iget v0, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->acknowledgedChunkCount:I

    return v0
.end method

.method public getAttachmentLength()J
    .locals 2

    .line 73
    iget-wide v0, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->attachmentLength:J

    return-wide v0
.end method

.method public getAttachmentNumber()I
    .locals 1

    .line 61
    iget v0, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->attachmentNumber:I

    return v0
.end method

.method public getChunkUploadPrivateUrls()[Ljava/lang/String;
    .locals 3

    .line 97
    iget-object v0, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->chunkUploadPrivateUrls:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v1, -0x1

    const-string v2, "\u00a6"

    .line 100
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCiphertextChunkLength()I
    .locals 1

    .line 89
    iget v0, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->ciphertextChunkLength:I

    return v0
.end method

.method public getCiphertextLength()J
    .locals 5

    .line 135
    iget-wide v0, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->ciphertextLength:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 136
    iget-object v0, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->key:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    invoke-static {v0}, Lio/olvid/engine/crypto/Suite;->getAuthEnc(Lio/olvid/engine/datatypes/key/CryptographicKey;)Lio/olvid/engine/crypto/AuthEnc;

    move-result-object v0

    .line 137
    iget-wide v1, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->attachmentLength:J

    invoke-virtual {p0}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->getNumberOfChunks()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->attachmentChunkLength:I

    mul-int v3, v3, v4

    int-to-long v3, v3

    sub-long/2addr v1, v3

    long-to-int v2, v1

    .line 139
    invoke-virtual {p0}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->getNumberOfChunks()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget v3, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->ciphertextChunkLength:I

    mul-int v1, v1, v3

    invoke-static {v2}, Lio/olvid/engine/datatypes/Chunk;->lengthOfEncodedChunkFromLengthOfInnerData(I)I

    move-result v2

    invoke-interface {v0, v2}, Lio/olvid/engine/crypto/AuthEnc;->ciphertextLengthFromPlaintextLength(I)I

    move-result v0

    add-int/2addr v1, v0

    int-to-long v0, v1

    iput-wide v0, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->ciphertextLength:J

    .line 141
    :cond_0
    iget-wide v0, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->ciphertextLength:J

    return-wide v0
.end method

.method public getCleartextChunkLength()I
    .locals 2

    .line 116
    iget v0, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->attachmentChunkLength:I

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->key:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    invoke-static {v0}, Lio/olvid/engine/crypto/Suite;->getAuthEnc(Lio/olvid/engine/datatypes/key/CryptographicKey;)Lio/olvid/engine/crypto/AuthEnc;

    move-result-object v0

    .line 118
    iget v1, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->ciphertextChunkLength:I

    invoke-interface {v0, v1}, Lio/olvid/engine/crypto/AuthEnc;->plaintextLengthFromCiphertextLength(I)I

    move-result v0

    invoke-static {v0}, Lio/olvid/engine/datatypes/Chunk;->lengthOfInnerDataFromLengthOfEncodedChunk(I)I

    move-result v0

    iput v0, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->attachmentChunkLength:I

    .line 120
    :cond_0
    iget v0, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->attachmentChunkLength:I

    return v0
.end method

.method public getKey()Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;
    .locals 1

    .line 77
    iget-object v0, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->key:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    return-object v0
.end method

.method public getMessageUid()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 57
    iget-object v0, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->messageUid:Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method

.method public getNumberOfChunks()I
    .locals 4

    .line 126
    iget v0, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->numberOfChunks:I

    if-nez v0, :cond_0

    .line 127
    iget-wide v0, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->attachmentLength:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    invoke-virtual {p0}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->getCleartextChunkLength()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v1, v0

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->numberOfChunks:I

    .line 129
    :cond_0
    iget v0, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->numberOfChunks:I

    return v0
.end method

.method public getPriority()J
    .locals 2

    .line 154
    invoke-virtual {p0}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->getRemainingByteCountToSend()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRemainingByteCountToSend()J
    .locals 6

    .line 145
    invoke-virtual {p0}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->getCiphertextLength()J

    move-result-wide v0

    iget v2, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->ciphertextChunkLength:I

    int-to-long v2, v2

    iget v4, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->acknowledgedChunkCount:I

    int-to-long v4, v4

    mul-long v2, v2, v4

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-wide v2

    :cond_0
    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->url:Ljava/lang/String;

    return-object v0
.end method

.method public insert()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->sendManagerSession:Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    iget-object v0, v0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "INSERT INTO outbox_attachment VALUES (?,?,?,?,?, ?,?,?,?,?, ?);"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 326
    :try_start_0
    iget-object v2, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->messageUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x2

    .line 327
    iget v2, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->attachmentNumber:I

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v1, 0x3

    .line 328
    iget-object v2, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->url:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 v1, 0x4

    .line 329
    iget-boolean v2, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->deleteAfterSend:Z

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBoolean(IZ)V

    const/4 v1, 0x5

    .line 330
    iget-wide v2, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->attachmentLength:J

    invoke-interface {v0, v1, v2, v3}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    const/4 v1, 0x6

    .line 332
    iget-object v2, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->key:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    invoke-static {v2}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/key/symmetric/SymmetricKey;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v2

    invoke-virtual {v2}, Lio/olvid/engine/encoder/Encoded;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x7

    .line 333
    iget v2, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->acknowledgedChunkCount:I

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/16 v1, 0x8

    .line 334
    iget-boolean v2, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->acknowledged:Z

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBoolean(IZ)V

    const/16 v1, 0x9

    .line 335
    iget v2, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->ciphertextChunkLength:I

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/16 v1, 0xa

    .line 336
    iget-boolean v2, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->cancelExternallyRequested:Z

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBoolean(IZ)V

    const/16 v1, 0xb

    .line 338
    iget-object v2, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->chunkUploadPrivateUrls:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 339
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 340
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 325
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    .line 340
    :try_start_2
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
.end method

.method public isAcknowledged()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->acknowledged:Z

    return v0
.end method

.method public isCancelExternallyRequested()Z
    .locals 1

    .line 93
    iget-boolean v0, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->cancelExternallyRequested:Z

    return v0
.end method

.method messageIsAcknowledged()V
    .locals 5

    .line 461
    iget-object v0, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->sendManagerSession:Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    iget-object v0, v0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->outboxAttachmentCanBeSentListener:Lio/olvid/engine/networksend/databases/OutboxAttachment$OutboxAttachmentCanBeSentListener;

    if-eqz v0, :cond_0

    .line 462
    iget-boolean v0, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->acknowledged:Z

    if-nez v0, :cond_0

    .line 463
    iget-object v0, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->sendManagerSession:Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    iget-object v0, v0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->outboxAttachmentCanBeSentListener:Lio/olvid/engine/networksend/databases/OutboxAttachment$OutboxAttachmentCanBeSentListener;

    iget-object v1, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->messageUid:Lio/olvid/engine/datatypes/UID;

    iget v2, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->attachmentNumber:I

    invoke-virtual {p0}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->getPriority()J

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lio/olvid/engine/networksend/databases/OutboxAttachment$OutboxAttachmentCanBeSentListener;->outboxAttachmentCanBeSent(Lio/olvid/engine/datatypes/UID;IJ)V

    :cond_0
    return-void
.end method

.method public setAcknowledgedChunkCount(I)V
    .locals 6

    .line 184
    iget v0, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->acknowledgedChunkCount:I

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    const-string v1, "UPDATE outbox_attachment SET "

    if-le p1, v0, :cond_1

    .line 190
    iget-wide v2, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->commitHookBits:J

    sget-wide v4, Lio/olvid/engine/networksend/databases/OutboxAttachment;->HOOK_BIT_PROGRESS:J

    or-long/2addr v2, v4

    iput-wide v2, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->commitHookBits:J

    .line 191
    iget-object v0, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->sendManagerSession:Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    iget-object v0, v0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v0, p0}, Lio/olvid/engine/datatypes/Session;->addSessionCommitListener(Lio/olvid/engine/datatypes/ObvDatabase;)V

    .line 193
    :cond_1
    invoke-virtual {p0}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->getNumberOfChunks()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "acknowledged = 1, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 195
    iget-wide v2, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->commitHookBits:J

    sget-wide v4, Lio/olvid/engine/networksend/databases/OutboxAttachment;->HOOK_BIT_FINISHED:J

    or-long/2addr v2, v4

    iput-wide v2, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->commitHookBits:J

    .line 196
    iget-object v0, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->sendManagerSession:Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    iget-object v0, v0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v0, p0}, Lio/olvid/engine/datatypes/Session;->addSessionCommitListener(Lio/olvid/engine/datatypes/ObvDatabase;)V

    .line 198
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "acknowledged_chunk_count = ? WHERE message_uid = ? AND attachment_number = ?;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->sendManagerSession:Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    iget-object v1, v1, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1, v0}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v1, p1

    const/4 v3, 0x1

    .line 201
    :try_start_1
    invoke-interface {v0, v3, v1, v2}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    const/4 v1, 0x2

    .line 202
    iget-object v2, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->messageUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x3

    .line 203
    iget v2, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->attachmentNumber:I

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 204
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 205
    invoke-virtual {p0}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->getNumberOfChunks()I

    move-result v1

    if-ne p1, v1, :cond_3

    .line 206
    iput-boolean v3, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->acknowledged:Z

    .line 208
    :cond_3
    iput p1, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->acknowledgedChunkCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_5

    .line 209
    :try_start_2
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 200
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_4

    .line 209
    :try_start_4
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    throw v1
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    :cond_5
    :goto_1
    return-void
.end method

.method public setCancelExternallyRequested()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->sendManagerSession:Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    iget-object v0, v0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "UPDATE outbox_attachment SET cancel_externally_requested = 1 WHERE message_uid = ? AND attachment_number = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    .line 163
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->messageUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x2

    .line 164
    iget v3, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->attachmentNumber:I

    invoke-interface {v0, v1, v3}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 165
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 166
    iput-boolean v2, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->cancelExternallyRequested:Z

    .line 167
    iget-wide v1, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->commitHookBits:J

    sget-wide v3, Lio/olvid/engine/networksend/databases/OutboxAttachment;->HOOK_BIT_CANCEL_REQUESTED:J

    or-long/2addr v1, v3

    iput-wide v1, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->commitHookBits:J

    .line 168
    iget-object v1, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->sendManagerSession:Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    iget-object v1, v1, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1, p0}, Lio/olvid/engine/datatypes/Session;->addSessionCommitListener(Lio/olvid/engine/datatypes/ObvDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 169
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 161
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    .line 169
    :try_start_2
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
.end method

.method public setCancelProcessed()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->sendManagerSession:Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    iget-object v0, v0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "UPDATE outbox_attachment SET acknowledged = 1 WHERE cancel_externally_requested = 1 AND message_uid = ? AND attachment_number = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    .line 175
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->messageUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x2

    .line 176
    iget v3, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->attachmentNumber:I

    invoke-interface {v0, v1, v3}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 177
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 178
    iput-boolean v2, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->acknowledged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 179
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 173
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    .line 179
    :try_start_2
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
.end method

.method public setChunkUploadPrivateUrls([Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 214
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    .line 217
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v6, p1, v4

    if-nez v5, :cond_1

    const-string v5, "\u00a6"

    .line 221
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    :cond_1
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    goto :goto_0

    .line 226
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 228
    :goto_2
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->sendManagerSession:Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    iget-object v1, v1, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v2, "UPDATE outbox_attachment SET chunk_upload_private_urls = ?  WHERE message_uid = ?  AND attachment_number = ?;"

    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :try_start_1
    invoke-interface {v1, v0, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 v0, 0x2

    .line 232
    iget-object v2, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->messageUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v0, 0x3

    .line 233
    iget v2, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->attachmentNumber:I

    invoke-interface {v1, v0, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 234
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 235
    iput-object p1, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->chunkUploadPrivateUrls:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_5

    .line 236
    :try_start_2
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catchall_0
    move-exception p1

    .line 228
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_4

    .line 236
    :try_start_4
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw v0
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    :cond_5
    :goto_4
    return-void
.end method

.method public shouldBeDeletedAfterSend()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->deleteAfterSend:Z

    return v0
.end method

.method public wasCommitted()V
    .locals 9

    .line 437
    iget-wide v0, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->commitHookBits:J

    sget-wide v2, Lio/olvid/engine/networksend/databases/OutboxAttachment;->HOOK_BIT_FINISHED:J

    and-long/2addr v2, v0

    const-string v4, "attachmentNumber"

    const-string v5, "messageUid"

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-eqz v8, :cond_0

    .line 438
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 439
    iget-object v1, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->messageUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    iget v1, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->attachmentNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    iget-object v1, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->sendManagerSession:Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    iget-object v1, v1, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    if-eqz v1, :cond_2

    .line 442
    iget-object v1, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->sendManagerSession:Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    iget-object v1, v1, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    const-string v2, "network_send_notification_attachment_upload_finished"

    invoke-interface {v1, v2, v0}, Lio/olvid/engine/metamanager/NotificationPostingDelegate;->postNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 444
    :cond_0
    sget-wide v2, Lio/olvid/engine/networksend/databases/OutboxAttachment;->HOOK_BIT_PROGRESS:J

    and-long/2addr v2, v0

    cmp-long v8, v2, v6

    if-eqz v8, :cond_1

    .line 445
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 446
    iget-object v1, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->messageUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    iget v1, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->attachmentNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    iget v1, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->acknowledgedChunkCount:I

    int-to-float v1, v1

    iget v2, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->ciphertextChunkLength:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    invoke-virtual {p0}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->getCiphertextLength()J

    move-result-wide v2

    long-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "progress"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    iget-object v1, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->sendManagerSession:Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    iget-object v1, v1, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    if-eqz v1, :cond_2

    .line 450
    iget-object v1, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->sendManagerSession:Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    iget-object v1, v1, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    const-string v2, "network_send_notification_attachment_upload_progress"

    invoke-interface {v1, v2, v0}, Lio/olvid/engine/metamanager/NotificationPostingDelegate;->postNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 452
    :cond_1
    sget-wide v2, Lio/olvid/engine/networksend/databases/OutboxAttachment;->HOOK_BIT_CANCEL_REQUESTED:J

    and-long/2addr v0, v2

    cmp-long v2, v0, v6

    if-eqz v2, :cond_2

    .line 453
    iget-object v0, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->sendManagerSession:Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    iget-object v0, v0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->outboxAttachmentCancelRequestedListener:Lio/olvid/engine/networksend/databases/OutboxAttachment$OutboxAttachmentCancelRequestedListener;

    if-eqz v0, :cond_2

    .line 454
    iget-object v0, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->sendManagerSession:Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    iget-object v0, v0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->outboxAttachmentCancelRequestedListener:Lio/olvid/engine/networksend/databases/OutboxAttachment$OutboxAttachmentCancelRequestedListener;

    iget-object v1, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->messageUid:Lio/olvid/engine/datatypes/UID;

    iget v2, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->attachmentNumber:I

    invoke-interface {v0, v1, v2}, Lio/olvid/engine/networksend/databases/OutboxAttachment$OutboxAttachmentCancelRequestedListener;->outboxAttachmentCancelRequested(Lio/olvid/engine/datatypes/UID;I)V

    .line 457
    :cond_2
    :goto_0
    iput-wide v6, p0, Lio/olvid/engine/networksend/databases/OutboxAttachment;->commitHookBits:J

    return-void
.end method
