.class Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsServerMethod;
.super Lio/olvid/engine/datatypes/ServerMethod;
.source "UploadMessageAndGetUidsOperation.java"


# static fields
.field private static final SERVER_METHOD_PATH:Ljava/lang/String; = "/uploadMessageAndGetUids"


# instance fields
.field private attachmentChunkUploadPrivateUrls:[[Ljava/lang/String;

.field private final attachments:[Lio/olvid/engine/networksend/databases/OutboxAttachment;

.field private final encryptedMessage:Lio/olvid/engine/datatypes/EncryptedBytes;

.field private final headers:[Lio/olvid/engine/networksend/databases/MessageHeader;

.field private final isApplicationMessage:Z

.field private final proofOfWorkEncodedSolution:Lio/olvid/engine/encoder/Encoded;

.field private final proofOfWorkUID:Lio/olvid/engine/datatypes/UID;

.field private final server:Ljava/lang/String;

.field private timestampFromServer:J

.field private uidFromServer:Lio/olvid/engine/datatypes/UID;


# direct methods
.method constructor <init>(Ljava/lang/String;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/encoder/Encoded;Lio/olvid/engine/datatypes/EncryptedBytes;Z[Lio/olvid/engine/networksend/databases/MessageHeader;[Lio/olvid/engine/networksend/databases/OutboxAttachment;)V
    .locals 3

    .line 153
    invoke-direct {p0}, Lio/olvid/engine/datatypes/ServerMethod;-><init>()V

    const/4 v0, 0x0

    .line 136
    iput-object v0, p0, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsServerMethod;->uidFromServer:Lio/olvid/engine/datatypes/UID;

    const-wide/16 v1, 0x0

    .line 137
    iput-wide v1, p0, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsServerMethod;->timestampFromServer:J

    .line 138
    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsServerMethod;->attachmentChunkUploadPrivateUrls:[[Ljava/lang/String;

    .line 154
    iput-object p1, p0, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsServerMethod;->server:Ljava/lang/String;

    .line 155
    iput-object p2, p0, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsServerMethod;->proofOfWorkUID:Lio/olvid/engine/datatypes/UID;

    .line 156
    iput-object p3, p0, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsServerMethod;->proofOfWorkEncodedSolution:Lio/olvid/engine/encoder/Encoded;

    .line 157
    iput-object p4, p0, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsServerMethod;->encryptedMessage:Lio/olvid/engine/datatypes/EncryptedBytes;

    .line 158
    iput-boolean p5, p0, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsServerMethod;->isApplicationMessage:Z

    .line 159
    iput-object p6, p0, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsServerMethod;->headers:[Lio/olvid/engine/networksend/databases/MessageHeader;

    .line 160
    iput-object p7, p0, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsServerMethod;->attachments:[Lio/olvid/engine/networksend/databases/OutboxAttachment;

    return-void
.end method


# virtual methods
.method public getAttachmentChunkUploadPrivateUrls()[[Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsServerMethod;->attachmentChunkUploadPrivateUrls:[[Ljava/lang/String;

    return-object v0
.end method

.method protected getDataToSend()[B
    .locals 9

    .line 175
    iget-object v0, p0, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsServerMethod;->headers:[Lio/olvid/engine/networksend/databases/MessageHeader;

    array-length v0, v0

    const/4 v1, 0x3

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [Lio/olvid/engine/encoder/Encoded;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 176
    :goto_0
    iget-object v4, p0, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsServerMethod;->headers:[Lio/olvid/engine/networksend/databases/MessageHeader;

    array-length v5, v4

    const/4 v6, 0x2

    if-ge v3, v5, :cond_0

    mul-int/lit8 v5, v3, 0x3

    .line 177
    aget-object v4, v4, v3

    invoke-virtual {v4}, Lio/olvid/engine/networksend/databases/MessageHeader;->getDeviceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v4

    invoke-static {v4}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v4

    aput-object v4, v0, v5

    add-int/lit8 v4, v5, 0x1

    .line 178
    iget-object v7, p0, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsServerMethod;->headers:[Lio/olvid/engine/networksend/databases/MessageHeader;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Lio/olvid/engine/networksend/databases/MessageHeader;->getWrappedKey()Lio/olvid/engine/datatypes/EncryptedBytes;

    move-result-object v7

    invoke-static {v7}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/EncryptedBytes;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v7

    aput-object v7, v0, v4

    add-int/2addr v5, v6

    .line 179
    iget-object v4, p0, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsServerMethod;->headers:[Lio/olvid/engine/networksend/databases/MessageHeader;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lio/olvid/engine/networksend/databases/MessageHeader;->getToIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v4

    invoke-static {v4}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v4

    aput-object v4, v0, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 181
    :cond_0
    iget-object v3, p0, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsServerMethod;->attachments:[Lio/olvid/engine/networksend/databases/OutboxAttachment;

    array-length v4, v3

    new-array v4, v4, [Lio/olvid/engine/encoder/Encoded;

    .line 182
    array-length v3, v3

    new-array v3, v3, [Lio/olvid/engine/encoder/Encoded;

    const/4 v5, 0x0

    .line 183
    :goto_1
    iget-object v7, p0, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsServerMethod;->attachments:[Lio/olvid/engine/networksend/databases/OutboxAttachment;

    array-length v8, v7

    if-ge v5, v8, :cond_1

    .line 184
    aget-object v7, v7, v5

    invoke-virtual {v7}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->getCiphertextLength()J

    move-result-wide v7

    invoke-static {v7, v8}, Lio/olvid/engine/encoder/Encoded;->of(J)Lio/olvid/engine/encoder/Encoded;

    move-result-object v7

    aput-object v7, v4, v5

    .line 185
    iget-object v7, p0, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsServerMethod;->attachments:[Lio/olvid/engine/networksend/databases/OutboxAttachment;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Lio/olvid/engine/networksend/databases/OutboxAttachment;->getCiphertextChunkLength()I

    move-result v7

    int-to-long v7, v7

    invoke-static {v7, v8}, Lio/olvid/engine/encoder/Encoded;->of(J)Lio/olvid/engine/encoder/Encoded;

    move-result-object v7

    aput-object v7, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x7

    new-array v5, v5, [Lio/olvid/engine/encoder/Encoded;

    .line 187
    iget-object v7, p0, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsServerMethod;->proofOfWorkUID:Lio/olvid/engine/datatypes/UID;

    .line 188
    invoke-static {v7}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v7

    aput-object v7, v5, v2

    iget-object v2, p0, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsServerMethod;->proofOfWorkEncodedSolution:Lio/olvid/engine/encoder/Encoded;

    const/4 v7, 0x1

    aput-object v2, v5, v7

    .line 190
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    aput-object v0, v5, v6

    iget-object v0, p0, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsServerMethod;->encryptedMessage:Lio/olvid/engine/datatypes/EncryptedBytes;

    .line 191
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/EncryptedBytes;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    aput-object v0, v5, v1

    const/4 v0, 0x4

    iget-boolean v1, p0, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsServerMethod;->isApplicationMessage:Z

    .line 192
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Z)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x5

    .line 193
    invoke-static {v4}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x6

    .line 194
    invoke-static {v3}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    aput-object v1, v5, v0

    .line 187
    invoke-static {v5}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method protected getServer()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsServerMethod;->server:Ljava/lang/String;

    return-object v0
.end method

.method protected getServerMethod()Ljava/lang/String;
    .locals 1

    const-string v0, "/uploadMessageAndGetUids"

    return-object v0
.end method

.method public getTimestampFromServer()J
    .locals 2

    .line 146
    iget-wide v0, p0, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsServerMethod;->timestampFromServer:J

    return-wide v0
.end method

.method public getUidFromServer()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 142
    iget-object v0, p0, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsServerMethod;->uidFromServer:Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method

.method protected parseReceivedData([Lio/olvid/engine/encoder/Encoded;)V
    .locals 3

    .line 200
    iget-byte v0, p0, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsServerMethod;->returnStatus:B

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 202
    :try_start_0
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lio/olvid/engine/encoder/Encoded;->decodeUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v1

    iput-object v1, p0, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsServerMethod;->uidFromServer:Lio/olvid/engine/datatypes/UID;

    const/4 v1, 0x1

    .line 203
    aget-object v1, p1, v1

    invoke-virtual {v1}, Lio/olvid/engine/encoder/Encoded;->decodeLong()J

    move-result-wide v1

    iput-wide v1, p0, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsServerMethod;->timestampFromServer:J

    const/4 v1, 0x2

    .line 204
    aget-object p1, p1, v1

    invoke-virtual {p1}, Lio/olvid/engine/encoder/Encoded;->decodeList()[Lio/olvid/engine/encoder/Encoded;

    move-result-object p1

    .line 205
    array-length v1, p1

    iget-object v2, p0, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsServerMethod;->attachments:[Lio/olvid/engine/networksend/databases/OutboxAttachment;

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 208
    iget-object v1, p0, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsServerMethod;->attachments:[Lio/olvid/engine/networksend/databases/OutboxAttachment;

    array-length v1, v1

    new-array v1, v1, [[Ljava/lang/String;

    iput-object v1, p0, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsServerMethod;->attachmentChunkUploadPrivateUrls:[[Ljava/lang/String;

    .line 209
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 210
    iget-object v1, p0, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsServerMethod;->attachmentChunkUploadPrivateUrls:[[Ljava/lang/String;

    aget-object v2, p1, v0

    invoke-virtual {v2}, Lio/olvid/engine/encoder/Encoded;->decodeStringArray()[Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 206
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, -0x1

    .line 213
    iput-byte p1, p0, Lio/olvid/engine/networksend/operations/UploadMessageAndGetUidsServerMethod;->returnStatus:B

    :cond_1
    return-void
.end method
