.class abstract Lio/olvid/engine/crypto/PublicKeyEncryptionEcies;
.super Ljava/lang/Object;
.source "PublicKeyEncryption.java"

# interfaces
.implements Lio/olvid/engine/crypto/PublicKeyEncryption;


# instance fields
.field private final dem:Lio/olvid/engine/crypto/AuthEncAES256ThenSHA256;

.field private final kem:Lio/olvid/engine/crypto/KemEcies256Kem512;


# direct methods
.method protected constructor <init>(Lio/olvid/engine/crypto/KemEcies256Kem512;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lio/olvid/engine/crypto/PublicKeyEncryptionEcies;->kem:Lio/olvid/engine/crypto/KemEcies256Kem512;

    .line 37
    new-instance p1, Lio/olvid/engine/crypto/AuthEncAES256ThenSHA256;

    invoke-direct {p1}, Lio/olvid/engine/crypto/AuthEncAES256ThenSHA256;-><init>()V

    iput-object p1, p0, Lio/olvid/engine/crypto/PublicKeyEncryptionEcies;->dem:Lio/olvid/engine/crypto/AuthEncAES256ThenSHA256;

    return-void
.end method


# virtual methods
.method public decrypt(Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPrivateKey;Lio/olvid/engine/datatypes/EncryptedBytes;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Lio/olvid/engine/crypto/exceptions/DecryptionException;
        }
    .end annotation

    .line 54
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/EncryptedBytes;->getBytes()[B

    move-result-object v0

    .line 55
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/EncryptedBytes;->getBytes()[B

    move-result-object v1

    const/16 v2, 0x20

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 56
    iget-object v3, p0, Lio/olvid/engine/crypto/PublicKeyEncryptionEcies;->kem:Lio/olvid/engine/crypto/KemEcies256Kem512;

    invoke-virtual {v3, p1, v1}, Lio/olvid/engine/crypto/KemEcies256Kem512;->decrypt(Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPrivateKey;[B)Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    move-result-object p1

    .line 58
    new-instance v1, Lio/olvid/engine/datatypes/EncryptedBytes;

    invoke-virtual {p2}, Lio/olvid/engine/datatypes/EncryptedBytes;->getBytes()[B

    move-result-object p2

    array-length v0, v0

    invoke-static {p2, v2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    invoke-direct {v1, p2}, Lio/olvid/engine/datatypes/EncryptedBytes;-><init>([B)V

    .line 59
    iget-object p2, p0, Lio/olvid/engine/crypto/PublicKeyEncryptionEcies;->dem:Lio/olvid/engine/crypto/AuthEncAES256ThenSHA256;

    invoke-virtual {p2, p1, v1}, Lio/olvid/engine/crypto/AuthEncAES256ThenSHA256;->decrypt(Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;Lio/olvid/engine/datatypes/EncryptedBytes;)[B

    move-result-object p1

    return-object p1
.end method

.method public encrypt(Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;[BLio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/EncryptedBytes;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lio/olvid/engine/crypto/PublicKeyEncryptionEcies;->kem:Lio/olvid/engine/crypto/KemEcies256Kem512;

    invoke-virtual {v0}, Lio/olvid/engine/crypto/KemEcies256Kem512;->ciphertextLength()I

    move-result v0

    iget-object v1, p0, Lio/olvid/engine/crypto/PublicKeyEncryptionEcies;->dem:Lio/olvid/engine/crypto/AuthEncAES256ThenSHA256;

    array-length v2, p2

    invoke-virtual {v1, v2}, Lio/olvid/engine/crypto/AuthEncAES256ThenSHA256;->ciphertextLengthFromPlaintextLength(I)I

    move-result v1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 43
    iget-object v1, p0, Lio/olvid/engine/crypto/PublicKeyEncryptionEcies;->kem:Lio/olvid/engine/crypto/KemEcies256Kem512;

    invoke-virtual {v1, p1, p3}, Lio/olvid/engine/crypto/KemEcies256Kem512;->encrypt(Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/containers/CiphertextAndKey;

    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/containers/CiphertextAndKey;->getCiphertext()Lio/olvid/engine/datatypes/EncryptedBytes;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/EncryptedBytes;->getBytes()[B

    move-result-object v1

    iget-object v2, p0, Lio/olvid/engine/crypto/PublicKeyEncryptionEcies;->kem:Lio/olvid/engine/crypto/KemEcies256Kem512;

    invoke-virtual {v2}, Lio/olvid/engine/crypto/KemEcies256Kem512;->ciphertextLength()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    iget-object v1, p0, Lio/olvid/engine/crypto/PublicKeyEncryptionEcies;->dem:Lio/olvid/engine/crypto/AuthEncAES256ThenSHA256;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/containers/CiphertextAndKey;->getKey()Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    move-result-object p1

    invoke-virtual {v1, p1, p2, p3}, Lio/olvid/engine/crypto/AuthEncAES256ThenSHA256;->encrypt(Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;[BLio/olvid/engine/crypto/PRNG;)Lio/olvid/engine/datatypes/EncryptedBytes;

    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/EncryptedBytes;->getBytes()[B

    move-result-object p1

    iget-object p3, p0, Lio/olvid/engine/crypto/PublicKeyEncryptionEcies;->kem:Lio/olvid/engine/crypto/KemEcies256Kem512;

    invoke-virtual {p3}, Lio/olvid/engine/crypto/KemEcies256Kem512;->ciphertextLength()I

    move-result p3

    iget-object v1, p0, Lio/olvid/engine/crypto/PublicKeyEncryptionEcies;->dem:Lio/olvid/engine/crypto/AuthEncAES256ThenSHA256;

    array-length p2, p2

    invoke-virtual {v1, p2}, Lio/olvid/engine/crypto/AuthEncAES256ThenSHA256;->ciphertextLengthFromPlaintextLength(I)I

    move-result p2

    invoke-static {p1, v3, v0, p3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    new-instance p1, Lio/olvid/engine/datatypes/EncryptedBytes;

    invoke-direct {p1, v0}, Lio/olvid/engine/datatypes/EncryptedBytes;-><init>([B)V

    return-object p1
.end method

.method public kemDecrypt(Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPrivateKey;Lio/olvid/engine/datatypes/EncryptedBytes;)Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Lio/olvid/engine/crypto/exceptions/DecryptionException;
        }
    .end annotation

    .line 67
    iget v0, p2, Lio/olvid/engine/datatypes/EncryptedBytes;->length:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 70
    iget-object v0, p0, Lio/olvid/engine/crypto/PublicKeyEncryptionEcies;->kem:Lio/olvid/engine/crypto/KemEcies256Kem512;

    invoke-virtual {p2}, Lio/olvid/engine/datatypes/EncryptedBytes;->getBytes()[B

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lio/olvid/engine/crypto/KemEcies256Kem512;->decrypt(Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPrivateKey;[B)Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    move-result-object p1

    return-object p1

    .line 68
    :cond_0
    new-instance p1, Lio/olvid/engine/crypto/exceptions/DecryptionException;

    const-string p2, "Bad kem ciphertext length"

    invoke-direct {p1, p2}, Lio/olvid/engine/crypto/exceptions/DecryptionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public kemEncrypt(Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/containers/CiphertextAndKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lio/olvid/engine/crypto/PublicKeyEncryptionEcies;->kem:Lio/olvid/engine/crypto/KemEcies256Kem512;

    invoke-virtual {v0, p1, p2}, Lio/olvid/engine/crypto/KemEcies256Kem512;->encrypt(Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/containers/CiphertextAndKey;

    move-result-object p1

    return-object p1
.end method
