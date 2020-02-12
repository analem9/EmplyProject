.class Lio/olvid/engine/networksend/operations/RefreshOutboxAttachmentSignedUrlServerMethod;
.super Lio/olvid/engine/datatypes/ServerMethod;
.source "RefreshOutboxAttachmentSignedUrlOperation.java"


# static fields
.field private static final SERVER_METHOD_PATH:Ljava/lang/String; = "/uploadAttachment"


# instance fields
.field private final attachmentNumber:I

.field private final expectedChunkCount:I

.field private final messageUidFromServer:Lio/olvid/engine/datatypes/UID;

.field private final server:Ljava/lang/String;

.field private signedUrls:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/olvid/engine/datatypes/UID;II)V
    .locals 1

    .line 123
    invoke-direct {p0}, Lio/olvid/engine/datatypes/ServerMethod;-><init>()V

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lio/olvid/engine/networksend/operations/RefreshOutboxAttachmentSignedUrlServerMethod;->signedUrls:[Ljava/lang/String;

    .line 124
    iput-object p1, p0, Lio/olvid/engine/networksend/operations/RefreshOutboxAttachmentSignedUrlServerMethod;->server:Ljava/lang/String;

    .line 125
    iput-object p2, p0, Lio/olvid/engine/networksend/operations/RefreshOutboxAttachmentSignedUrlServerMethod;->messageUidFromServer:Lio/olvid/engine/datatypes/UID;

    .line 126
    iput p3, p0, Lio/olvid/engine/networksend/operations/RefreshOutboxAttachmentSignedUrlServerMethod;->attachmentNumber:I

    .line 127
    iput p4, p0, Lio/olvid/engine/networksend/operations/RefreshOutboxAttachmentSignedUrlServerMethod;->expectedChunkCount:I

    return-void
.end method


# virtual methods
.method protected getDataToSend()[B
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lio/olvid/engine/encoder/Encoded;

    .line 142
    iget-object v1, p0, Lio/olvid/engine/networksend/operations/RefreshOutboxAttachmentSignedUrlServerMethod;->messageUidFromServer:Lio/olvid/engine/datatypes/UID;

    .line 143
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lio/olvid/engine/networksend/operations/RefreshOutboxAttachmentSignedUrlServerMethod;->attachmentNumber:I

    int-to-long v1, v1

    .line 144
    invoke-static {v1, v2}, Lio/olvid/engine/encoder/Encoded;->of(J)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 142
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method protected getServer()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lio/olvid/engine/networksend/operations/RefreshOutboxAttachmentSignedUrlServerMethod;->server:Ljava/lang/String;

    return-object v0
.end method

.method protected getServerMethod()Ljava/lang/String;
    .locals 1

    const-string v0, "/uploadAttachment"

    return-object v0
.end method

.method public getSignedUrls()[Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lio/olvid/engine/networksend/operations/RefreshOutboxAttachmentSignedUrlServerMethod;->signedUrls:[Ljava/lang/String;

    return-object v0
.end method

.method protected parseReceivedData([Lio/olvid/engine/encoder/Encoded;)V
    .locals 2

    .line 150
    iget-byte v0, p0, Lio/olvid/engine/networksend/operations/RefreshOutboxAttachmentSignedUrlServerMethod;->returnStatus:B

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 152
    :try_start_0
    aget-object p1, p1, v0

    invoke-virtual {p1}, Lio/olvid/engine/encoder/Encoded;->decodeStringArray()[Ljava/lang/String;

    move-result-object p1

    .line 153
    array-length v0, p1

    iget v1, p0, Lio/olvid/engine/networksend/operations/RefreshOutboxAttachmentSignedUrlServerMethod;->expectedChunkCount:I

    if-ne v0, v1, :cond_0

    .line 156
    iput-object p1, p0, Lio/olvid/engine/networksend/operations/RefreshOutboxAttachmentSignedUrlServerMethod;->signedUrls:[Ljava/lang/String;

    goto :goto_0

    .line 154
    :cond_0
    new-instance p1, Lio/olvid/engine/encoder/DecodingException;

    const-string v0, "Attachment chunk count mismatch"

    invoke-direct {p1, v0}, Lio/olvid/engine/encoder/DecodingException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 158
    invoke-virtual {p1}, Lio/olvid/engine/encoder/DecodingException;->printStackTrace()V

    const/4 p1, -0x1

    .line 159
    iput-byte p1, p0, Lio/olvid/engine/networksend/operations/RefreshOutboxAttachmentSignedUrlServerMethod;->returnStatus:B

    :cond_1
    :goto_0
    return-void
.end method
