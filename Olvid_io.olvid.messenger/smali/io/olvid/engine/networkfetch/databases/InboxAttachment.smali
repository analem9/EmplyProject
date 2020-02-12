.class public Lio/olvid/engine/networkfetch/databases/InboxAttachment;
.super Ljava/lang/Object;
.source "InboxAttachment.java"

# interfaces
.implements Lio/olvid/engine/datatypes/ObvDatabase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/engine/networkfetch/databases/InboxAttachment$InboxAttachmentListener;
    }
.end annotation


# static fields
.field static final ATTACHMENT_NUMBER:Ljava/lang/String; = "attachment_number"

.field static final CHUNK_DOWNLOAD_PRIVATE_URLS:Ljava/lang/String; = "chunk_download_private_urls"

.field static final CHUNK_LENGTH:Ljava/lang/String; = "chunk_length"

.field static final DOWNLOAD_REQUESTED:Ljava/lang/String; = "download_requested"

.field static final EXPECTED_LENGTH:Ljava/lang/String; = "expected_length"

.field static final FILE_SIZE:Ljava/lang/String; = "file_size"

.field private static HOOK_BIT_CHUNK_RECEIVED:J = 0x4L

.field private static HOOK_BIT_DOWNLOAD_REQUESTED:J = 0x10L

.field private static HOOK_BIT_LAST_CHUNK_RECEIVED:J = 0x8L

.field static final KEY:Ljava/lang/String; = "key"

.field static final MARKED_FOR_DELETION:Ljava/lang/String; = "marked_for_deletion"

.field static final MESSAGE_UID:Ljava/lang/String; = "message_uid"

.field static final METADATA:Ljava/lang/String; = "metadata"

.field static final PRIORITY_CATEGORY:Ljava/lang/String; = "priority_category"

.field static final RECEIVED_LENGTH:Ljava/lang/String; = "received_length"

.field static final TABLE_NAME:Ljava/lang/String; = "inbox_attachment"

.field static final TIMESTAMP_OF_FETCH_REQUEST:Ljava/lang/String; = "timestamp_of_fetch_request"


# instance fields
.field private attachmentNumber:I

.field private chunkDownloadPrivateUrls:Ljava/lang/String;

.field private chunkLength:I

.field private commitHookBits:J

.field private downloadRequested:Z

.field private expectedLength:J

.field private final fetchManagerSession:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

.field private fileSize:J

.field private key:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

.field private markedForDeletion:Z

.field private messageUid:Lio/olvid/engine/datatypes/UID;

