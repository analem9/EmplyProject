.class Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod;
.super Lio/olvid/engine/datatypes/ServerMethod;
.source "DownloadMessagesAndListAttachmentsOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod$MessageAndAttachmentLengths;
    }
.end annotation


# static fields
.field private static final SERVER_METHOD_PATH:Ljava/lang/String; = "/downloadMessagesAndListAttachments"


# instance fields
.field private final deviceUid:Lio/olvid/engine/datatypes/UID;

.field private final identity:Lio/olvid/engine/datatypes/Identity;

.field private messageAndAttachmentLengthsArray:[Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod$MessageAndAttachmentLengths;

.field private final server:Ljava/lang/String;

.field private final token:[B


# direct methods
.method constructor <init>(Lio/olvid/engine/datatypes/Identity;[BLio/olvid/engine/datatypes/UID;)V
    .locals 1

    .line 173
    invoke-direct {p0}, Lio/olvid/engine/datatypes/ServerMethod;-><init>()V

    .line 174
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Identity;->getServer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod;->server:Ljava/lang/String;

    .line 175
    iput-object p1, p0, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod;->identity:Lio/olvid/engine/datatypes/Identity;

    .line 176
    iput-object p2, p0, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod;->token:[B

    .line 177
    iput-object p3, p0, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod;->deviceUid:Lio/olvid/engine/datatypes/UID;

    return-void
.end method


# virtual methods
.method protected getDataToSend()[B
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lio/olvid/engine/encoder/Encoded;

    .line 192
    iget-object v1, p0, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod;->identity:Lio/olvid/engine/datatypes/Identity;

    .line 193
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod;->token:[B

    .line 194
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of([B)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod;->deviceUid:Lio/olvid/engine/datatypes/UID;

    .line 195
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 192
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getMessageAndAttachmentLengthsArray()[Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod$MessageAndAttachmentLengths;
    .locals 1

    .line 170
    iget-object v0, p0, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod;->messageAndAttachmentLengthsArray:[Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod$MessageAndAttachmentLengths;

    return-object v0
.end method

.method protected getServer()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod;->server:Ljava/lang/String;

    return-object v0
.end method

.method protected getServerMethod()Ljava/lang/String;
    .locals 1

    const-string v0, "/downloadMessagesAndListAttachments"

    return-object v0
.end method

.method protected parseReceivedData([Lio/olvid/engine/encoder/Encoded;)V
    .locals 19

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    .line 201
    iget-byte v1, v9, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod;->returnStatus:B

    if-nez v1, :cond_4

    .line 203
    :try_start_0
    array-length v1, v0

    new-array v1, v1, [Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod$MessageAndAttachmentLengths;

    iput-object v1, v9, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod;->messageAndAttachmentLengthsArray:[Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod$MessageAndAttachmentLengths;

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 204
    :goto_0
    array-length v1, v0

    if-ge v11, v1, :cond_4

    .line 205
    aget-object v1, v0, v11

    invoke-virtual {v1}, Lio/olvid/engine/encoder/Encoded;->decodeList()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v12

    .line 206
    array-length v1, v12

    add-int/lit8 v13, v1, -0x4

    .line 207
    iget-object v14, v9, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod;->messageAndAttachmentLengthsArray:[Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod$MessageAndAttachmentLengths;

    new-instance v15, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod$MessageAndAttachmentLengths;

    aget-object v1, v12, v10

    .line 208
    invoke-virtual {v1}, Lio/olvid/engine/encoder/Encoded;->decodeUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v3

    const/16 v16, 0x1

    aget-object v1, v12, v16

    .line 209
    invoke-virtual {v1}, Lio/olvid/engine/encoder/Encoded;->decodeLong()J

    move-result-wide v4

    const/16 v17, 0x2

    aget-object v1, v12, v17

    .line 210
    invoke-virtual {v1}, Lio/olvid/engine/encoder/Encoded;->decodeEncryptedData()Lio/olvid/engine/datatypes/EncryptedBytes;

    move-result-object v6

    const/16 v18, 0x3

    aget-object v1, v12, v18

    .line 211
    invoke-virtual {v1}, Lio/olvid/engine/encoder/Encoded;->decodeEncryptedData()Lio/olvid/engine/datatypes/EncryptedBytes;

    move-result-object v7

    move-object v1, v15

    move-object/from16 v2, p0

    move v8, v13

    invoke-direct/range {v1 .. v8}, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod$MessageAndAttachmentLengths;-><init>(Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod;Lio/olvid/engine/datatypes/UID;JLio/olvid/engine/datatypes/EncryptedBytes;Lio/olvid/engine/datatypes/EncryptedBytes;I)V

    aput-object v15, v14, v11

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v13, :cond_1

    add-int/lit8 v2, v1, 0x4

    .line 214
    aget-object v2, v12, v2

    invoke-virtual {v2}, Lio/olvid/engine/encoder/Encoded;->decodeList()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v2

    .line 215
    aget-object v3, v2, v10

    invoke-virtual {v3}, Lio/olvid/engine/encoder/Encoded;->decodeLong()J

    move-result-wide v3

    long-to-int v4, v3

    .line 216
    aget-object v3, v2, v16

    invoke-virtual {v3}, Lio/olvid/engine/encoder/Encoded;->decodeLong()J

    move-result-wide v5

    .line 217
    aget-object v3, v2, v17

    invoke-virtual {v3}, Lio/olvid/engine/encoder/Encoded;->decodeLong()J

    move-result-wide v7

    long-to-int v3, v7

    .line 218
    aget-object v2, v2, v18

    invoke-virtual {v2}, Lio/olvid/engine/encoder/Encoded;->decodeStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 219
    iget-object v7, v9, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod;->messageAndAttachmentLengthsArray:[Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod$MessageAndAttachmentLengths;

    aget-object v7, v7, v11

    iget-object v7, v7, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod$MessageAndAttachmentLengths;->attachmentLengths:[J

    aput-wide v5, v7, v4

    .line 220
    iget-object v7, v9, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod;->messageAndAttachmentLengthsArray:[Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod$MessageAndAttachmentLengths;

    aget-object v7, v7, v11

    iget-object v7, v7, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod$MessageAndAttachmentLengths;->chunkLengths:[I

    aput v3, v7, v4

    .line 221
    array-length v7, v2

    const-wide/16 v14, 0x1

    sub-long/2addr v5, v14

    int-to-long v14, v3

    div-long/2addr v5, v14

    long-to-int v3, v5

    add-int/lit8 v3, v3, 0x1

    if-ne v7, v3, :cond_0

    .line 222
    iget-object v3, v9, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod;->messageAndAttachmentLengthsArray:[Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod$MessageAndAttachmentLengths;

    aget-object v3, v3, v11

    iget-object v3, v3, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod$MessageAndAttachmentLengths;->chunkDownloadPrivateUrls:[[Ljava/lang/String;

    aput-object v2, v3, v4

    goto :goto_2

    .line 224
    :cond_0
    iget-object v2, v9, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod;->messageAndAttachmentLengthsArray:[Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod$MessageAndAttachmentLengths;

    aget-object v2, v2, v11

    iget-object v2, v2, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod$MessageAndAttachmentLengths;->chunkDownloadPrivateUrls:[[Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v3, v2, v4

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v13, :cond_3

    .line 228
    iget-object v2, v9, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod;->messageAndAttachmentLengthsArray:[Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod$MessageAndAttachmentLengths;

    aget-object v2, v2, v11

    iget-object v2, v2, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod$MessageAndAttachmentLengths;->chunkLengths:[I

    aget v2, v2, v1

    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 229
    :cond_2
    new-instance v0, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {v0}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw v0
    :try_end_0
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 234
    invoke-virtual {v0}, Lio/olvid/engine/encoder/DecodingException;->printStackTrace()V

    const/4 v0, -0x1

    .line 235
    iput-byte v0, v9, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod;->returnStatus:B

    :cond_4
    return-void
.end method
