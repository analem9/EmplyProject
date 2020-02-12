.class Lio/olvid/engine/networkfetch/operations/DeviceDiscoveryServerMethod;
.super Lio/olvid/engine/networkfetch/operations/ServerQueryServerMethod;
.source "ServerQueryOperation.java"


# static fields
.field private static final SERVER_METHOD_PATH:Ljava/lang/String; = "/deviceDiscovery"


# instance fields
.field private final identity:Lio/olvid/engine/datatypes/Identity;

.field private final server:Ljava/lang/String;

.field private serverResponse:Lio/olvid/engine/encoder/Encoded;


# direct methods
.method public constructor <init>(Lio/olvid/engine/datatypes/Identity;)V
    .locals 1

    .line 131
    invoke-direct {p0}, Lio/olvid/engine/networkfetch/operations/ServerQueryServerMethod;-><init>()V

    .line 132
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Identity;->getServer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/engine/networkfetch/operations/DeviceDiscoveryServerMethod;->server:Ljava/lang/String;

    .line 133
    iput-object p1, p0, Lio/olvid/engine/networkfetch/operations/DeviceDiscoveryServerMethod;->identity:Lio/olvid/engine/datatypes/Identity;

    return-void
.end method


# virtual methods
.method protected getDataToSend()[B
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lio/olvid/engine/encoder/Encoded;

    .line 148
    iget-object v1, p0, Lio/olvid/engine/networkfetch/operations/DeviceDiscoveryServerMethod;->identity:Lio/olvid/engine/datatypes/Identity;

    .line 149
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 148
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method protected getServer()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lio/olvid/engine/networkfetch/operations/DeviceDiscoveryServerMethod;->server:Ljava/lang/String;

    return-object v0
.end method

.method protected getServerMethod()Ljava/lang/String;
    .locals 1

    const-string v0, "/deviceDiscovery"

    return-object v0
.end method

.method public getServerResponse()Lio/olvid/engine/encoder/Encoded;
    .locals 1

    .line 169
    iget-object v0, p0, Lio/olvid/engine/networkfetch/operations/DeviceDiscoveryServerMethod;->serverResponse:Lio/olvid/engine/encoder/Encoded;

    return-object v0
.end method

.method protected parseReceivedData([Lio/olvid/engine/encoder/Encoded;)V
    .locals 2

    .line 155
    iget-byte v0, p0, Lio/olvid/engine/networkfetch/operations/DeviceDiscoveryServerMethod;->returnStatus:B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 158
    :try_start_0
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lio/olvid/engine/encoder/Encoded;->decodeUidArray()[Lio/olvid/engine/datatypes/UID;

    .line 159
    aget-object p1, p1, v0

    iput-object p1, p0, Lio/olvid/engine/networkfetch/operations/DeviceDiscoveryServerMethod;->serverResponse:Lio/olvid/engine/encoder/Encoded;
    :try_end_0
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 161
    invoke-virtual {p1}, Lio/olvid/engine/encoder/DecodingException;->printStackTrace()V

    const/4 p1, -0x1

    .line 162
    iput-byte p1, p0, Lio/olvid/engine/networkfetch/operations/DeviceDiscoveryServerMethod;->returnStatus:B

    :cond_0
    :goto_0
    return-void
.end method
