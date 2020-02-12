.class Lio/olvid/engine/crypto/AuthEncAES256ThenSHA256;
.super Ljava/lang/Object;
.source "AuthEnc.java"

# interfaces
.implements Lio/olvid/engine/crypto/AuthEnc;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ciphertextLengthFromPlaintextLength(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x20

    return p1
.end method

.method public decrypt(Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;Lio/olvid/engine/datatypes/EncryptedBytes;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/olvid/engine/crypto/exceptions/DecryptionException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 84
    instance-of v0, p1, Lio/olvid/engine/datatypes/key/symmetric/AuthEncAES256ThenSHA256Key;

    if-eqz v0, :cond_1

    .line 87
    check-cast p1, Lio/olvid/engine/datatypes/key/symmetric/AuthEncAES256ThenSHA256Key;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/key/symmetric/AuthEncAES256ThenSHA256Key;->getMacKey()Lio/olvid/engine/datatypes/key/symmetric/MACHmacSha256Key;

    move-result-object v0

    .line 88
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/key/symmetric/AuthEncAES256ThenSHA256Key;->getEncKey()Lio/olvid/engine/datatypes/key/symmetric/SymEncCTRAES256Key;

    move-result-object p1

    .line 89
    new-instance v1, Lio/olvid/engine/crypto/MACHmacSha256;

    invoke-direct {v1}, Lio/olvid/engine/crypto/MACHmacSha256;-><init>()V

    .line 90
    new-instance v2, Lio/olvid/engine/crypto/SymEncCtrAES256;

    invoke-direct {v2, p1}, Lio/olvid/engine/crypto/SymEncCtrAES256;-><init>(Lio/olvid/engine/datatypes/key/symmetric/SymEncCTRAES256Key;)V

    .line 92
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/EncryptedBytes;->getBytes()[B

    move-result-object p1

    .line 93
    array-length p2, p1

    invoke-virtual {v1}, Lio/olvid/engine/crypto/MACHmacSha256;->outputLength()I

    move-result v3

    sub-int/2addr p2, v3

    array-length v3, p1

    invoke-static {p1, p2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    const/4 v3, 0x0

    .line 94
    array-length v4, p1

    invoke-virtual {v1}, Lio/olvid/engine/crypto/MACHmacSha256;->outputLength()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {p1, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 95
    invoke-virtual {v1, v0, p1, p2}, Lio/olvid/engine/crypto/MACHmacSha256;->verify(Lio/olvid/engine/datatypes/key/symmetric/MACKey;[B[B)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 98
    new-instance p2, Lio/olvid/engine/datatypes/EncryptedBytes;

    invoke-direct {p2, p1}, Lio/olvid/engine/datatypes/EncryptedBytes;-><init>([B)V

    invoke-virtual {v2, p2}, Lio/olvid/engine/crypto/SymEncCtrAES256;->decrypt(Lio/olvid/engine/datatypes/EncryptedBytes;)[B

    move-result-object p1

    return-object p1

    .line 96
    :cond_0
    new-instance p1, Lio/olvid/engine/crypto/exceptions/DecryptionException;

    invoke-direct {p1}, Lio/olvid/engine/crypto/exceptions/DecryptionException;-><init>()V

    throw p1

    .line 85
    :cond_1
    new-instance p1, Ljava/security/InvalidKeyException;

    invoke-direct {p1}, Ljava/security/InvalidKeyException;-><init>()V

    throw p1
.end method

.method public encrypt(Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;[BLio/olvid/engine/crypto/PRNG;)Lio/olvid/engine/datatypes/EncryptedBytes;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 64
    instance-of v0, p1, Lio/olvid/engine/datatypes/key/symmetric/AuthEncAES256ThenSHA256Key;

    if-eqz v0, :cond_0

    .line 67
    check-cast p1, Lio/olvid/engine/datatypes/key/symmetric/AuthEncAES256ThenSHA256Key;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/key/symmetric/AuthEncAES256ThenSHA256Key;->getMacKey()Lio/olvid/engine/datatypes/key/symmetric/MACHmacSha256Key;

    move-result-object v0

    .line 68
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/key/symmetric/AuthEncAES256ThenSHA256Key;->getEncKey()Lio/olvid/engine/datatypes/key/symmetric/SymEncCTRAES256Key;

    move-result-object p1

    .line 69
    new-instance v1, Lio/olvid/engine/crypto/MACHmacSha256;

    invoke-direct {v1}, Lio/olvid/engine/crypto/MACHmacSha256;-><init>()V

    .line 70
    new-instance v2, Lio/olvid/engine/crypto/SymEncCtrAES256;

    invoke-direct {v2, p1}, Lio/olvid/engine/crypto/SymEncCtrAES256;-><init>(Lio/olvid/engine/datatypes/key/symmetric/SymEncCTRAES256Key;)V

    .line 72
    array-length p1, p2

    invoke-virtual {p0, p1}, Lio/olvid/engine/crypto/AuthEncAES256ThenSHA256;->ciphertextLengthFromPlaintextLength(I)I

    move-result p1

    new-array p1, p1, [B

    const/16 v3, 0x8

    .line 73
    invoke-interface {p3, v3}, Lio/olvid/engine/crypto/PRNG;->bytes(I)[B

    move-result-object p3

    .line 74
    invoke-virtual {v2, p3, p2}, Lio/olvid/engine/crypto/SymEncCtrAES256;->encrypt([B[B)Lio/olvid/engine/datatypes/EncryptedBytes;

    move-result-object p3

    .line 75
    invoke-virtual {p3}, Lio/olvid/engine/datatypes/EncryptedBytes;->getBytes()[B

    move-result-object p3

    .line 76
    array-length v3, p3

    const/4 v4, 0x0

    invoke-static {p3, v4, p1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    invoke-virtual {v1, v0, p3}, Lio/olvid/engine/crypto/MACHmacSha256;->digest(Lio/olvid/engine/datatypes/key/symmetric/MACKey;[B)[B

    move-result-object p3

    .line 78
    array-length p2, p2

    invoke-virtual {v2, p2}, Lio/olvid/engine/crypto/SymEncCtrAES256;->ciphertextLengthFromPlaintextLength(I)I

    move-result p2

    array-length v0, p3

    invoke-static {p3, v4, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    new-instance p2, Lio/olvid/engine/datatypes/EncryptedBytes;

    invoke-direct {p2, p1}, Lio/olvid/engine/datatypes/EncryptedBytes;-><init>([B)V

    return-object p2

    .line 65
    :cond_0
    new-instance p1, Ljava/security/InvalidKeyException;

    invoke-direct {p1}, Ljava/security/InvalidKeyException;-><init>()V

    throw p1
.end method

.method public generateKey(Lio/olvid/engine/crypto/PRNG;)Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;
    .locals 2

    const-string v0, "kdf_sha-256"

    .line 108
    invoke-static {v0}, Lio/olvid/engine/crypto/Suite;->getKDF(Ljava/lang/String;)Lio/olvid/engine/crypto/KDF;

    move-result-object v0

    .line 109
    new-instance v1, Lio/olvid/engine/datatypes/Seed;

    invoke-direct {v1, p1}, Lio/olvid/engine/datatypes/Seed;-><init>(Lio/olvid/engine/crypto/PRNG;)V

    .line 111
    :try_start_0
    invoke-virtual {p0}, Lio/olvid/engine/crypto/AuthEncAES256ThenSHA256;->getKDFDelegate()Lio/olvid/engine/crypto/KDF$Delegate;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lio/olvid/engine/crypto/KDF;->gen(Lio/olvid/engine/datatypes/Seed;Lio/olvid/engine/crypto/KDF$Delegate;)[Lio/olvid/engine/datatypes/key/symmetric/SymmetricKey;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    check-cast p1, Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getKDFDelegate()Lio/olvid/engine/crypto/KDF$Delegate;
    .locals 1

    .line 103
    new-instance v0, Lio/olvid/engine/crypto/KDFDelegateForAuthEncAES256ThenSHA256;

    invoke-direct {v0}, Lio/olvid/engine/crypto/KDFDelegateForAuthEncAES256ThenSHA256;-><init>()V

    return-object v0
.end method

.method public keyByteLength()I
    .locals 1

    const/16 v0, 0x40

    return v0
.end method

.method public plaintextLengthFromCiphertextLength(I)I
    .locals 0

    add-int/lit8 p1, p1, -0x8

    add-int/lit8 p1, p1, -0x20

    return p1
.end method
