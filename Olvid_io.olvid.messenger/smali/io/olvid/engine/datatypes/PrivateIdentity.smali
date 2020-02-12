.class public Lio/olvid/engine/datatypes/PrivateIdentity;
.super Ljava/lang/Object;
.source "PrivateIdentity.java"


# instance fields
.field private final encryptionPrivateKey:Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPrivateKey;

.field private final macKey:Lio/olvid/engine/datatypes/key/symmetric/MACKey;

.field private final publicIdentity:Lio/olvid/engine/datatypes/Identity;

.field private final serverAuthenticationPrivateKey:Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPrivateKey;


# direct methods
.method public constructor <init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPrivateKey;Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPrivateKey;Lio/olvid/engine/datatypes/key/symmetric/MACKey;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lio/olvid/engine/datatypes/PrivateIdentity;->publicIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 20
    iput-object p2, p0, Lio/olvid/engine/datatypes/PrivateIdentity;->serverAuthenticationPrivateKey:Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPrivateKey;

    .line 21
    iput-object p3, p0, Lio/olvid/engine/datatypes/PrivateIdentity;->encryptionPrivateKey:Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPrivateKey;

    .line 22
    iput-object p4, p0, Lio/olvid/engine/datatypes/PrivateIdentity;->macKey:Lio/olvid/engine/datatypes/key/symmetric/MACKey;

    return-void
.end method

.method public static deserialize([B)Lio/olvid/engine/datatypes/PrivateIdentity;
    .locals 5

    .line 64
    :try_start_0
    new-instance v0, Lio/olvid/engine/encoder/Encoded;

    invoke-direct {v0, p0}, Lio/olvid/engine/encoder/Encoded;-><init>([B)V

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeList()[Lio/olvid/engine/encoder/Encoded;

    move-result-object p0

    .line 65
    new-instance v0, Lio/olvid/engine/datatypes/PrivateIdentity;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-virtual {v1}, Lio/olvid/engine/encoder/Encoded;->decodeIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, p0, v2

    .line 66
    invoke-virtual {v2}, Lio/olvid/engine/encoder/Encoded;->decodePrivateKey()Lio/olvid/engine/datatypes/key/asymmetric/PrivateKey;

    move-result-object v2

    check-cast v2, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPrivateKey;

    const/4 v3, 0x2

    aget-object v3, p0, v3

    .line 67
    invoke-virtual {v3}, Lio/olvid/engine/encoder/Encoded;->decodePrivateKey()Lio/olvid/engine/datatypes/key/asymmetric/PrivateKey;

    move-result-object v3

    check-cast v3, Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPrivateKey;

    const/4 v4, 0x3

    aget-object p0, p0, v4

    .line 68
    invoke-virtual {p0}, Lio/olvid/engine/encoder/Encoded;->decodeSymmetricKey()Lio/olvid/engine/datatypes/key/symmetric/SymmetricKey;

    move-result-object p0

    check-cast p0, Lio/olvid/engine/datatypes/key/symmetric/MACKey;

    invoke-direct {v0, v1, v2, v3, p0}, Lio/olvid/engine/datatypes/PrivateIdentity;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPrivateKey;Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPrivateKey;Lio/olvid/engine/datatypes/key/symmetric/MACKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string p0, "An error occurred while deserializing a PrivateIdentity."

    .line 70
    invoke-static {p0}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public computeUniqueUid()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 38
    iget-object v0, p0, Lio/olvid/engine/datatypes/PrivateIdentity;->publicIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Identity;->computeUniqueUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v0

    return-object v0
.end method

.method public getEncryptionPrivateKey()Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPrivateKey;
    .locals 1

    .line 34
    iget-object v0, p0, Lio/olvid/engine/datatypes/PrivateIdentity;->encryptionPrivateKey:Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPrivateKey;

    return-object v0
.end method

.method public getEncryptionPublicKey()Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;
    .locals 1

    .line 46
    iget-object v0, p0, Lio/olvid/engine/datatypes/PrivateIdentity;->publicIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Identity;->getEncryptionPublicKey()Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;

    move-result-object v0

    return-object v0
.end method

.method public getMacKey()Lio/olvid/engine/datatypes/key/symmetric/MACKey;
    .locals 1

    .line 50
    iget-object v0, p0, Lio/olvid/engine/datatypes/PrivateIdentity;->macKey:Lio/olvid/engine/datatypes/key/symmetric/MACKey;

    return-object v0
.end method

.method public getPublicIdentity()Lio/olvid/engine/datatypes/Identity;
    .locals 1

    .line 26
    iget-object v0, p0, Lio/olvid/engine/datatypes/PrivateIdentity;->publicIdentity:Lio/olvid/engine/datatypes/Identity;

    return-object v0
.end method

.method public getServerAuthenticationPrivateKey()Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPrivateKey;
    .locals 1

    .line 30
    iget-object v0, p0, Lio/olvid/engine/datatypes/PrivateIdentity;->serverAuthenticationPrivateKey:Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPrivateKey;

    return-object v0
.end method

.method public getServerAuthenticationPublicKey()Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPublicKey;
    .locals 1

    .line 42
    iget-object v0, p0, Lio/olvid/engine/datatypes/PrivateIdentity;->publicIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Identity;->getServerAuthenticationPublicKey()Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPublicKey;

    move-result-object v0

    return-object v0
.end method

.method public serialize()[B
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lio/olvid/engine/encoder/Encoded;

    .line 54
    iget-object v1, p0, Lio/olvid/engine/datatypes/PrivateIdentity;->publicIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 55
    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of([B)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/datatypes/PrivateIdentity;->serverAuthenticationPrivateKey:Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPrivateKey;

    .line 56
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/key/asymmetric/PrivateKey;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/datatypes/PrivateIdentity;->encryptionPrivateKey:Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPrivateKey;

    .line 57
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/key/asymmetric/PrivateKey;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/datatypes/PrivateIdentity;->macKey:Lio/olvid/engine/datatypes/key/symmetric/MACKey;

    .line 58
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/key/symmetric/SymmetricKey;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 54
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->getBytes()[B

    move-result-object v0

    return-object v0
.end method
