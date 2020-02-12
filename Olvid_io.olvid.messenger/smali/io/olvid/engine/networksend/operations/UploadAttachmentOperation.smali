.class public Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;
.super Lio/olvid/engine/datatypes/PriorityOperation;
.source "UploadAttachmentOperation.java"


# instance fields
.field private final attachmentNumber:I

.field private final coordinatorWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field private final messageUid:Lio/olvid/engine/datatypes/UID;

.field private outboxAttachment:Lio/olvid/engine/networksend/databases/OutboxAttachment;

.field private priority:J

.field private final sendManagerSessionFactory:Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;


# direct methods
.method public constructor <init>(Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;Lio/olvid/engine/datatypes/UID;IJLio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;)V
    .locals 2

    .line 36
    invoke-static {p2, p3}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->computeUniqueUid(Lio/olvid/engine/datatypes/UID;I)Lio/olvid/engine/datatypes/UID;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lio/olvid/engine/datatypes/PriorityOperation;-><init>(Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Operation$OnFinishCallback;Lio/olvid/engine/datatypes/Operation$OnCancelCallback;)V

    .line 37
    iput-object p1, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->sendManagerSessionFactory:Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;

    .line 38
    iput-object p2, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->messageUid:Lio/olvid/engine/datatypes/UID;

    .line 39
    iput p3, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->attachmentNumber:I

    .line 40
    iput-wide p4, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->priority:J

    .line 41
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->coordinatorWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$000(Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;)I
    .locals 0

    .line 28
    iget p0, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->attachmentNumber:I

    return p0
.end method

.method static synthetic access$100(Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;)Lio/olvid/engine/datatypes/UID;
    .locals 0

    .line 28
    iget-object p0, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->messageUid:Lio/olvid/engine/datatypes/UID;

    return-object p0
.end method

.method static synthetic access$200(Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;)Lio/olvid/engine/networksend/databases/OutboxAttachment;
    .locals 0

    .line 28
    iget-object p0, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->outboxAttachment:Lio/olvid/engine/networksend/databases/OutboxAttachment;

    return-object p0
.end method


# virtual methods
.method public doCancel()V
    .locals 0

    return-void
.end method

