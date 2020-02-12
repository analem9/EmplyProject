.class Lio/olvid/engine/networkfetch/operations/RequestChallengeServerMethod;
.super Lio/olvid/engine/datatypes/ServerMethod;
.source "RequestChallengeOperation.java"


# static fields
.field private static final SERVER_METHOD_PATH:Ljava/lang/String; = "/requestChallenge"


# instance fields
.field private final apiKey:Ljava/util/UUID;

.field private challenge:[B

.field private final identity:Lio/olvid/engine/datatypes/Identity;

.field private final nonce:[B

.field private final server:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/olvid/engine/datatypes/Identity;[BLjava/util/UUID;)V
    .locals 1

    .line 131
    invoke-direct {p0}, Lio/olvid/engine/datatypes/ServerMethod;-><init>()V

    const/4 v0, 0x0

    .line 129
    iput-object v0, p0, Lio/olvid/engine/networkfetch/operations/RequestChallengeServerMethod;->challenge:[B

    .line 132
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Identity;->getServer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/engine/networkfetch/operations/RequestChallengeServerMethod;->server:Ljava/lang/String;

    .line 133
    iput-object p1, p0, Lio/olvid/engine/networkfetch/operations/RequestChallengeServerMethod;->identity:Lio/olvid/engine/datatypes/Identity;

    .line 134
    iput-object p2, p0, Lio/olvid/engine/networkfetch/operations/RequestChallengeServerMethod;->nonce:[B

    .line 135
    iput-object p3, p0, Lio/olvid/engine/networkfetch/operations/RequestChallengeServerMethod;->apiKey:Ljava/util/UUID;

    return-void
.end method


# virtual methods
.method public getChallenge()[B
    .locals 1

    .line 139
    iget-object v0, p0, Lio/olvid/engine/networkfetch/operations/RequestChallengeServerMethod;->challenge:[B

    return-object v0
.end method

.method protected getDataToSend()[B
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lio/olvid/engine/encoder/Encoded;

    .line 154
    iget-object v1, p0, Lio/olvid/engine/networkfetch/operations/RequestChallengeServerMethod;->identity:Lio/olvid/engine/datatypes/Identity;

    .line 155
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/networkfetch/operations/RequestChallengeServerMethod;->nonce:[B

    .line 156
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of([B)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/networkfetch/operations/RequestChallengeServerMethod;->apiKey:Ljava/util/UUID;

    .line 157
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Ljava/util/UUID;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 154
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method protected getServer()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lio/olvid/engine/networkfetch/operations/RequestChallengeServerMethod;->server:Ljava/lang/String;

    return-object v0
.end method

.method protected getServerMethod()Ljava/lang/String;
    .locals 1

    const-string v0, "/requestChallenge"

    return-object v0
.end method

.method protected parseReceivedData([Lio/olvid/engine/encoder/Encoded;)V
    .locals 3

    .line 163
    iget-byte v0, p0, Lio/olvid/engine/networkfetch/operations/RequestChallengeServerMethod;->returnStatus:B

    if-nez v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 165
    :try_start_0
    aget-object v0, p1, v0

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeBytes()[B

    move-result-object v0

    const/4 v2, 0x1

    .line 166
    aget-object p1, p1, v2

    invoke-virtual {p1}, Lio/olvid/engine/encoder/Encoded;->decodeBytes()[B

    move-result-object p1

    .line 167
    iget-object v2, p0, Lio/olvid/engine/networkfetch/operations/RequestChallengeServerMethod;->nonce:[B

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    array-length p1, v0

    const/16 v2, 0x20

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    iput-object v0, p0, Lio/olvid/engine/networkfetch/operations/RequestChallengeServerMethod;->challenge:[B

    goto :goto_1

    .line 169
    :cond_1
    :goto_0
    iput-byte v1, p0, Lio/olvid/engine/networkfetch/operations/RequestChallengeServerMethod;->returnStatus:B
    :try_end_0
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 174
    invoke-virtual {p1}, Lio/olvid/engine/encoder/DecodingException;->printStackTrace()V

    .line 175
    iput-byte v1, p0, Lio/olvid/engine/networkfetch/operations/RequestChallengeServerMethod;->returnStatus:B

    :cond_2
    :goto_1
    return-void
.end method
