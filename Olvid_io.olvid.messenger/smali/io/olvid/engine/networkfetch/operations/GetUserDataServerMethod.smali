.class Lio/olvid/engine/networkfetch/operations/GetUserDataServerMethod;
.super Lio/olvid/engine/networkfetch/operations/ServerQueryServerMethod;
.source "ServerQueryOperation.java"


# static fields
.field private static final SERVER_METHOD_PATH:Ljava/lang/String; = "/getUserData"


# instance fields
.field private final identity:Lio/olvid/engine/datatypes/Identity;

.field private final server:Ljava/lang/String;

.field private final serverLabel:Lio/olvid/engine/datatypes/UID;

.field private serverResponse:Lio/olvid/engine/encoder/Encoded;


# direct methods
.method public constructor <init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;)V
    .locals 1

    .line 239
    invoke-direct {p0}, Lio/olvid/engine/networkfetch/operations/ServerQueryServerMethod;-><init>()V

    .line 240
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Identity;->getServer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/engine/networkfetch/operations/GetUserDataServerMethod;->server:Ljava/lang/String;

    .line 241
    iput-object p1, p0, Lio/olvid/engine/networkfetch/operations/GetUserDataServerMethod;->identity:Lio/olvid/engine/datatypes/Identity;

    .line 242
    iput-object p2, p0, Lio/olvid/engine/networkfetch/operations/GetUserDataServerMethod;->serverLabel:Lio/olvid/engine/datatypes/UID;

    return-void
.end method


# virtual methods
.method protected getDataToSend()[B
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lio/olvid/engine/encoder/Encoded;

    .line 257
    iget-object v1, p0, Lio/olvid/engine/networkfetch/operations/GetUserDataServerMethod;->identity:Lio/olvid/engine/datatypes/Identity;

    .line 258
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/networkfetch/operations/GetUserDataServerMethod;->serverLabel:Lio/olvid/engine/datatypes/UID;

    .line 259
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 257
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    .line 260
    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method protected getServer()Ljava/lang/String;
    .locals 1

    .line 247
    iget-object v0, p0, Lio/olvid/engine/networkfetch/operations/GetUserDataServerMethod;->server:Ljava/lang/String;

    return-object v0
.end method

.method protected getServerMethod()Ljava/lang/String;
    .locals 1

    const-string v0, "/getUserData"

    return-object v0
.end method

.method public getServerResponse()Lio/olvid/engine/encoder/Encoded;
    .locals 1

    .line 279
    iget-object v0, p0, Lio/olvid/engine/networkfetch/operations/GetUserDataServerMethod;->serverResponse:Lio/olvid/engine/encoder/Encoded;

    return-object v0
.end method

.method protected parseReceivedData([Lio/olvid/engine/encoder/Encoded;)V
    .locals 2

    .line 265
    iget-byte v0, p0, Lio/olvid/engine/networkfetch/operations/GetUserDataServerMethod;->returnStatus:B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 268
    :try_start_0
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lio/olvid/engine/encoder/Encoded;->decodeEncryptedData()Lio/olvid/engine/datatypes/EncryptedBytes;

    .line 269
    aget-object p1, p1, v0

    iput-object p1, p0, Lio/olvid/engine/networkfetch/operations/GetUserDataServerMethod;->serverResponse:Lio/olvid/engine/encoder/Encoded;
    :try_end_0
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 271
    invoke-virtual {p1}, Lio/olvid/engine/encoder/DecodingException;->printStackTrace()V

    const/4 p1, -0x1

    .line 272
    iput-byte p1, p0, Lio/olvid/engine/networkfetch/operations/GetUserDataServerMethod;->returnStatus:B

    :cond_0
    :goto_0
    return-void
.end method
