.class Lio/olvid/engine/networkfetch/operations/PutUserDataServerMethod;
.super Lio/olvid/engine/networkfetch/operations/ServerQueryServerMethod;
.source "ServerQueryOperation.java"


# static fields
.field private static final SERVER_METHOD_PATH:Ljava/lang/String; = "/putUserData"


# instance fields
.field private final data:Lio/olvid/engine/datatypes/EncryptedBytes;

.field private final identity:Lio/olvid/engine/datatypes/Identity;

.field private final server:Ljava/lang/String;

.field private final serverLabel:Lio/olvid/engine/datatypes/UID;

.field private serverResponse:Lio/olvid/engine/encoder/Encoded;

.field private final token:[B


# direct methods
.method public constructor <init>(Lio/olvid/engine/datatypes/Identity;[BLio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/EncryptedBytes;)V
    .locals 1

    .line 184
    invoke-direct {p0}, Lio/olvid/engine/networkfetch/operations/ServerQueryServerMethod;-><init>()V

    .line 185
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Identity;->getServer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/engine/networkfetch/operations/PutUserDataServerMethod;->server:Ljava/lang/String;

    .line 186
    iput-object p1, p0, Lio/olvid/engine/networkfetch/operations/PutUserDataServerMethod;->identity:Lio/olvid/engine/datatypes/Identity;

    .line 187
    iput-object p2, p0, Lio/olvid/engine/networkfetch/operations/PutUserDataServerMethod;->token:[B

    .line 188
    iput-object p3, p0, Lio/olvid/engine/networkfetch/operations/PutUserDataServerMethod;->serverLabel:Lio/olvid/engine/datatypes/UID;

    .line 189
    iput-object p4, p0, Lio/olvid/engine/networkfetch/operations/PutUserDataServerMethod;->data:Lio/olvid/engine/datatypes/EncryptedBytes;

    return-void
.end method


# virtual methods
.method protected getDataToSend()[B
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lio/olvid/engine/encoder/Encoded;

    .line 204
    iget-object v1, p0, Lio/olvid/engine/networkfetch/operations/PutUserDataServerMethod;->identity:Lio/olvid/engine/datatypes/Identity;

    .line 205
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/networkfetch/operations/PutUserDataServerMethod;->token:[B

    .line 206
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of([B)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/networkfetch/operations/PutUserDataServerMethod;->serverLabel:Lio/olvid/engine/datatypes/UID;

    .line 207
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/networkfetch/operations/PutUserDataServerMethod;->data:Lio/olvid/engine/datatypes/EncryptedBytes;

    .line 208
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/EncryptedBytes;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 204
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method protected getServer()Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lio/olvid/engine/networkfetch/operations/PutUserDataServerMethod;->server:Ljava/lang/String;

    return-object v0
.end method

.method protected getServerMethod()Ljava/lang/String;
    .locals 1

    const-string v0, "/putUserData"

    return-object v0
.end method

.method public getServerResponse()Lio/olvid/engine/encoder/Encoded;
    .locals 1

    .line 226
    iget-object v0, p0, Lio/olvid/engine/networkfetch/operations/PutUserDataServerMethod;->serverResponse:Lio/olvid/engine/encoder/Encoded;

    return-object v0
.end method

.method protected parseReceivedData([Lio/olvid/engine/encoder/Encoded;)V
    .locals 1

    .line 214
    iget-byte v0, p0, Lio/olvid/engine/networkfetch/operations/PutUserDataServerMethod;->returnStatus:B

    if-nez v0, :cond_1

    .line 215
    array-length p1, p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 217
    iput-object p1, p0, Lio/olvid/engine/networkfetch/operations/PutUserDataServerMethod;->serverResponse:Lio/olvid/engine/encoder/Encoded;

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 219
    iput-byte p1, p0, Lio/olvid/engine/networkfetch/operations/PutUserDataServerMethod;->returnStatus:B

    :cond_1
    :goto_0
    return-void
.end method