.method public doExecute()V
    .locals 14

    .line 62
    :try_start_0
    iget-object v0, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->sendManagerSessionFactory:Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;

    invoke-interface {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSessionFactory;->getSession()Lio/olvid/engine/networksend/datatypes/SendManagerSession;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_5

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 66
    :try_start_1
    iget-object v4, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->messageUid:Lio/olvid/engine/datatypes/UID;

    iget v5, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->attachmentNumber:I

    invoke-static {v0, v4, v5}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->get(Lio/olvid/engine/networksend/datatypes/SendManagerSession;Lio/olvid/engine/datatypes/UID;I)Lio/olvid/engine/networksend/databases/OutboxAttachment;

    move-result-object v4

    iput-object v4, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->outboxAttachment:Lio/olvid/engine/networksend/databases/OutboxAttachment;

    .line 67
    iget-object v4, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->messageUid:Lio/olvid/engine/datatypes/UID;

    invoke-static {v0, v4}, Lio/olvid/engine/networksend/databases/OutboxMessage;->get(Lio/olvid/engine/networksend/datatypes/SendManagerSession;Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/networksend/databases/OutboxMessage;

    move-result-object v4
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 72
    :try_start_2
    iget-object v5, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->outboxAttachment:Lio/olvid/engine/networksend/databases/OutboxAttachment;

    if-nez v5, :cond_2

    .line 73
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 186
    :try_start_3
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->hasNoReasonForCancel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    invoke-virtual {p0, v3}, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->cancel(Ljava/lang/Integer;)V

    .line 189
    :cond_0
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->processCancel()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    if-eqz v0, :cond_1

    .line 192
    :try_start_4
    invoke-virtual {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_5

    :cond_1
    return-void

    :cond_2
    if-eqz v4, :cond_20

    .line 76
    :try_start_5
    invoke-virtual {v4}, Lio/olvid/engine/networksend/databases/OutboxMessage;->getUidFromServer()Lio/olvid/engine/datatypes/UID;

    move-result-object v4

    if-nez v4, :cond_3

    goto/16 :goto_8

    .line 80
    :cond_3
    iget-object v4, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->outboxAttachment:Lio/olvid/engine/networksend/databases/OutboxAttachment;

    invoke-virtual {v4}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->isAcknowledged()Z

    move-result v4

    if-nez v4, :cond_1e

    iget-object v4, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->outboxAttachment:Lio/olvid/engine/networksend/databases/OutboxAttachment;

    invoke-virtual {v4}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->isCancelExternallyRequested()Z

    move-result v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v4, :cond_4

    goto/16 :goto_7

    .line 86
    :cond_4
    :try_start_6
    new-instance v4, Ljava/io/RandomAccessFile;

    iget-object v5, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->outboxAttachment:Lio/olvid/engine/networksend/databases/OutboxAttachment;

    invoke-virtual {v5}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->getUrl()Ljava/lang/String;

    move-result-object v5

    const-string v6, "r"

    invoke-direct {v4, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 87
    :try_start_7
    iget-object v5, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->outboxAttachment:Lio/olvid/engine/networksend/databases/OutboxAttachment;

    invoke-virtual {v5}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->getCleartextChunkLength()I

    move-result v5

    .line 88
    new-array v6, v5, [B

    .line 90
    iget-object v7, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->outboxAttachment:Lio/olvid/engine/networksend/databases/OutboxAttachment;

    invoke-virtual {v7}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->getAcknowledgedChunkCount()I

    move-result v7

    mul-int v7, v7, v5

    int-to-long v7, v7

    .line 91
    invoke-virtual {v4, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 93
    iget-object v5, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->outboxAttachment:Lio/olvid/engine/networksend/databases/OutboxAttachment;

    invoke-virtual {v5}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->getKey()Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    move-result-object v5

    invoke-static {v5}, Lio/olvid/engine/crypto/Suite;->getAuthEnc(Lio/olvid/engine/datatypes/key/CryptographicKey;)Lio/olvid/engine/crypto/AuthEnc;

    move-result-object v5

    const-string v7, "prng_hmac_sha-256"

    .line 94
    invoke-static {v7}, Lio/olvid/engine/crypto/Suite;->getPRNGService(Ljava/lang/String;)Lio/olvid/engine/crypto/PRNGService;

    move-result-object v7

    .line 96
    :cond_5
    :goto_0
    iget-object v8, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->outboxAttachment:Lio/olvid/engine/networksend/databases/OutboxAttachment;

    if-eqz v8, :cond_1a

    iget-object v8, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->outboxAttachment:Lio/olvid/engine/networksend/databases/OutboxAttachment;

    invoke-virtual {v8}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->isAcknowledged()Z

    move-result v8

    if-nez v8, :cond_1a

    .line 97
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->cancelWasRequested()Z

    move-result v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v8, :cond_8

    .line 173
    :try_start_8
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 186
    :try_start_9
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->hasNoReasonForCancel()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 187
    invoke-virtual {p0, v3}, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->cancel(Ljava/lang/Integer;)V

    .line 189
    :cond_6
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->processCancel()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    if-eqz v0, :cond_7

    .line 192
    :try_start_a
    invoke-virtual {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_a
    .catch Ljava/sql/SQLException; {:try_start_a .. :try_end_a} :catch_5

    :cond_7
    return-void

    .line 101
    :cond_8
    :try_start_b
    iget-object v8, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->outboxAttachment:Lio/olvid/engine/networksend/databases/OutboxAttachment;

    invoke-virtual {v8}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->isCancelExternallyRequested()Z

    move-result v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v8, :cond_a

    .line 173
    :try_start_c
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 183
    :try_start_d
    iget-object v1, v0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Session;->commit()V

    .line 184
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->setFinished()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    if-eqz v0, :cond_9

    .line 192
    :try_start_e
    invoke-virtual {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_e
    .catch Ljava/sql/SQLException; {:try_start_e .. :try_end_e} :catch_5

    :cond_9
    return-void

    .line 105
    :cond_a
    :try_start_f
    iget-object v8, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->outboxAttachment:Lio/olvid/engine/networksend/databases/OutboxAttachment;

    invoke-virtual {v8}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->getChunkUploadPrivateUrls()[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    const/16 v9, 0x8

    if-nez v8, :cond_d

    .line 106
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 173
    :try_start_10
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 186
    :try_start_11
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->hasNoReasonForCancel()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 187
    invoke-virtual {p0, v3}, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->cancel(Ljava/lang/Integer;)V

    .line 189
    :cond_b
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->processCancel()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    if-eqz v0, :cond_c

    .line 192
    :try_start_12
    invoke-virtual {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_12
    .catch Ljava/sql/SQLException; {:try_start_12 .. :try_end_12} :catch_5

    :cond_c
    return-void

    :cond_d
    const/4 v8, 0x0

    .line 111
    :goto_1
    :try_start_13
    array-length v10, v6

    if-ge v8, v10, :cond_f

    .line 112
    array-length v10, v6

    sub-int/2addr v10, v8

    invoke-virtual {v4, v6, v8, v10}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v10

    if-gez v10, :cond_e

    goto :goto_2

    :cond_e
    add-int/2addr v8, v10

    goto :goto_1

    .line 118
    :cond_f
    :goto_2
    new-instance v10, Lio/olvid/engine/datatypes/Chunk;

    iget-object v11, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->outboxAttachment:Lio/olvid/engine/networksend/databases/OutboxAttachment;

    invoke-virtual {v11}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->getAcknowledgedChunkCount()I

    move-result v11

    invoke-static {v6, v1, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    invoke-direct {v10, v11, v8}, Lio/olvid/engine/datatypes/Chunk;-><init>(I[B)V

    .line 119
    iget-object v8, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->outboxAttachment:Lio/olvid/engine/networksend/databases/OutboxAttachment;

    invoke-virtual {v8}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->getKey()Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    move-result-object v8

    invoke-virtual {v10}, Lio/olvid/engine/datatypes/Chunk;->encode()Lio/olvid/engine/encoder/Encoded;

    move-result-object v11

    invoke-virtual {v11}, Lio/olvid/engine/encoder/Encoded;->getBytes()[B

    move-result-object v11

    invoke-interface {v5, v8, v11, v7}, Lio/olvid/engine/crypto/AuthEnc;->encrypt(Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;[BLio/olvid/engine/crypto/PRNG;)Lio/olvid/engine/datatypes/EncryptedBytes;

    move-result-object v8

    .line 121
    new-instance v11, Lio/olvid/engine/networksend/operations/UploadAttachmentServerMethodForS3;

    iget-object v12, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->outboxAttachment:Lio/olvid/engine/networksend/databases/OutboxAttachment;

    .line 122
    invoke-virtual {v12}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->getChunkUploadPrivateUrls()[Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10}, Lio/olvid/engine/datatypes/Chunk;->getChunkNumber()I

    move-result v13

    aget-object v12, v12, v13

    invoke-direct {v11, v12, v8}, Lio/olvid/engine/networksend/operations/UploadAttachmentServerMethodForS3;-><init>(Ljava/lang/String;Lio/olvid/engine/datatypes/EncryptedBytes;)V

    const-wide/16 v12, 0x64

    .line 125
    new-instance v8, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation$1;

    invoke-direct {v8, p0, v0}, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation$1;-><init>(Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;Lio/olvid/engine/networksend/datatypes/SendManagerSession;)V

    invoke-virtual {v11, v12, v13, v8}, Lio/olvid/engine/networksend/operations/UploadAttachmentServerMethodForS3;->setProgressListener(JLio/olvid/engine/datatypes/ServerMethodForS3$ServerMethodForS3ProgressListener;)V

    .line 143
    invoke-virtual {v11}, Lio/olvid/engine/networksend/operations/UploadAttachmentServerMethodForS3;->execute()B

    move-result v8

    const/4 v11, -0x1

    if-eq v8, v11, :cond_17

    if-eqz v8, :cond_15

    const/4 v2, 0x2

    if-eq v8, v2, :cond_12

    const/4 v2, 0x3

    .line 162
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 173
    :try_start_14
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_14} :catch_2
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_3
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    .line 186
    :try_start_15
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->hasNoReasonForCancel()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 187
    invoke-virtual {p0, v3}, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->cancel(Ljava/lang/Integer;)V

    .line 189
    :cond_10
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->processCancel()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    if-eqz v0, :cond_11

    .line 192
    :try_start_16
    invoke-virtual {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_16
    .catch Ljava/sql/SQLException; {:try_start_16 .. :try_end_16} :catch_5

    :cond_11
    return-void

    .line 159
    :cond_12
    :try_start_17
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    .line 173
    :try_start_18
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_18} :catch_2
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_3
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    .line 186
    :try_start_19
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->hasNoReasonForCancel()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 187
    invoke-virtual {p0, v3}, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->cancel(Ljava/lang/Integer;)V

    .line 189
    :cond_13
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->processCancel()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    if-eqz v0, :cond_14

    .line 192
    :try_start_1a
    invoke-virtual {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_1a
    .catch Ljava/sql/SQLException; {:try_start_1a .. :try_end_1a} :catch_5

    :cond_14
    return-void

    .line 148
    :cond_15
    :try_start_1b
    iget-object v8, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->coordinatorWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;

    if-eqz v8, :cond_16

    .line 150
    iget-object v9, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->messageUid:Lio/olvid/engine/datatypes/UID;

    iget v11, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->attachmentNumber:I

    invoke-virtual {v8, v9, v11}, Lio/olvid/engine/networksend/coordinators/SendAttachmentCoordinator;->resetFailedAttemptCount(Lio/olvid/engine/datatypes/UID;I)V

    .line 152
    :cond_16
    iget-object v8, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->outboxAttachment:Lio/olvid/engine/networksend/databases/OutboxAttachment;

    invoke-virtual {v10}, Lio/olvid/engine/datatypes/Chunk;->getChunkNumber()I

    move-result v9

    add-int/2addr v9, v2

    invoke-virtual {v8, v9}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->setAcknowledgedChunkCount(I)V

    .line 153
    iget-object v8, v0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v8}, Lio/olvid/engine/datatypes/Session;->commit()V

    .line 167
    iget-object v8, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->messageUid:Lio/olvid/engine/datatypes/UID;

    iget v9, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->attachmentNumber:I

    invoke-static {v0, v8, v9}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->get(Lio/olvid/engine/networksend/datatypes/SendManagerSession;Lio/olvid/engine/datatypes/UID;I)Lio/olvid/engine/networksend/databases/OutboxAttachment;

    move-result-object v8

    iput-object v8, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->outboxAttachment:Lio/olvid/engine/networksend/databases/OutboxAttachment;

    .line 168
    iget-object v8, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->outboxAttachment:Lio/olvid/engine/networksend/databases/OutboxAttachment;

    if-eqz v8, :cond_5

    .line 169
    iget-object v8, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->outboxAttachment:Lio/olvid/engine/networksend/databases/OutboxAttachment;

    invoke-virtual {v8}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->getPriority()J

    move-result-wide v8

    iput-wide v8, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->priority:J

    goto/16 :goto_0

    .line 156
    :cond_17
    invoke-virtual {p0, v3}, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    .line 173
    :try_start_1c
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_1c} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_3
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    .line 186
    :try_start_1d
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->hasNoReasonForCancel()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 187
    invoke-virtual {p0, v3}, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->cancel(Ljava/lang/Integer;)V

    .line 189
    :cond_18
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->processCancel()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    if-eqz v0, :cond_19

    .line 192
    :try_start_1e
    invoke-virtual {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_1e
    .catch Ljava/sql/SQLException; {:try_start_1e .. :try_end_1e} :catch_5

    :cond_19
    return-void

    .line 173
    :cond_1a
    :try_start_1f
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_1f} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_0
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    .line 183
    :try_start_20
    iget-object v1, v0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Session;->commit()V

    .line 184
    :goto_3
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->setFinished()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_5

    goto/16 :goto_a

    :catchall_0
    move-exception v1

    move-object v2, v1

    const/4 v1, 0x1

    goto/16 :goto_b

    :catch_0
    move-exception v1

    move-object v2, v1

    const/4 v1, 0x1

    goto :goto_9

    :catch_1
    const/4 v1, 0x1

    goto :goto_5

    :catchall_1
    move-exception v2

    .line 86
    :try_start_21
    throw v2
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_2

    :catchall_2
    move-exception v5

    .line 173
    :try_start_22
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v4

    :try_start_23
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v5
    :try_end_23
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_23} :catch_2
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_3
    .catchall {:try_start_23 .. :try_end_23} :catchall_4

    :catch_2
    :goto_5
    :try_start_24
    const-string v2, "Attachment not found"

    .line 174
    invoke-static {v2}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    const/4 v2, 0x6

    .line 175
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_3
    .catchall {:try_start_24 .. :try_end_24} :catchall_4

    if-eqz v1, :cond_1b

    .line 183
    :try_start_25
    iget-object v1, v0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Session;->commit()V

    .line 184
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->setFinished()V

    goto :goto_6

    .line 186
    :cond_1b
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->hasNoReasonForCancel()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 187
    invoke-virtual {p0, v3}, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->cancel(Ljava/lang/Integer;)V

    .line 189
    :cond_1c
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->processCancel()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_5

    :goto_6
    if-eqz v0, :cond_1d

    .line 192
    :try_start_26
    invoke-virtual {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_26
    .catch Ljava/sql/SQLException; {:try_start_26 .. :try_end_26} :catch_5

    :cond_1d
    return-void

    .line 183
    :cond_1e
    :goto_7
    :try_start_27
    iget-object v1, v0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Session;->commit()V

    .line 184
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->setFinished()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_5

    if-eqz v0, :cond_1f

    .line 192
    :try_start_28
    invoke-virtual {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_28
    .catch Ljava/sql/SQLException; {:try_start_28 .. :try_end_28} :catch_5

    :cond_1f
    return-void

    :cond_20
    :goto_8
    const/4 v2, 0x4

    .line 77
    :try_start_29
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->cancel(Ljava/lang/Integer;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_3
    .catchall {:try_start_29 .. :try_end_29} :catchall_4

    .line 186
    :try_start_2a
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->hasNoReasonForCancel()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 187
    invoke-virtual {p0, v3}, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->cancel(Ljava/lang/Integer;)V

    .line 189
    :cond_21
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->processCancel()V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_5

    if-eqz v0, :cond_22

    .line 192
    :try_start_2b
    invoke-virtual {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_2b
    .catch Ljava/sql/SQLException; {:try_start_2b .. :try_end_2b} :catch_5

    :cond_22
    return-void

    :catchall_4
    move-exception v2

    goto :goto_b

    :catch_3
    move-exception v2

    .line 179
    :goto_9
    :try_start_2c
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_4

    if-eqz v1, :cond_23

    .line 183
    :try_start_2d
    iget-object v1, v0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Session;->commit()V

    goto :goto_3

    .line 186
    :cond_23
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->hasNoReasonForCancel()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 187
    invoke-virtual {p0, v3}, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->cancel(Ljava/lang/Integer;)V

    .line 189
    :cond_24
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->processCancel()V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_5

    :goto_a
    if-eqz v0, :cond_2a

    .line 192
    :try_start_2e
    invoke-virtual {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_2e
    .catch Ljava/sql/SQLException; {:try_start_2e .. :try_end_2e} :catch_5

    goto :goto_e

    :goto_b
    if-nez v1, :cond_26

    .line 186
    :try_start_2f
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->hasNoReasonForCancel()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 187
    invoke-virtual {p0, v3}, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->cancel(Ljava/lang/Integer;)V

    .line 189
    :cond_25
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->processCancel()V

    goto :goto_c

    .line 183
    :cond_26
    iget-object v1, v0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Session;->commit()V

    .line 184
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->setFinished()V

    .line 191
    :goto_c
    throw v2

    .line 186
    :catch_4
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->hasNoReasonForCancel()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 187
    invoke-virtual {p0, v3}, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->cancel(Ljava/lang/Integer;)V

    .line 189
    :cond_27
    invoke-virtual {p0}, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->processCancel()V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_5

    if-eqz v0, :cond_28

    .line 192
    :try_start_30
    invoke-virtual {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_30
    .catch Ljava/sql/SQLException; {:try_start_30 .. :try_end_30} :catch_5

    :cond_28
    return-void

    :catchall_5
    move-exception v1

    .line 62
    :try_start_31
    throw v1
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_6

    :catchall_6
    move-exception v2

    if-eqz v0, :cond_29

    .line 192
    :try_start_32
    invoke-virtual {v0}, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->close()V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_7

    goto :goto_d

    :catchall_7
    move-exception v0

    :try_start_33
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_29
    :goto_d
    throw v2
    :try_end_33
    .catch Ljava/sql/SQLException; {:try_start_33 .. :try_end_33} :catch_5

    :catch_5
    move-exception v0

    .line 193
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    :cond_2a
    :goto_e
    return-void
.end method

.method public getAttachmentNumber()I
    .locals 1

    .line 49
    iget v0, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->attachmentNumber:I

    return v0
.end method

.method public getMessageUid()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 45
    iget-object v0, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->messageUid:Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method

.method public getPriority()J
    .locals 2

    .line 199
    iget-wide v0, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentOperation;->priority:J

    return-wide v0
.end method
