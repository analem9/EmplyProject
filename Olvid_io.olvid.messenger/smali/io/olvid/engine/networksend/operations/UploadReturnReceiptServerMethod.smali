.class Lio/olvid/engine/networksend/operations/UploadReturnReceiptServerMethod;
.super Lio/olvid/engine/datatypes/ServerMethod;
.source "UploadReturnReceiptOperation.java"


# static fields
.field private static final SERVER_METHOD_PATH:Ljava/lang/String; = "/uploadReturnReceipt"


# instance fields
.field private final contactDeviceUids:[Lio/olvid/engine/datatypes/UID;

.field private final contactIdentity:Lio/olvid/engine/datatypes/Identity;

.field private final encryptedPayload:Lio/olvid/engine/datatypes/EncryptedBytes;

.field private final nonce:[B

.field private final server:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/datatypes/UID;[BLio/olvid/engine/datatypes/EncryptedBytes;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lio/olvid/engine/datatypes/ServerMethod;-><init>()V

    .line 117
    iput-object p1, p0, Lio/olvid/engine/networksend/operations/UploadReturnReceiptServerMethod;->server:Ljava/lang/String;

    .line 118
    iput-object p2, p0, Lio/olvid/engine/networksend/operations/UploadReturnReceiptServerMethod;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 119
    iput-object p3, p0, Lio/olvid/engine/networksend/operations/UploadReturnReceiptServerMethod;->contactDeviceUids:[Lio/olvid/engine/datatypes/UID;

    .line 120
    iput-object p4, p0, Lio/olvid/engine/networksend/operations/UploadReturnReceiptServerMethod;->nonce:[B

    .line 121
    iput-object p5, p0, Lio/olvid/engine/networksend/operations/UploadReturnReceiptServerMethod;->encryptedPayload:Lio/olvid/engine/datatypes/EncryptedBytes;

    return-void
.end method


# virtual methods
.method protected getDataToSend()[B
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lio/olvid/engine/encoder/Encoded;

    .line 136
    iget-object v1, p0, Lio/olvid/engine/networksend/operations/UploadReturnReceiptServerMethod;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 137
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/networksend/operations/UploadReturnReceiptServerMethod;->contactDeviceUids:[Lio/olvid/engine/datatypes/UID;

    .line 138
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/networksend/operations/UploadReturnReceiptServerMethod;->nonce:[B

    .line 139
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of([B)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/networksend/operations/UploadReturnReceiptServerMethod;->encryptedPayload:Lio/olvid/engine/datatypes/EncryptedBytes;

    .line 140
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/EncryptedBytes;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 136
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method protected getServer()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lio/olvid/engine/networksend/operations/UploadReturnReceiptServerMethod;->server:Ljava/lang/String;

    return-object v0
.end method

.method protected getServerMethod()Ljava/lang/String;
    .locals 1

    const-string v0, "/uploadReturnReceipt"

    return-object v0
.end method

.method protected parseReceivedData([Lio/olvid/engine/encoder/Encoded;)V
    .locals 0

    return-void
.end method
