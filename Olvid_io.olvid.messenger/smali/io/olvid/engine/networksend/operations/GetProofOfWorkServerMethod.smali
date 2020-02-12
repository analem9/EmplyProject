.class Lio/olvid/engine/networksend/operations/GetProofOfWorkServerMethod;
.super Lio/olvid/engine/datatypes/ServerMethod;
.source "GetProofOfWorkFromServerOperation.java"


# static fields
.field private static final SERVER_METHOD_PATH:Ljava/lang/String; = "/getPoWChallenge"


# instance fields
.field private proofOfWorkEncodedChallenge:Lio/olvid/engine/encoder/Encoded;

.field private proofOfWorkUid:Lio/olvid/engine/datatypes/UID;

.field private final server:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 115
    invoke-direct {p0}, Lio/olvid/engine/datatypes/ServerMethod;-><init>()V

    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Lio/olvid/engine/networksend/operations/GetProofOfWorkServerMethod;->proofOfWorkUid:Lio/olvid/engine/datatypes/UID;

    .line 105
    iput-object v0, p0, Lio/olvid/engine/networksend/operations/GetProofOfWorkServerMethod;->proofOfWorkEncodedChallenge:Lio/olvid/engine/encoder/Encoded;

    .line 116
    iput-object p1, p0, Lio/olvid/engine/networksend/operations/GetProofOfWorkServerMethod;->server:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getDataToSend()[B
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public getProofOfWorkEncodedChallenge()Lio/olvid/engine/encoder/Encoded;
    .locals 1

    .line 112
    iget-object v0, p0, Lio/olvid/engine/networksend/operations/GetProofOfWorkServerMethod;->proofOfWorkEncodedChallenge:Lio/olvid/engine/encoder/Encoded;

    return-object v0
.end method

.method public getProofOfWorkUid()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 108
    iget-object v0, p0, Lio/olvid/engine/networksend/operations/GetProofOfWorkServerMethod;->proofOfWorkUid:Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method

.method protected getServer()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lio/olvid/engine/networksend/operations/GetProofOfWorkServerMethod;->server:Ljava/lang/String;

    return-object v0
.end method

.method protected getServerMethod()Ljava/lang/String;
    .locals 1

    const-string v0, "/getPoWChallenge"

    return-object v0
.end method

.method protected parseReceivedData([Lio/olvid/engine/encoder/Encoded;)V
    .locals 1

    .line 136
    iget-byte v0, p0, Lio/olvid/engine/networksend/operations/GetProofOfWorkServerMethod;->returnStatus:B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 138
    :try_start_0
    aget-object v0, p1, v0

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/engine/networksend/operations/GetProofOfWorkServerMethod;->proofOfWorkUid:Lio/olvid/engine/datatypes/UID;

    const/4 v0, 0x1

    .line 139
    aget-object p1, p1, v0

    iput-object p1, p0, Lio/olvid/engine/networksend/operations/GetProofOfWorkServerMethod;->proofOfWorkEncodedChallenge:Lio/olvid/engine/encoder/Encoded;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, -0x1

    .line 141
    iput-byte p1, p0, Lio/olvid/engine/networksend/operations/GetProofOfWorkServerMethod;->returnStatus:B

    :cond_0
    :goto_0
    return-void
.end method
