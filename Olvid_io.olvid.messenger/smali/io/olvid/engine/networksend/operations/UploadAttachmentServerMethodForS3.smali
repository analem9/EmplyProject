.class Lio/olvid/engine/networksend/operations/UploadAttachmentServerMethodForS3;
.super Lio/olvid/engine/datatypes/ServerMethodForS3;
.source "UploadAttachmentOperation.java"


# instance fields
.field private final encryptedAttachmentChunk:Lio/olvid/engine/datatypes/EncryptedBytes;

.field private final url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lio/olvid/engine/datatypes/EncryptedBytes;)V
    .locals 0

    .line 207
    invoke-direct {p0}, Lio/olvid/engine/datatypes/ServerMethodForS3;-><init>()V

    .line 208
    iput-object p1, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentServerMethodForS3;->url:Ljava/lang/String;

    .line 209
    iput-object p2, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentServerMethodForS3;->encryptedAttachmentChunk:Lio/olvid/engine/datatypes/EncryptedBytes;

    return-void
.end method


# virtual methods
.method protected getDataToSend()[B
    .locals 1

    .line 220
    iget-object v0, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentServerMethodForS3;->encryptedAttachmentChunk:Lio/olvid/engine/datatypes/EncryptedBytes;

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/EncryptedBytes;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method protected getMethod()Ljava/lang/String;
    .locals 1

    const-string v0, "PUT"

    return-object v0
.end method

.method protected getUrl()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lio/olvid/engine/networksend/operations/UploadAttachmentServerMethodForS3;->url:Ljava/lang/String;

    return-object v0
.end method

.method protected handleReceivedData([B)V
    .locals 0

    return-void
.end method