.field private metadata:[B

.field private priorityCategory:Ljava/lang/Integer;

.field private receivedLength:J

.field private timestampOfFetchRequest:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Lio/olvid/engine/datatypes/UID;IJI[Ljava/lang/String;)V
    .locals 2

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 659
    iput-wide v0, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->commitHookBits:J

    .line 337
    iput-object p1, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->fetchManagerSession:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    .line 338
    iput-object p2, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->messageUid:Lio/olvid/engine/datatypes/UID;

    .line 339
    iput p3, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->attachmentNumber:I

    .line 340
    iput-wide p4, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->expectedLength:J

    .line 341
    iput p6, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->chunkLength:I

    const/4 p1, 0x0

    .line 342
    iput-object p1, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->metadata:[B

    .line 343
    iput-object p1, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->key:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    .line 344
    iput-wide v0, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->fileSize:J

    .line 345
    iput-wide v0, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->receivedLength:J

    .line 346
    iput-object p1, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->priorityCategory:Ljava/lang/Integer;

    const/4 p2, 0x0

    .line 347
    iput-boolean p2, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->downloadRequested:Z

    .line 348
    iput-object p1, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->timestampOfFetchRequest:Ljava/lang/Long;

    .line 349
    iput-boolean p2, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->markedForDeletion:Z

    if-eqz p7, :cond_3

    .line 352
    array-length p3, p7

    if-nez p3, :cond_0

    goto :goto_1

    .line 355
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 357
    array-length p3, p7

    const/4 p4, 0x1

    const/4 p4, 0x0

    const/4 p5, 0x1

    :goto_0
    if-ge p4, p3, :cond_2

    aget-object p6, p7, p4

    if-nez p5, :cond_1

    const-string p5, "\u00a6"

    .line 359
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    :cond_1
    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p4, p4, 0x1

    const/4 p5, 0x0

    goto :goto_0

    .line 364
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 366
    :cond_3
    :goto_1
    iput-object p1, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->chunkDownloadPrivateUrls:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Ljava/sql/ResultSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 659
    iput-wide v0, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->commitHookBits:J

    .line 370
    iput-object p1, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->fetchManagerSession:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    .line 371
    new-instance p1, Lio/olvid/engine/datatypes/UID;

    const-string v0, "message_uid"

    invoke-interface {p2, v0}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p1, v0}, Lio/olvid/engine/datatypes/UID;-><init>([B)V

    iput-object p1, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->messageUid:Lio/olvid/engine/datatypes/UID;

    const-string p1, "attachment_number"

    .line 372
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->attachmentNumber:I

    const-string p1, "expected_length"

    .line 373
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->expectedLength:J

    const-string p1, "chunk_length"

    .line 374
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->chunkLength:I

    const-string p1, "metadata"

    .line 375
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->metadata:[B

    const/4 p1, 0x0

    .line 377
    :try_start_0
    new-instance v0, Lio/olvid/engine/encoder/Encoded;

    const-string v1, "key"

    invoke-interface {p2, v1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lio/olvid/engine/encoder/Encoded;-><init>([B)V

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeSymmetricKey()Lio/olvid/engine/datatypes/key/symmetric/SymmetricKey;

    move-result-object v0

    check-cast v0, Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    iput-object v0, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->key:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 379
    :catch_0
    iput-object p1, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->key:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    :goto_0
    const-string v0, "file_size"

    .line 381
    invoke-interface {p2, v0}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->fileSize:J

    const-string v0, "received_length"

    .line 382
    invoke-interface {p2, v0}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->receivedLength:J

    const-string v0, "priority_category"

    .line 383
    invoke-interface {p2, v0}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->priorityCategory:Ljava/lang/Integer;

    .line 384
    invoke-interface {p2}, Ljava/sql/ResultSet;->wasNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    iput-object p1, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->priorityCategory:Ljava/lang/Integer;

    :cond_0
    const-string v0, "download_requested"

    .line 388
    invoke-interface {p2, v0}, Ljava/sql/ResultSet;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->downloadRequested:Z

    const-string v0, "timestamp_of_fetch_request"

    .line 389
    invoke-interface {p2, v0}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->timestampOfFetchRequest:Ljava/lang/Long;

    .line 390
    invoke-interface {p2}, Ljava/sql/ResultSet;->wasNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 391
    iput-object p1, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->timestampOfFetchRequest:Ljava/lang/Long;

    :cond_1
    const-string p1, "marked_for_deletion"

    .line 393
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->markedForDeletion:Z

    const-string p1, "chunk_download_private_urls"

    .line 394
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->chunkDownloadPrivateUrls:Ljava/lang/String;

    return-void
.end method

.method public static computeUniqueUid(Lio/olvid/engine/datatypes/UID;I)Lio/olvid/engine/datatypes/UID;
    .locals 4

    const-string v0, "sha-256"

    .line 118
    invoke-static {v0}, Lio/olvid/engine/crypto/Suite;->getHash(Ljava/lang/String;)Lio/olvid/engine/crypto/Hash;

    move-result-object v0

    const/16 v1, 0x2d

    new-array v1, v1, [B

    .line 120
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object p0

    const/16 v2, 0x20

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-long p0, p1

    .line 121
    invoke-static {p0, p1}, Lio/olvid/engine/encoder/Encoded;->of(J)Lio/olvid/engine/encoder/Encoded;

    move-result-object p0

    invoke-virtual {p0}, Lio/olvid/engine/encoder/Encoded;->getBytes()[B

    move-result-object p0

    const/16 p1, 0xd

    invoke-static {p0, v3, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    new-instance p0, Lio/olvid/engine/datatypes/UID;

    invoke-interface {v0, v1}, Lio/olvid/engine/crypto/Hash;->digest([B)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lio/olvid/engine/datatypes/UID;-><init>([B)V

    return-object p0
.end method

.method public static create(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Lio/olvid/engine/datatypes/UID;IJI[Ljava/lang/String;)Lio/olvid/engine/networkfetch/databases/InboxAttachment;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 331
    :cond_0
    new-instance v8, Lio/olvid/engine/networkfetch/databases/InboxAttachment;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;-><init>(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Lio/olvid/engine/datatypes/UID;IJI[Ljava/lang/String;)V

    .line 332
    invoke-virtual {v8}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->insert()V

    return-object v8
.end method

.method public static createTable(Lio/olvid/engine/datatypes/Session;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 517
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Session;->createStatement()Ljava/sql/Statement;

    move-result-object p0

    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS inbox_attachment (message_uid BLOB, attachment_number INT, expected_length BIGINT NOT NULL, chunk_length INT NOT NULL, metadata BLOB, key BLOB, file_size BIGINT NOT NULL, received_length BIGINT NOT NULL, priority_category INT, download_requested BIT NOT NULL, timestamp_of_fetch_request BIGINT, marked_for_deletion BIT NOT NULL, chunk_download_private_urls TEXT, CONSTRAINT PK_inbox_attachment PRIMARY KEY(message_uid, attachment_number), FOREIGN KEY (message_uid) REFERENCES inbox_message(uid));"

    .line 518
    invoke-interface {p0, v0}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 538
    invoke-interface {p0}, Ljava/sql/Statement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 517
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_1

    .line 538
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

.method public static get(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Lio/olvid/engine/datatypes/UID;I)Lio/olvid/engine/networkfetch/databases/InboxAttachment;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 403
    :cond_0
    iget-object v1, p0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v2, "SELECT * FROM inbox_attachment WHERE message_uid = ? AND attachment_number = ?;"

    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    const/4 v2, 0x1

    .line 404
    :try_start_0
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 p1, 0x2

    .line 405
    invoke-interface {v1, p1, p2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 406
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 407
    :try_start_1
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 408
    new-instance p2, Lio/olvid/engine/networkfetch/databases/InboxAttachment;

    invoke-direct {p2, p0, p1}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;-><init>(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Ljava/sql/ResultSet;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 412
    :try_start_2
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :cond_1
    if-eqz v1, :cond_2

    .line 413
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    :cond_2
    return-object p2

    :cond_3
    if-eqz p1, :cond_4

    .line 412
    :try_start_3
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_4
    if-eqz v1, :cond_5

    .line 413
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    :cond_5
    return-object v0

    :catchall_0
    move-exception p0

    .line 406
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p1, :cond_6

    .line 412
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

    .line 403
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    move-exception p1

    if-eqz v1, :cond_7

    .line 413
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

.method public static getAll(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Lio/olvid/engine/datatypes/UID;)[Lio/olvid/engine/networkfetch/databases/InboxAttachment;
    .locals 4

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 420
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v2, "SELECT * FROM inbox_attachment WHERE message_uid = ?  ORDER BY attachment_number ASC;"

    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    .line 424
    :try_start_1
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 425
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 426
    :try_start_2
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 427
    :goto_0
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 428
    new-instance v3, Lio/olvid/engine/networkfetch/databases/InboxAttachment;

    invoke-direct {v3, p0, p1}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;-><init>(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Ljava/sql/ResultSet;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-array p0, v0, [Lio/olvid/engine/networkfetch/databases/InboxAttachment;

    .line 430
    invoke-interface {v2, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lio/olvid/engine/networkfetch/databases/InboxAttachment;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_2

    .line 431
    :try_start_3
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_2
    if-eqz v1, :cond_3

    .line 432
    :try_start_4
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    return-object p0

    :catchall_0
    move-exception p0

    .line 425
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz p1, :cond_4

    .line 431
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

    .line 420
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception p1

    if-eqz v1, :cond_5

    .line 432
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
    new-array p0, v0, [Lio/olvid/engine/networkfetch/databases/InboxAttachment;

    return-object p0
.end method

.method public static getAllAttachmentsToResume(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;)[Lio/olvid/engine/networkfetch/databases/InboxAttachment;
    .locals 5

    const/4 v0, 0x0

    .line 457
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v2, "SELECT * FROM inbox_attachment WHERE download_requested = 1 AND key NOT NULL AND received_length < expected_length AND marked_for_deletion = 0;"

    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    :try_start_1
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 465
    :try_start_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 466
    :goto_0
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 467
    new-instance v4, Lio/olvid/engine/networkfetch/databases/InboxAttachment;

    invoke-direct {v4, p0, v2}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;-><init>(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Ljava/sql/ResultSet;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-array p0, v0, [Lio/olvid/engine/networkfetch/databases/InboxAttachment;

    .line 469
    invoke-interface {v3, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lio/olvid/engine/networkfetch/databases/InboxAttachment;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    .line 470
    :try_start_3
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_1
    if-eqz v1, :cond_2

    .line 471
    :try_start_4
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    return-object p0

    :catchall_0
    move-exception p0

    .line 464
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v3

    if-eqz v2, :cond_3

    .line 470
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

    .line 457
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception v2

    if-eqz v1, :cond_4

    .line 471
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
    new-array p0, v0, [Lio/olvid/engine/networkfetch/databases/InboxAttachment;

    return-object p0
.end method

.method public static getAllDownloaded(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;)[Lio/olvid/engine/networkfetch/databases/InboxAttachment;
    .locals 5

    const/4 v0, 0x0

    .line 438
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v2, "SELECT * FROM inbox_attachment WHERE received_length = expected_length AND marked_for_deletion = 0;"

    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    :try_start_1
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 444
    :try_start_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 445
    :goto_0
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 446
    new-instance v4, Lio/olvid/engine/networkfetch/databases/InboxAttachment;

    invoke-direct {v4, p0, v2}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;-><init>(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Ljava/sql/ResultSet;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-array p0, v0, [Lio/olvid/engine/networkfetch/databases/InboxAttachment;

    .line 448
    invoke-interface {v3, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lio/olvid/engine/networkfetch/databases/InboxAttachment;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    .line 449
    :try_start_3
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_1
    if-eqz v1, :cond_2

    .line 450
    :try_start_4
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    return-object p0

    :catchall_0
    move-exception p0

    .line 443
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v3

    if-eqz v2, :cond_3

    .line 449
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

    .line 438
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception v2

    if-eqz v1, :cond_4

    .line 450
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
    new-array p0, v0, [Lio/olvid/engine/networkfetch/databases/InboxAttachment;

    return-object p0
.end method

.method private getAttachmentDirectory()Ljava/io/File;
    .locals 3

    .line 277
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->fetchManagerSession:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    iget-object v1, v1, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->attachmentStoragePath:Ljava/lang/String;

    iget-object v2, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->messageUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/UID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static upgradeTable(Lio/olvid/engine/datatypes/Session;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "MIGRATING `inbox_attachment` DATABASE FROM VERSION "

    const/4 v1, 0x4

    if-ge p1, v1, :cond_2

    if-lt p2, v1, :cond_2

    .line 543
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " TO 4\n!!!! THIS MIGRATION IS DESTRUCTIVE !!!!"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    .line 544
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Session;->createStatement()Ljava/sql/Statement;

    move-result-object p1

    :try_start_0
    const-string v2, "DROP TABLE IF EXISTS `inbox_attachment`;"

    .line 545
    invoke-interface {p1, v2}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string v2, "CREATE TABLE IF NOT EXISTS inbox_attachment (message_uid BLOB, attachment_number INT, expected_length BIGINT NOT NULL, chunk_length INT NOT NULL, metadata BLOB, key BLOB, file_size BIGINT NOT NULL, received_length BIGINT NOT NULL, priority_category INT, pending_cancel_fetch_request BIT NOT NULL, download_requested BIT NOT NULL, timestamp_of_fetch_request BIGINT, marked_for_deletion BIT NOT NULL, CONSTRAINT PK_inbox_attachment PRIMARY KEY(message_uid, attachment_number), FOREIGN KEY (message_uid) REFERENCES inbox_message(uid));"

    .line 546
    invoke-interface {p1, v2}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 565
    invoke-interface {p1}, Ljava/sql/Statement;->close()V

    :cond_0
    const/4 p1, 0x4

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 544
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p1, :cond_1

    .line 565
    :try_start_2
    invoke-interface {p1}, Ljava/sql/Statement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p2

    :cond_2
    :goto_1
    const/16 v1, 0x8

    if-ge p1, v1, :cond_5

    if-lt p2, v1, :cond_5

    .line 569
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " TO 8"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    .line 570
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Session;->createStatement()Ljava/sql/Statement;

    move-result-object p1

    :try_start_3
    const-string v2, "ALTER TABLE inbox_attachment RENAME TO old_inbox_attachment"

    .line 571
    invoke-interface {p1, v2}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string v2, "CREATE TABLE IF NOT EXISTS inbox_attachment (message_uid BLOB, attachment_number INT, expected_length BIGINT NOT NULL, chunk_length INT NOT NULL, metadata BLOB, key BLOB, file_size BIGINT NOT NULL, received_length BIGINT NOT NULL, priority_category INT, download_requested BIT NOT NULL, timestamp_of_fetch_request BIGINT, marked_for_deletion BIT NOT NULL, CONSTRAINT PK_inbox_attachment PRIMARY KEY(message_uid, attachment_number), FOREIGN KEY (message_uid) REFERENCES inbox_message(uid))"

    .line 572
    invoke-interface {p1, v2}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string v2, "INSERT INTO inbox_attachment  SELECT message_uid, attachment_number, expected_length, chunk_length, metadata,  key, file_size, received_length, priority_category, download_requested,  timestamp_of_fetch_request, marked_for_deletion FROM old_inbox_attachment"

    .line 590
    invoke-interface {p1, v2}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string v2, "DROP TABLE old_inbox_attachment"

    .line 594
    invoke-interface {p1, v2}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz p1, :cond_3

    .line 595
    invoke-interface {p1}, Ljava/sql/Statement;->close()V

    :cond_3
    const/16 p1, 0x8

    goto :goto_3

    :catchall_3
    move-exception p0

    .line 570
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception p2

    if-eqz p1, :cond_4

    .line 595
    :try_start_5
    invoke-interface {p1}, Ljava/sql/Statement;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw p2

    :cond_5
    :goto_3
    const/16 v1, 0xd

    if-ge p1, v1, :cond_7

    if-lt p2, v1, :cond_7

    .line 599
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " TO 13"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    .line 600
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Session;->createStatement()Ljava/sql/Statement;

    move-result-object p0

    :try_start_6
    const-string p1, "ALTER TABLE inbox_attachment ADD COLUMN chunk_download_private_urls TEXT DEFAULT NULL;"

    .line 601
    invoke-interface {p0, p1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    if-eqz p0, :cond_7

    .line 602
    invoke-interface {p0}, Ljava/sql/Statement;->close()V

    goto :goto_5

    :catchall_6
    move-exception p1

    .line 600
    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception p2

    if-eqz p0, :cond_6

    .line 602
    :try_start_8
    invoke-interface {p0}, Ljava/sql/Statement;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    goto :goto_4

    :catchall_8
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_4
    throw p2

    :cond_7
    :goto_5
    return-void
.end method


# virtual methods
.method public cannotBeFetched()Z
    .locals 1

    .line 126
    iget-object v0, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->key:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public delete()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 640
    iget-object v0, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->fetchManagerSession:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    iget-object v0, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "DELETE FROM inbox_attachment WHERE message_uid = ? AND attachment_number = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 641
    :try_start_0
    iget-object v2, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->messageUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x2

    .line 642
    iget v2, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->attachmentNumber:I

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 643
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 644
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 640
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    .line 644
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

.method public deleteAttachmentFile()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    invoke-direct {p0}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->getAttachmentDirectory()Ljava/io/File;

    move-result-object v0

    .line 260
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 263
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 265
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 266
    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 269
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_4

    .line 270
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 271
    :cond_3
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_4
    :goto_1
    return-void
.end method

.method public getAttachmentNumber()I
    .locals 1

    .line 64
    iget v0, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->attachmentNumber:I

    return v0
.end method

.method public getChunkDownloadPrivateUrls()[Ljava/lang/String;
    .locals 3

    .line 108
    iget-object v0, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->chunkDownloadPrivateUrls:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v1, -0x1

    const-string v2, "\u00a6"

    .line 111
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChunkLength()I
    .locals 1

    .line 72
    iget v0, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->chunkLength:I

    return v0
.end method

.method public getExpectedLength()J
    .locals 2

    .line 68
    iget-wide v0, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->expectedLength:J

    return-wide v0
.end method

.method public getFileSize()J
    .locals 2

    .line 84
    iget-wide v0, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->fileSize:J

    return-wide v0
.end method

.method public getKey()Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;
    .locals 1

    .line 80
    iget-object v0, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->key:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    return-object v0
.end method

.method public getMessage()Lio/olvid/engine/networkfetch/databases/InboxMessage;
    .locals 2

    .line 153
    iget-object v0, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->fetchManagerSession:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    iget-object v1, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->messageUid:Lio/olvid/engine/datatypes/UID;

    invoke-static {v0, v1}, Lio/olvid/engine/networkfetch/databases/InboxMessage;->get(Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/networkfetch/databases/InboxMessage;

    move-result-object v0

    return-object v0
.end method

.method public getMessageUid()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 60
    iget-object v0, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->messageUid:Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method

.method public getMetadata()[B
    .locals 1

    .line 76
    iget-object v0, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->metadata:[B

    return-object v0
.end method

.method public getPriority()J
    .locals 4

    .line 130
    iget-object v0, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->priorityCategory:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 134
    :cond_0
    iget-object v0, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->timestampOfFetchRequest:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    neg-long v0, v0

    return-wide v0

    .line 132
    :cond_1
    iget-wide v0, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->expectedLength:J

    iget-wide v2, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->receivedLength:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getPriorityCategory()Ljava/lang/Integer;
    .locals 1

    .line 92
    iget-object v0, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->priorityCategory:Ljava/lang/Integer;

    return-object v0
.end method

.method public getProgress()F
    .locals 3

    .line 149
    iget-wide v0, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->receivedLength:J

    long-to-float v0, v0

    iget-wide v1, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->expectedLength:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getReceivedChunkCount()I
    .locals 5

    .line 141
    iget-wide v0, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->receivedLength:J

    iget-wide v2, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->expectedLength:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 142
    iget v2, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->chunkLength:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v1, v0

    add-int/lit8 v1, v1, 0x1

    return v1

    .line 144
    :cond_0
    iget v2, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->chunkLength:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public getReceivedLength()J
    .locals 2

    .line 88
    iget-wide v0, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->receivedLength:J

    return-wide v0
.end method

.method public getTimestampOfFetchRequest()Ljava/lang/Long;
    .locals 1

    .line 100
    iget-object v0, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->timestampOfFetchRequest:Ljava/lang/Long;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->fetchManagerSession:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    iget-object v0, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->attachmentStoragePath:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 284
    invoke-direct {p0}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->getAttachmentDirectory()Ljava/io/File;

    move-result-object v0

    .line 285
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 286
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to createCurrentDevice directory \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 288
    :cond_1
    :goto_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->attachmentNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 282
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "InboxAttachment storage path has not been set."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public insert()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 609
    iget-object v0, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->fetchManagerSession:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    iget-object v0, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "INSERT INTO inbox_attachment VALUES(?,?,?,?,?, ?,?,?,?,?, ?,?,?);"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 610
    :try_start_0
    iget-object v2, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->messageUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x2

    .line 611
    iget v2, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->attachmentNumber:I

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v1, 0x3

    .line 612
    iget-wide v2, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->expectedLength:J

    invoke-interface {v0, v1, v2, v3}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 613
    iget v1, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->chunkLength:I

    const/4 v2, 0x4

    invoke-interface {v0, v2, v1}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v1, 0x5

    .line 614
    iget-object v3, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->metadata:[B

    invoke-interface {v0, v1, v3}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x6

    .line 616
    iget-object v3, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->key:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->key:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    invoke-static {v3}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/key/symmetric/SymmetricKey;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v3

    invoke-virtual {v3}, Lio/olvid/engine/encoder/Encoded;->getBytes()[B

    move-result-object v3

    :goto_0
    invoke-interface {v0, v1, v3}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x7

    .line 617
    iget-wide v3, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->fileSize:J

    invoke-interface {v0, v1, v3, v4}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    const/16 v1, 0x8

    .line 618
    iget-wide v3, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->receivedLength:J

    invoke-interface {v0, v1, v3, v4}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 619
    iget-object v1, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->priorityCategory:Ljava/lang/Integer;

    const/16 v3, 0x9

    if-nez v1, :cond_1

    .line 620
    invoke-interface {v0, v3, v2}, Ljava/sql/PreparedStatement;->setNull(II)V

    goto :goto_1

    .line 622
    :cond_1
    iget-object v1, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->priorityCategory:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v3, v1}, Ljava/sql/PreparedStatement;->setInt(II)V

    :goto_1
    const/16 v1, 0xa

    .line 625
    iget-boolean v2, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->downloadRequested:Z

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBoolean(IZ)V

    .line 627
    iget-object v1, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->timestampOfFetchRequest:Ljava/lang/Long;

    const/16 v2, 0xb

    if-nez v1, :cond_2

    const/4 v1, -0x5

    .line 628
    invoke-interface {v0, v2, v1}, Ljava/sql/PreparedStatement;->setNull(II)V

    goto :goto_2

    .line 630
    :cond_2
    iget-object v1, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->timestampOfFetchRequest:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    :goto_2
    const/16 v1, 0xc

    .line 632
    iget-boolean v2, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->markedForDeletion:Z

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBoolean(IZ)V

    const/16 v1, 0xd

    .line 633
    iget-object v2, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->chunkDownloadPrivateUrls:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 634
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    .line 635
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_3
    return-void

    :catchall_0
    move-exception v1

    .line 609
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_4

    .line 635
    :try_start_2
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw v2
.end method

.method public isDownloadRequested()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->downloadRequested:Z

    return v0
.end method

.method public isMarkedForDeletion()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->markedForDeletion:Z

    return v0
.end method

.method public markForDeletion()V
    .locals 4

    .line 196
    :try_start_0
    iget-object v0, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->fetchManagerSession:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    iget-object v0, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "UPDATE inbox_attachment SET marked_for_deletion = 1 WHERE message_uid = ? AND attachment_number = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :try_start_1
    iget-object v1, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->messageUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x2

    .line 199
    iget v3, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->attachmentNumber:I

    invoke-interface {v0, v1, v3}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 200
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 201
    iput-boolean v2, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->markedForDeletion:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 202
    :try_start_2
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 196
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_0

    .line 202
    :try_start_4
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v2
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    .line 203
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public pauseDownload()V
    .locals 3

    .line 182
    :try_start_0
    iget-object v0, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->fetchManagerSession:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    iget-object v0, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "UPDATE inbox_attachment SET download_requested = 0  WHERE message_uid = ? AND attachment_number = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    .line 185
    :try_start_1
    iget-object v2, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->messageUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x2

    .line 186
    iget v2, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->attachmentNumber:I

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 187
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    const/4 v1, 0x0

    .line 188
    iput-boolean v1, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->downloadRequested:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 190
    :try_start_2
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 182
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_0

    .line 190
    :try_start_4
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v2
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    .line 191
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public requestDownload(I)V
    .locals 6

    .line 159
    :try_start_0
    iget-object v0, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->fetchManagerSession:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    iget-object v0, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "UPDATE inbox_attachment SET download_requested = 1, priority_category = ?, timestamp_of_fetch_request = ?  WHERE message_uid = ?  AND attachment_number = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    .line 165
    :try_start_1
    invoke-interface {v0, v1, p1}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x2

    .line 167
    invoke-interface {v0, v4, v2, v3}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    const/4 v4, 0x3

    .line 168
    iget-object v5, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->messageUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v5}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v4, 0x4

    .line 169
    iget v5, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->attachmentNumber:I

    invoke-interface {v0, v4, v5}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 170
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 171
    iput-boolean v1, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->downloadRequested:Z

    .line 172
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->priorityCategory:Ljava/lang/Integer;

    .line 173
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->timestampOfFetchRequest:Ljava/lang/Long;

    .line 174
    iget-wide v1, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->commitHookBits:J

    sget-wide v3, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->HOOK_BIT_DOWNLOAD_REQUESTED:J

    or-long/2addr v1, v3

    iput-wide v1, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->commitHookBits:J

    .line 175
    iget-object p1, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->fetchManagerSession:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    iget-object p1, p1, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p1, p0}, Lio/olvid/engine/datatypes/Session;->addSessionCommitListener(Lio/olvid/engine/datatypes/ObvDatabase;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 176
    :try_start_2
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 159
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_0

    .line 176
    :try_start_4
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    .line 177
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public setChunkDownloadPrivateUrls([Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 232
    array-length v0, p1

    if-eqz v0, :cond_4

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v6, p1, v4

    if-nez v5, :cond_0

    const-string v5, "\u00a6"

    .line 240
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    :cond_0
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    goto :goto_0

    .line 245
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 247
    iget-object v0, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->fetchManagerSession:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    iget-object v0, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "UPDATE inbox_attachment SET chunk_download_private_urls = ?  WHERE message_uid = ? AND attachment_number = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    .line 250
    :try_start_0
    invoke-interface {v0, v3, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 v1, 0x2

    .line 251
    iget-object v2, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->messageUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x3

    .line 252
    iget v2, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->attachmentNumber:I

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 253
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 254
    iput-object p1, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->chunkDownloadPrivateUrls:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 255
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 247
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_3

    .line 255
    :try_start_2
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v1

    .line 233
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setKeyAndMetadata(Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 212
    iget-object v0, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->key:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->metadata:[B

    if-nez v0, :cond_2

    .line 215
    iget-object v0, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->fetchManagerSession:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    iget-object v0, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "UPDATE inbox_attachment SET key = ?, metadata = ?  WHERE message_uid = ? AND attachment_number = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 219
    :try_start_0
    invoke-static {p1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/key/symmetric/SymmetricKey;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v2

    invoke-virtual {v2}, Lio/olvid/engine/encoder/Encoded;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x2

    .line 220
    invoke-interface {v0, v1, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x3

    .line 221
    iget-object v2, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->messageUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x4

    .line 222
    iget v2, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->attachmentNumber:I

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 223
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 224
    iput-object p1, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->key:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    .line 225
    iput-object p2, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->metadata:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 228
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 215
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v0, :cond_1

    .line 228
    :try_start_2
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p2

    .line 213
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Attachment key and metadata were already set."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 210
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public wasCommitted()V
    .locals 10

    .line 678
    iget-wide v0, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->commitHookBits:J

    sget-wide v2, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->HOOK_BIT_CHUNK_RECEIVED:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 679
    iget-object v0, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->fetchManagerSession:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    iget-object v0, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->inboxAttachmentListener:Lio/olvid/engine/networkfetch/databases/InboxAttachment$InboxAttachmentListener;

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->fetchManagerSession:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    iget-object v0, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->inboxAttachmentListener:Lio/olvid/engine/networkfetch/databases/InboxAttachment$InboxAttachmentListener;

    iget-object v1, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->messageUid:Lio/olvid/engine/datatypes/UID;

    iget v4, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->attachmentNumber:I

    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->getProgress()F

    move-result v5

    invoke-interface {v0, v1, v4, v5}, Lio/olvid/engine/networkfetch/databases/InboxAttachment$InboxAttachmentListener;->attachmentDownloadProgressed(Lio/olvid/engine/datatypes/UID;IF)V

    .line 683
    :cond_0
    iget-wide v0, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->commitHookBits:J

    sget-wide v4, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->HOOK_BIT_LAST_CHUNK_RECEIVED:J

    and-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 684
    iget-object v0, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->fetchManagerSession:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    iget-object v0, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->inboxAttachmentListener:Lio/olvid/engine/networkfetch/databases/InboxAttachment$InboxAttachmentListener;

    if-eqz v0, :cond_1

    .line 685
    iget-object v0, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->fetchManagerSession:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    iget-object v0, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->inboxAttachmentListener:Lio/olvid/engine/networkfetch/databases/InboxAttachment$InboxAttachmentListener;

    iget-object v1, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->messageUid:Lio/olvid/engine/datatypes/UID;

    iget v4, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->attachmentNumber:I

    invoke-interface {v0, v1, v4}, Lio/olvid/engine/networkfetch/databases/InboxAttachment$InboxAttachmentListener;->attachmentDownloadFinished(Lio/olvid/engine/datatypes/UID;I)V

    .line 688
    :cond_1
    iget-wide v0, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->commitHookBits:J

    sget-wide v4, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->HOOK_BIT_DOWNLOAD_REQUESTED:J

    and-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 689
    iget-object v0, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->fetchManagerSession:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    iget-object v0, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->inboxAttachmentListener:Lio/olvid/engine/networkfetch/databases/InboxAttachment$InboxAttachmentListener;

    if-eqz v0, :cond_2

    .line 690
    iget-object v0, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->fetchManagerSession:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    iget-object v4, v0, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->inboxAttachmentListener:Lio/olvid/engine/networkfetch/databases/InboxAttachment$InboxAttachmentListener;

    iget-object v5, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->messageUid:Lio/olvid/engine/datatypes/UID;

    iget v6, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->attachmentNumber:I

    iget-object v0, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->priorityCategory:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->getPriority()J

    move-result-wide v8

    invoke-interface/range {v4 .. v9}, Lio/olvid/engine/networkfetch/databases/InboxAttachment$InboxAttachmentListener;->attachmentDownloadWasRequested(Lio/olvid/engine/datatypes/UID;IIJ)V

    .line 693
    :cond_2
    iput-wide v2, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->commitHookBits:J

    return-void
.end method

.method public writeToAttachmentFile([BI)Z
    .locals 10

    .line 292
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :try_start_1
    iget-wide v1, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->fileSize:J

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 294
    iget-wide v1, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->fileSize:J

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 295
    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 298
    iget-object v1, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->fetchManagerSession:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    iget-object v1, v1, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v2, "UPDATE inbox_attachment SET received_length = ?, file_size = ?  WHERE message_uid = ? AND attachment_number = ?;"

    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 302
    :try_start_2
    iget-wide v2, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->receivedLength:J

    int-to-long v4, p2

    add-long/2addr v2, v4

    const/4 p2, 0x1

    invoke-interface {v1, p2, v2, v3}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    const/4 v2, 0x2

    .line 303
    iget-wide v6, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->fileSize:J

    array-length v3, p1

    int-to-long v8, v3

    add-long/2addr v6, v8

    invoke-interface {v1, v2, v6, v7}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    const/4 v2, 0x3

    .line 304
    iget-object v3, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->messageUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v3}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v2, 0x4

    .line 305
    iget v3, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->attachmentNumber:I

    invoke-interface {v1, v2, v3}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 306
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 307
    iget-wide v2, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->receivedLength:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->receivedLength:J

    .line 308
    iget-wide v2, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->fileSize:J

    array-length p1, p1

    int-to-long v4, p1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->fileSize:J

    .line 312
    iget-wide v2, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->expectedLength:J

    iget-wide v4, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->receivedLength:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    .line 313
    iget-wide v2, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->commitHookBits:J

    sget-wide v4, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->HOOK_BIT_LAST_CHUNK_RECEIVED:J

    or-long/2addr v2, v4

    iput-wide v2, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->commitHookBits:J

    .line 315
    :cond_0
    iget-wide v2, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->commitHookBits:J

    sget-wide v4, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->HOOK_BIT_CHUNK_RECEIVED:J

    or-long/2addr v2, v4

    iput-wide v2, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->commitHookBits:J

    .line 316
    iget-object p1, p0, Lio/olvid/engine/networkfetch/databases/InboxAttachment;->fetchManagerSession:Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;

    iget-object p1, p1, Lio/olvid/engine/networkfetch/datatypes/FetchManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p1, p0}, Lio/olvid/engine/datatypes/Session;->addSessionCommitListener(Lio/olvid/engine/datatypes/ObvDatabase;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    .line 318
    :try_start_3
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 319
    :cond_1
    :try_start_4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return p2

    :catchall_0
    move-exception p1

    .line 298
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v1, :cond_2

    .line 318
    :try_start_6
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    :try_start_7
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p1

    .line 292
    :try_start_8
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception p2

    .line 319
    :try_start_9
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception v0

    :try_start_a
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    move-exception p1

    .line 320
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method
