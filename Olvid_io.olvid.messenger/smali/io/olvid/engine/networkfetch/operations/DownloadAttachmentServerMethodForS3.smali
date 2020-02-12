.class Lio/olvid/engine/networkfetch/operations/DownloadAttachmentServerMethodForS3;
.super Lio/olvid/engine/datatypes/ServerMethodForS3;
.source "DownloadAttachmentOperation.java"


# instance fields
.field private encryptedChunk:Lio/olvid/engine/datatypes/EncryptedBytes;

.field private final url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 245
    invoke-direct {p0}, Lio/olvid/engine/datatypes/ServerMethodForS3;-><init>()V

    .line 246
    iput-object p1, p0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentServerMethodForS3;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getDataToSend()[B
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public getEncryptedChunk()Lio/olvid/engine/datatypes/EncryptedBytes;
    .locals 1

    .line 242
    iget-object v0, p0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentServerMethodForS3;->encryptedChunk:Lio/olvid/engine/datatypes/EncryptedBytes;

    return-object v0
.end method

.method protected getMethod()Ljava/lang/String;
    .locals 1

    const-string v0, "GET"

    return-object v0
.end method

.method protected getUrl()Ljava/lang/String;
    .locals 1

    .line 251
    iget-object v0, p0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentServerMethodForS3;->url:Ljava/lang/String;

    return-object v0
.end method

.method protected handleReceivedData([B)V
    .locals 1

    .line 261
    new-instance v0, Lio/olvid/engine/datatypes/EncryptedBytes;

    invoke-direct {v0, p1}, Lio/olvid/engine/datatypes/EncryptedBytes;-><init>([B)V

    iput-object v0, p0, Lio/olvid/engine/networkfetch/operations/DownloadAttachmentServerMethodForS3;->encryptedChunk:Lio/olvid/engine/datatypes/EncryptedBytes;

    return-void
.end method
