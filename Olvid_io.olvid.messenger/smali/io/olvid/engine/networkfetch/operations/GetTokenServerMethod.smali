.class Lio/olvid/engine/networkfetch/operations/GetTokenServerMethod;
.super Lio/olvid/engine/datatypes/ServerMethod;
.source "GetTokenOperation.java"


# static fields
.field private static final SERVER_METHOD_PATH:Ljava/lang/String; = "/getToken"


# instance fields
.field private final identity:Lio/olvid/engine/datatypes/Identity;

.field private final nonce:[B

.field private final response:[B

.field private final server:Ljava/lang/String;

.field private token:[B


# direct methods
.method public constructor <init>(Lio/olvid/engine/datatypes/Identity;[B[B)V
    .locals 1

    .line 114
    invoke-direct {p0}, Lio/olvid/engine/datatypes/ServerMethod;-><init>()V

    const/4 v0, 0x0

    .line 112
    iput-object v0, p0, Lio/olvid/engine/networkfetch/operations/GetTokenServerMethod;->token:[B

    .line 115
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Identity;->getServer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/engine/networkfetch/operations/GetTokenServerMethod;->server:Ljava/lang/String;

    .line 116
    iput-object p1, p0, Lio/olvid/engine/networkfetch/operations/GetTokenServerMethod;->identity:Lio/olvid/engine/datatypes/Identity;

    .line 117
    iput-object p2, p0, Lio/olvid/engine/networkfetch/operations/GetTokenServerMethod;->response:[B

    .line 118
    iput-object p3, p0, Lio/olvid/engine/networkfetch/operations/GetTokenServerMethod;->nonce:[B

    return-void
.end method


# virtual methods
.method protected getDataToSend()[B
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lio/olvid/engine/encoder/Encoded;

    .line 137
    iget-object v1, p0, Lio/olvid/engine/networkfetch/operations/GetTokenServerMethod;->identity:Lio/olvid/engine/datatypes/Identity;

    .line 138
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/networkfetch/operations/GetTokenServerMethod;->response:[B

    .line 139
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of([B)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/networkfetch/operations/GetTokenServerMethod;->nonce:[B

    .line 140
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of([B)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 137
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method protected getServer()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lio/olvid/engine/networkfetch/operations/GetTokenServerMethod;->server:Ljava/lang/String;

    return-object v0
.end method

.method protected getServerMethod()Ljava/lang/String;
    .locals 1

    const-string v0, "/getToken"

    return-object v0
.end method

.method public getToken()[B
    .locals 1

    .line 122
    iget-object v0, p0, Lio/olvid/engine/networkfetch/operations/GetTokenServerMethod;->token:[B

    return-object v0
.end method

.method protected parseReceivedData([Lio/olvid/engine/encoder/Encoded;)V
    .locals 3

    .line 146
    iget-byte v0, p0, Lio/olvid/engine/networkfetch/operations/GetTokenServerMethod;->returnStatus:B

    if-nez v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 148
    :try_start_0
    aget-object v0, p1, v0

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeBytes()[B

    move-result-object v0

    const/4 v2, 0x1

    .line 149
    aget-object p1, p1, v2

    invoke-virtual {p1}, Lio/olvid/engine/encoder/Encoded;->decodeBytes()[B

    move-result-object p1

    .line 150
    iget-object v2, p0, Lio/olvid/engine/networkfetch/operations/GetTokenServerMethod;->nonce:[B

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    array-length p1, v0

    const/16 v2, 0x20

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    iput-object v0, p0, Lio/olvid/engine/networkfetch/operations/GetTokenServerMethod;->token:[B

    goto :goto_1

    .line 152
    :cond_1
    :goto_0
    iput-byte v1, p0, Lio/olvid/engine/networkfetch/operations/GetTokenServerMethod;->returnStatus:B
    :try_end_0
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 157
    invoke-virtual {p1}, Lio/olvid/engine/encoder/DecodingException;->printStackTrace()V

    .line 158
    iput-byte v1, p0, Lio/olvid/engine/networkfetch/operations/GetTokenServerMethod;->returnStatus:B

    :cond_2
    :goto_1
    return-void
.end method
